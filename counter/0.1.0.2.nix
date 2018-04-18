{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "counter";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "weien1292@gmail.com";
        author = "Ng Wei En";
        homepage = "https://github.com/wei2912/counter";
        url = "";
        synopsis = "An object frequency counter.";
        description = "This project provides an efficient object frequency counter, based upon Data.Map.Strict.";
        buildType = "Simple";
      };
      components = {
        counter = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }