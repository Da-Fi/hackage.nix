{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HStringTemplate";
          version = "0.7.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s.clover@gmail.com";
        author = "Sterling Clover";
        homepage = "";
        url = "";
        synopsis = "StringTemplate implementation in Haskell.";
        description = "A port of the Java library by Terrence Parr.";
        buildType = "Simple";
      };
      components = {
        HStringTemplate = {
          depends  = [
            hsPkgs.syb
            hsPkgs.base
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.time
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.utf8-string
            hsPkgs.blaze-builder
            hsPkgs.void
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }