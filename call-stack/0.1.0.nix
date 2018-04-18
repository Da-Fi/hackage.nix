{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "call-stack";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "https://github.com/sol/call-stack#readme";
        url = "";
        synopsis = "Use GHC call-stacks in a backward compatible way";
        description = "";
        buildType = "Simple";
      };
      components = {
        call-stack = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.nanospec
              hsPkgs.call-stack
            ];
          };
        };
      };
    }