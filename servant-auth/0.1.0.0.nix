{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/jkarni/servant-auth#readme";
        url = "";
        synopsis = "";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        servant-auth = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.yaml
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-auth
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }