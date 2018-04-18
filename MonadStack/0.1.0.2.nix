{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MonadStack";
          version = "0.1.0.2";
        };
        license = "BSD-2-Clause";
        copyright = "Brian Hurt";
        maintainer = "bhurt42@gmail.com";
        author = "Brian Hurt";
        homepage = "https://github.com/bhurt/MonadStack";
        url = "";
        synopsis = "Generalizing lift to monad stacks";
        description = "A multi-level lift.";
        buildType = "Simple";
      };
      components = {
        MonadStack = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }