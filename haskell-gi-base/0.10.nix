{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-gi-base";
          version = "0.10";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson,\nIñaki García Etxebarria,\nJonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi-base";
        url = "";
        synopsis = "Foundation for libraries generated by haskell-gi";
        description = "Foundation for libraries generated by haskell-gi";
        buildType = "Simple";
      };
      components = {
        haskell-gi-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.transformers;
        };
      };
    }