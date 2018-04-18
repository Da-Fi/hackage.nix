{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transient";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "http://www.fpcomplete.com/user/agocorona";
        url = "";
        synopsis = "Making composable programs with multithreading, events and distributed computing";
        description = "see <http://github.com/agocorona/transient>\nIn this release, distributed primitives have been moved to the transient-universe package\nWeb primitives have been moved to the package ghcjs-hplay";
        buildType = "Simple";
      };
      components = {
        transient = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.time
          ];
        };
      };
    }