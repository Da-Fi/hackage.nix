{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "monads-tf";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Monad classes, using type families";
        description = "Monad classes using type families, with instances for various\nmonad transformers, inspired by the paper /Functional Programming\nwith Overloading and Higher-Order Polymorphism/, by Mark P\nJones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis package is almost a compatible replacement for the @mtl-tf@ package.";
        buildType = "Simple";
      };
      components = {
        monads-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }