{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shellmate";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "http://github.com/valderman/shellmate";
        url = "";
        synopsis = "Simple interface for shell scripting in Haskell.";
        description = "Aims to simplify development of cross-platform shell scripts and similar things.";
        buildType = "Simple";
      };
      components = {
        shellmate = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.temporary
          ];
        };
      };
    }