{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      s3 = true;
      webdav = true;
      inotify = true;
      dbus = true;
      assistant = true;
      webapp = true;
      webapp-secure = true;
      pairing = true;
      xmpp = true;
      dns = true;
      production = true;
      android = false;
      androidsplice = false;
      testsuite = true;
      tdfa = true;
      feed = true;
      quvi = true;
      tahoe = true;
      desktopnotify = true;
      torrentparser = true;
      ekg = false;
      network-uri = true;
      new-time = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "git-annex";
          version = "5.20150508.1";
        };
        license = "GPL-3.0-only";
        copyright = "2010-2014 Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "http://git-annex.branchable.com/";
        url = "";
        synopsis = "manage files with git, without checking their contents into git";
        description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nIt can store large files in many places, from local hard drives, to a\nlarge number of cloud storage services, including S3, WebDAV,\nand rsync, with a dozen cloud storage providers usable via plugins.\nFiles can be stored encrypted with gpg, so that the cloud storage\nprovider cannot see your data. git-annex keeps track of where each file\nis stored, so it knows how many copies are available, and has many\nfacilities to ensure your data is preserved.\n\ngit-annex can also be used to keep a folder in sync between computers,\nnoticing when files are changed, and automatically committing them\nto git and transferring them to other computers. The git-annex webapp\nmakes it easy to set up and use git-annex this way.";
        buildType = "Custom";
      };
      components = {
        exes = {
          git-annex = {
            depends  = ((((((((((((((((((([
              hsPkgs.base
              hsPkgs.cryptohash
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.QuickCheck
              hsPkgs.stm
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.data-default
              hsPkgs.case-insensitive
              hsPkgs.uuid
              hsPkgs.random
              hsPkgs.dlist
              hsPkgs.unix-compat
              hsPkgs.SafeSemaphore
              hsPkgs.async
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.IfElse
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.monad-logger
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.sandi
              hsPkgs.json
              hsPkgs.monad-control
              hsPkgs.transformers
              hsPkgs.bloomfilter
              hsPkgs.edit-distance
              hsPkgs.resourcet
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.esqueleto
              hsPkgs.persistent-sqlite
              hsPkgs.persistent
              hsPkgs.persistent-template
            ] ++ (if _flags.network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [
                hsPkgs.network
                hsPkgs.network
              ])) ++ (if _flags.new-time
              then [ hsPkgs.time ]
              else [
                hsPkgs.time
                hsPkgs.old-locale
              ])) ++ (if system.isWindows
              then [
                hsPkgs.Win32
                hsPkgs.Win32-extras
                hsPkgs.unix-compat
                hsPkgs.setenv
              ]
              else [
                hsPkgs.unix
              ])) ++ optionals _flags.testsuite [
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-rerun
              hsPkgs.optparse-applicative
              hsPkgs.crypto-api
            ]) ++ (if _flags.tdfa
              then [ hsPkgs.regex-tdfa ]
              else [
                hsPkgs.regex-compat
              ])) ++ optionals _flags.s3 [
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.aws
              hsPkgs.http-client
            ]) ++ optionals _flags.webdav [
              hsPkgs.DAV
              hsPkgs.http-client
            ]) ++ (if _flags.assistant && (system.isLinux && _flags.inotify)
              then [ hsPkgs.hinotify ]
              else if system.isOsx
                then [ hsPkgs.hfsevents ]
                else if system.isWindows
                  then [ hsPkgs.Win32-notify ]
                  else pkgs.lib.optional (!system.isSolaris && !system.isLinux && _flags.android) hsPkgs.hinotify)) ++ optionals system.isLinux (pkgs.lib.optional _flags.dbus hsPkgs.dbus ++ optionals (_flags.desktopnotify && _flags.dbus) [
              hsPkgs.dbus
              hsPkgs.fdo-notify
            ])) ++ pkgs.lib.optional _flags.android hsPkgs.data-endian) ++ optionals _flags.webapp [
              hsPkgs.yesod
              hsPkgs.yesod-default
              hsPkgs.yesod-static
              hsPkgs.yesod-form
              hsPkgs.yesod-core
              hsPkgs.path-pieces
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.blaze-builder
              hsPkgs.crypto-api
              hsPkgs.hamlet
              hsPkgs.clientsession
              hsPkgs.template-haskell
              hsPkgs.aeson
              hsPkgs.shakespeare
            ]) ++ optionals (_flags.webapp && _flags.webapp-secure) [
              hsPkgs.warp-tls
              hsPkgs.securemem
              hsPkgs.byteable
            ]) ++ optionals _flags.pairing [
              hsPkgs.network-multicast
              hsPkgs.network-info
            ]) ++ optionals (_flags.xmpp && !system.isWindows) [
              hsPkgs.network-protocol-xmpp
              hsPkgs.gnutls
              hsPkgs.xml-types
            ]) ++ pkgs.lib.optional _flags.dns hsPkgs.dns) ++ pkgs.lib.optional _flags.feed hsPkgs.feed) ++ pkgs.lib.optional _flags.quvi hsPkgs.aeson) ++ pkgs.lib.optional _flags.tahoe hsPkgs.aeson) ++ pkgs.lib.optional _flags.torrentparser hsPkgs.torrent) ++ pkgs.lib.optional _flags.ekg hsPkgs.ekg;
          };
        };
      };
    }