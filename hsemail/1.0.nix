{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hsemail";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "simons@cryp.to";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://cryp.to/hsemail/";
        url = "";
        synopsis = "Internet Message Parsers";
        description = "Parsers for the syntax defined in RFC2821 and 2822";
        buildType = "Custom";
      };
      components = {
        hsemail = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
      };
    }