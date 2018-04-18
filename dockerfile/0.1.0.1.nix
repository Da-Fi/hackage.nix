{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dockerfile";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Christopher Reichert <creichert07@gmail.com>";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "";
        url = "";
        synopsis = "A simple DSL for describing and generating Dockerfile containers in Haskell.";
        description = "A simple DSL for describing and generating Dockerfile containers in Haskell.";
        buildType = "Simple";
      };
      components = {
        dockerfile = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.dockerfile
              hsPkgs.hspec
            ];
          };
        };
      };
    }