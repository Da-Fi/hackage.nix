{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "smtp-mail";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://github.com/jhickner/smtp-mail";
        url = "";
        synopsis = "Simple email sending via SMTP";
        description = "";
        buildType = "Simple";
      };
      components = {
        smtp-mail = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mime-mail
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.cryptohash
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.array
          ];
        };
      };
    }