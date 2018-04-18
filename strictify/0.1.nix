{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "strictify";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s.clover@gmail.com";
        author = "Sterling Clover";
        homepage = "";
        url = "";
        synopsis = "Find a local optimum of strictness annotations.";
        description = "Find a local optimum of strictness annotations.";
        buildType = "Simple";
      };
      components = {
        exes = {
          strictify = {
            depends  = if _flags.small-base
              then [
                hsPkgs.base
                hsPkgs.process
                hsPkgs.unix
                hsPkgs.directory
                hsPkgs.filepath
              ]
              else [
                hsPkgs.base
                hsPkgs.unix
                hsPkgs.filepath
              ];
          };
        };
      };
    }