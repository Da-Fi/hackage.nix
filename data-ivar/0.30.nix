{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "data-ivar";
          version = "0.30";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "";
        url = "";
        synopsis = "Write-once variables with concurrency support";
        description = "Write-once variables, with the ability to block\non the first of a set of variables to become\navailable.";
        buildType = "Simple";
      };
      components = {
        data-ivar = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }