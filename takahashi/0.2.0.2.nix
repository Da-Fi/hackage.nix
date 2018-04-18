{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "takahashi";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "(C) 2014 Tokiwo Ousaka";
        maintainer = "tokiwoousaka";
        author = "tokiwoousaka";
        homepage = "";
        url = "";
        synopsis = "create slide for presentation.";
        description = "library for create slide for your presentation.";
        buildType = "Simple";
      };
      components = {
        takahashi = {
          depends  = [
            hsPkgs.base
            hsPkgs.reasonable-operational
            hsPkgs.mtl
            hsPkgs.reasonable-lens
          ];
        };
      };
    }