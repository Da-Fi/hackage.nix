{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      new-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "feed";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@galois.com>";
        author = "Sigbjorn Finne <sof@galois.com>";
        homepage = "";
        url = "";
        synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
        description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
        buildType = "Simple";
      };
      components = {
        feed = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.xml
            hsPkgs.utf8-string
          ];
        };
      };
    }