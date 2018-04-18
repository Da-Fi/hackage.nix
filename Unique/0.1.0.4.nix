{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Unique";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ualinuxcn@gmail.com";
        author = "Volodymyr Yaschenko";
        homepage = "";
        url = "";
        synopsis = "It provides the functionality like unix \"uniq\" utility";
        description = "Library provides the functions to find unique and duplicate elements in the list";
        buildType = "Simple";
      };
      components = {
        Unique = {
          depends  = [ hsPkgs.base ];
        };
      };
    }