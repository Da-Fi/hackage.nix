{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Stack";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Robert Walker";
        maintainer = "rwlock404@yahoo.com";
        author = "Robert Walker";
        homepage = "https://en.wikipedia.org/wiki/Stack_(abstract_data_type)";
        url = "";
        synopsis = "Stack data structure type";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        Stack = {
          depends  = [ hsPkgs.base ];
        };
      };
    }