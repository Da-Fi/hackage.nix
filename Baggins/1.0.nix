{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Baggins";
          version = "1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "pierre-etienne.meunier@lif.univ-mrs.fr";
        author = "Pierre-Etienne Meunier";
        homepage = "http://pageperso.lif.univ-mrs.fr/~pierre-etienne.meunier/Baggins";
        url = "";
        synopsis = "Tools for self-assembly";
        description = "";
        buildType = "Simple";
      };
      components = {
        Baggins = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }