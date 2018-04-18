{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blaze-html";
          version = "0.4.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt, Simon Meier";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "";
        description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
        buildType = "Simple";
      };
      components = {
        blaze-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }