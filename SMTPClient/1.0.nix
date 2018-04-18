{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SMTPClient";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Stephen Blackheath";
        maintainer = "http://blacksapphire.com/antispam/";
        author = "Stephen Blackheath";
        homepage = "";
        url = "";
        synopsis = "A simple SMTP client";
        description = "A simple SMTP client for applications that want to send emails.\n\nDARCS repository:\n<http://blacksapphire.com/SMTPClient/>";
        buildType = "Simple";
      };
      components = {
        SMTPClient = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsemail
            hsPkgs.network
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.containers
          ];
        };
      };
    }