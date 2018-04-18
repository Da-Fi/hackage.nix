{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HROOT-io";
          version = "0.9.0.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/HROOT";
        url = "";
        synopsis = "Haskell binding to ROOT IO modules";
        description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
        buildType = "Custom";
      };
      components = {
        HROOT-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.fficxx
            hsPkgs.fficxx-runtime
            hsPkgs.template-haskell
            hsPkgs.HROOT-core
          ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }