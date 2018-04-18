{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xmpipe";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "https://github.com/YoshikuniJujo/xmpipe/wiki";
        url = "";
        synopsis = "XMPP implementation using simple-PIPE";
        description = "This package includes XMPP libraries.\nNow this contains only core (RFC 6120).\nThis package needs more improvement yet.\nIt has following features.\n\nC2S\n\n* TLS: use package <https://hackage.haskell.org/package/peyotls> (sample programs are coming soon)\n\n* SASL: PLAIN, DIGEST-MD5, SCRAM-SHA-1, EXTERNAL (XEP-0178)\n\nS2S\n\n* TLS: use package <https://hackage.haskell.org/package/peyotls> (sample programs are comming soon)\n\n* SASL: EXTERNAL (XEP-0178)\n\nIt does not have following features yet.\n\nS2S\n\n* DIALBACK (XEP-0220)\n\nExample programs\n\nClient\n\nexamples/simpleClient.hs\n\n> % runhaskell simpleClient.hs yoshikuni@localhost/im password yoshio@localhost\n> Hello, my name is Yoshikuni!\n> yoshio@localhost: Hi, I'm Yoshio.\n> yoshio@localhost: I am busy.\n> Good-bye!\n> /quit\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\nreplace\n\n* &#38;&#35;123; to '&#123;'\n\n* &#38;&#35;125; to '&#125;'\n\n> import Prelude hiding (filter)\n>\n> import Control.Applicative\n> import \"monads-tf\" Control.Monad.State\n> import \"monads-tf\" Control.Monad.Writer\n> import Control.Concurrent hiding (yield)\n> import Data.Maybe\n> import Data.Pipe\n> import Data.Pipe.Flow\n> import Data.Pipe.ByteString\n> import System.IO\n> import System.Environment\n> import Text.XML.Pipe\n> import Network\n> import Network.Sasl\n> import Network.XMPiPe.Core.C2S.Client\n>\n> import qualified Data.ByteString as BS\n> import qualified Data.ByteString.Char8 as BSC\n>\n> mechanisms :: [BS.ByteString]\n> mechanisms = [\"SCRAM-SHA-1\", \"DIGEST-MD5\", \"PLAIN\"]\n>\n> data St = St [(BS.ByteString, BS.ByteString)]\n> instance SaslState St where getSaslState (St ss) = ss; putSaslState ss _ = St ss\n>\n> main :: IO ()\n> main = do\n> \t(me_ : pw : you_ : _) <- map BSC.pack <\$> getArgs\n> \tlet\tme@(Jid un d (Just rsc)) = toJid me_; you = toJid you_\n> \t\tss = St [\n> \t\t\t(\"username\", un), (\"authcid\", un), (\"password\", pw),\n> \t\t\t(\"cnonce\", \"00DEADBEEF00\") ]\n> \th <- connectTo (BSC.unpack d) \$ PortNumber 5222\n> \tvoid . (`evalStateT` ss) . runPipe \$\n> \t\tfromHandle h =\$= sasl d mechanisms =\$= toHandle h\n> \t(Just ns, _fts) <- runWriterT . runPipe \$\n> \t\tfromHandle h =\$= bind d rsc =@= toHandle h\n> \tvoid . forkIO . void . runPipe \$ fromHandle h =\$= input ns\n> \t\t=\$= convert fromMessage =\$= filter isJust =\$= convert fromJust\n> \t\t=\$= toHandleLn stdout\n> \tvoid . (`runStateT` 0) . runPipe \$ do\n> \t\tyield (presence me) =\$= output =\$= toHandle h\n> \t\tfromHandleLn stdin =\$= before (== \"/quit\")\n> \t\t\t=\$= mkMessage you =\$= output =\$= toHandle h\n> \t\tyield End =\$= output =\$= toHandle h\n>\n> presence :: Jid -> Mpi\n> presence me = Presence\n> \t(tagsNull &#123; tagFrom = Just me &#125;) [XmlNode (nullQ \"presence\") [] [] []]\n>\n> mkMessage :: Jid -> Pipe BS.ByteString Mpi (StateT Int IO) ()\n> mkMessage you = (await >>=) . maybe (return ()) \$ \\m -> do\n> \tn <- get; modify succ\n> \tyield \$ toM n m\n> \tmkMessage you\n> \twhere toM n msg = Message (tagsType \"chat\") &#123;\n> \t\t\ttagId = Just . BSC.pack . (\"msg_\" ++) \$ show n,\n> \t\t\ttagTo = Just you &#125;\n> \t\t[XmlNode (nullQ \"body\") [] [] [XmlCharData msg]]\n>\n> fromMessage :: Mpi -> Maybe BS.ByteString\n> fromMessage (Message ts [XmlNode _ [] [] [XmlCharData m]])\n> \t| Just (Jid n d _) <- tagFrom ts = Just \$ BS.concat [n, \"@\", d, \": \", m]\n> fromMessage _ = Nothing\n\nServer\n\nexamples/simpleServer.hs\n\nThis simple server can process only chat between same domain (localhost) users.\nBecause this code use only C2S modules.\nYou can implement S2S connection by S2S modules.\nBut now this package contain only EXTERNAL authentification.\nThis package is not contain DIALBACK yet.\nS2S examples which use EXTERNAL are comming soon.\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\nreplace\n\n* &#38;&#35;123; to '&#123;'\n\n* &#38;&#35;125; to '&#125;'\n\n> import Control.Applicative\n> import Control.Arrow\n> import Control.Monad\n> import \"monads-tf\" Control.Monad.State\n> import \"monads-tf\" Control.Monad.Error\n> import Control.Concurrent hiding (yield)\n> import Control.Concurrent.STM\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import Data.Pipe.TChan\n> import Network\n> import Network.Sasl\n> import Network.XMPiPe.Core.C2S.Server\n>\n> import qualified Data.ByteString as BS\n> import qualified Network.Sasl.DigestMd5.Server as DM5\n> import qualified Network.Sasl.ScramSha1.Server as SS1\n>\n> main :: IO ()\n> main = do\n> \tuserlist <- atomically \$ newTVar []\n> \tsoc <- listenOn \$ PortNumber 5222\n> \tforever \$ accept soc >>= \\(h, _, _) -> forkIO \$ do\n> \t\tc <- atomically newTChan\n> \t\t(Just ns, st) <- (`runStateT` initXSt) . runPipe \$ do\n> \t\t\tfromHandle h =\$= sasl \"localhost\" retrieves =\$= toHandle h\n> \t\t\tfromHandle h =\$= bind \"localhost\" [] =@= toHandle h\n> \t\tlet u = user st; sl = selector userlist\n> \t\tatomically \$ modifyTVar userlist ((u, c) :)\n> \t\tvoid . forkIO . runPipe_ \$ fromTChan c =\$= output =\$= toHandle h\n> \t\trunPipe_ \$ fromHandle h =\$= input ns =\$= select u =\$= toTChansM sl\n>\n> selector :: TVar [(Jid, TChan Mpi)] -> IO [(Jid -> Bool, TChan Mpi)]\n> selector ul = map (first eq) <\$> atomically (readTVar ul)\n> \twhere\n> \teq (Jid u d _) (Jid v e Nothing) = u == v && d == e\n> \teq j k = j == k\n>\n> select :: Monad m => Jid -> Pipe Mpi (Jid, Mpi) m ()\n> select f = (await >>=) . maybe (return ()) \$ \\mpi -> case mpi of\n> \tEnd -> yield (f, End)\n> \tMessage tgs@(Tags &#123; tagTo = Just to &#125;) b ->\n> \t\tyield (to, Message tgs &#123; tagFrom = Just f &#125; b) >> select f\n> \t_ -> select f\n>\n> initXSt :: XSt\n> initXSt = XSt &#123;\n> \tuser = Jid \"\" \"localhost\" Nothing, rands = repeat \"00DEADBEEF00\",\n> \tsSt = [\t(\"realm\", \"localhost\"), (\"qop\", \"auth\"), (\"charset\", \"utf-8\"),\n> \t\t(\"algorithm\", \"md5-sess\") ] &#125;\n>\n> retrieves :: (\n> \tMonadState m, SaslState (StateType m),\n> \tMonadError m, SaslError (ErrorType m) ) => [Retrieve m]\n> retrieves = [RTPlain retrievePln, RTDigestMd5 retrieveDM5, RTScramSha1 retrieveSS1]\n>\n> retrievePln :: (\n> \tMonadState m, SaslState (StateType m),\n> \tMonadError m, SaslError (ErrorType m) ) =>\n> \tBS.ByteString -> BS.ByteString -> BS.ByteString -> m ()\n> retrievePln \"\" \"yoshikuni\" \"password\" = return ()\n> retrievePln \"\" \"yoshio\" \"password\" = return ()\n> retrievePln _ _ _ = throwError \$ fromSaslError NotAuthorized \"auth failure\"\n>\n> retrieveDM5 :: (\n> \tMonadState m, SaslState (StateType m),\n> \tMonadError m, SaslError (ErrorType m) ) => BS.ByteString -> m BS.ByteString\n> retrieveDM5 \"yoshikuni\" = return \$ DM5.mkStored \"yoshikuni\" \"localhost\" \"password\"\n> retrieveDM5 \"yoshio\" = return \$ DM5.mkStored \"yoshio\" \"localhost\" \"password\"\n> retrieveDM5 _ = throwError \$ fromSaslError NotAuthorized \"auth failure\"\n>\n> retrieveSS1 :: (\n> \tMonadState m, SaslState (StateType m),\n> \tMonadError m, SaslError (ErrorType m) ) => BS.ByteString ->\n> \tm (BS.ByteString, BS.ByteString, BS.ByteString, Int)\n> retrieveSS1 \"yoshikuni\" = return (slt, stk, svk, i)\n> \twhere slt = \"pepper\"; i = 4492; (stk, svk) = SS1.salt \"password\" slt i\n> retrieveSS1 \"yoshio\" = return (slt, stk, svk, i)\n> \twhere slt = \"sugar\"; i = 4492; (stk, svk) = SS1.salt \"password\" slt i\n> retrieveSS1 _ = throwError \$ fromSaslError NotAuthorized \"auth failure\"\n>\n> type Pairs a = [(a, a)]\n> data XSt = XSt &#123; user :: Jid, rands :: [BS.ByteString], sSt :: Pairs BS.ByteString &#125;\n>\n> instance XmppState XSt where\n> \tgetXmppState xs = (user xs, rands xs)\n> \tputXmppState (usr, rl) xs = xs &#123; user = usr, rands = rl &#125;\n>\n> instance SaslState XSt where\n> \tgetSaslState XSt &#123; user = Jid n _ _, rands = nnc : _, sSt = ss &#125; =\n> \t\t(\"username\", n) : (\"nonce\", nnc) : (\"snonce\", nnc) : ss\n> \tgetSaslState _ = error \"XSt.getSaslState: null random list\"\n> \tputSaslState ss xs@XSt &#123; user = Jid _ d r, rands = _ : rs &#125; =\n> \t\txs &#123; user = Jid n d r, rands = rs, sSt = ss &#125;\n> \t\twhere Just n = lookup \"username\" ss\n> \tputSaslState _ _ = error \"XSt.getSaslState: null random list\"";
        buildType = "Simple";
      };
      components = {
        xmpipe = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.xml-pipe
            hsPkgs.simple-pipe
            hsPkgs.uuid
            hsPkgs.base64-bytestring
            hsPkgs.handle-like
            hsPkgs.sasl
            hsPkgs.monads-tf
          ];
        };
      };
    }