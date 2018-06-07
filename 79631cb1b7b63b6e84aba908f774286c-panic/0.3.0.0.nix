{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "panic";
          version = "0.3.0.0";
        };
        license = "ISC";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor Diatchki";
        homepage = "";
        url = "";
        synopsis = "A convenient way to panic.";
        description = "A convenient way to panic.";
        buildType = "Simple";
      };
      components = {
        panic = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitrev
            hsPkgs.template-haskell
          ];
        };
      };
    }