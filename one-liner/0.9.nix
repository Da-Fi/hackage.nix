{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "one-liner";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/one-liner";
        url = "";
        synopsis = "Constraint-based generics";
        description = "Write short and concise generic instances of type classes.\none-liner is particularly useful for writing default\nimplementations of type class methods.";
        buildType = "Simple";
      };
      components = {
        one-liner = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.contravariant
            hsPkgs.ghc-prim
            hsPkgs.bifunctors
            hsPkgs.profunctors
            hsPkgs.tagged
          ];
        };
        tests = {
          unittests = {
            depends  = [
              hsPkgs.base
              hsPkgs.contravariant
              hsPkgs.HUnit
              hsPkgs.one-liner
            ];
          };
        };
      };
    }