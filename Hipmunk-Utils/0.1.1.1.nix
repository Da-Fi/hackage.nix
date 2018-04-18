{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hipmunk-Utils";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016-2017 Suzumiya";
        maintainer = "suzumiyasmith@gmail.com";
        author = "Suzumiya";
        homepage = "https://github.com/suzumiyasmith/Hipmunk-Utils#readme";
        url = "";
        synopsis = "Useful functions for Hipmunk";
        description = "Pack some functions for Hipmunk using Linear package";
        buildType = "Simple";
      };
      components = {
        Hipmunk-Utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.Hipmunk
            hsPkgs.linear
            hsPkgs.StateVar
          ];
        };
        tests = {
          Hipmunk-Utils-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Hipmunk-Utils
            ];
          };
        };
      };
    }