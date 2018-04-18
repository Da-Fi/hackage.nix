{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-xhr";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://github.com/tdammers/ghcjs-xhr";
        url = "";
        synopsis = "XmlHttpRequest (\"AJAX\") bindings for GHCJS";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ghcjs-xhr = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghcjs-base
            hsPkgs.text
          ];
        };
      };
    }