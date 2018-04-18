{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qtah-examples";
          version = "0.3.0";
        };
        license = "LGPL-3.0-only";
        copyright = "Copyright 2015-2017 The Qtah Authors.";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/qtah";
        url = "";
        synopsis = "Example programs for Qtah Qt bindings";
        description = "Qtah is a set of Qt bindings for Haskell.  This package contains example\nprograms to demonstrate use of the bindings.";
        buildType = "Custom";
      };
      components = {
        exes = {
          qtah-examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.hoppy-runtime
              hsPkgs.qtah-qt5
            ];
          };
        };
      };
    }