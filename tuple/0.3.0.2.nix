{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tuple";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Lennart Augustsson";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Various functions on tuples";
        description = "Various useful functions on tuples, overloaded on tuple size.";
        buildType = "Simple";
      };
      components = {
        tuple = {
          depends  = [
            hsPkgs.base
            hsPkgs.OneTuple
          ];
        };
      };
    }