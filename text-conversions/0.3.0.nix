{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-conversions";
          version = "0.3.0";
        };
        license = "ISC";
        copyright = "";
        maintainer = "lexi.lambda@gmail.com";
        author = "Alexis King";
        homepage = "https://github.com/cjdev/text-conversions#readme";
        url = "";
        synopsis = "Safe conversions between textual types";
        description = "Safe conversions between textual types";
        buildType = "Simple";
      };
      components = {
        text-conversions = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.errors
            hsPkgs.text
          ];
        };
        tests = {
          text-conversions-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.text-conversions
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.text
            ];
          };
        };
      };
    }