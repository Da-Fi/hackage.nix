{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "filepath";
          version = "1.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Neil Mitchell";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/filepath/";
        url = "";
        synopsis = "Library for manipulating FilePaths in a cross platform way.";
        description = "";
        buildType = "Simple";
      };
      components = {
        filepath = {
          depends  = [ hsPkgs.base ];
        };
      };
    }