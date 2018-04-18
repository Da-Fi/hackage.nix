{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stomp-queue";
          version = "0.2.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) Tobias Schoofs, 2011 - 2015";
        maintainer = "tobias dot schoofs at gmx dot net";
        author = "Tobias Schoofs";
        homepage = "http://github.com/toschoo/mom";
        url = "";
        synopsis = "Stompl Client Library";
        description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\n\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nThe library may use TLS for secure connections\nto brokers that provide security over TLS.\n\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
        buildType = "Simple";
      };
      components = {
        stomp-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.attoparsec
            hsPkgs.split
            hsPkgs.mtl
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.network-conduit-tls
            hsPkgs.stompl
            hsPkgs.mime
            hsPkgs.time
          ];
        };
      };
    }