{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Strafunski-StrategyLib";
          version = "5.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "darmanithird@gmail.com,alan.zimm@gmail.com";
        author = "Ralf Laemmel, Joost Visser";
        homepage = "";
        url = "";
        synopsis = "Library for strategic programming";
        description = "This is a version of the StrategyLib library originally shipped with Strafunski, Cabalized and updated to newer versions of GHC. A description of much of StrategyLib can be found in the paper \"Design Patterns for Functional Strategic Programming.\"";
        buildType = "Simple";
      };
      components = {
        Strafunski-StrategyLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.directory
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
      };
    }