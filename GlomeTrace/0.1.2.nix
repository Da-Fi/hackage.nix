{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GlomeTrace";
          version = "0.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright 2008,2009 Jim Snow";
        maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
        author = "Jim Snow";
        homepage = "http://www.haskell.org/haskellwiki/Glome";
        url = "";
        synopsis = "Ray Tracing Library";
        description = "A ray tracing library with acceleration structure and many supported primitives.";
        buildType = "Simple";
      };
      components = {
        GlomeTrace = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.GlomeVec
          ];
        };
      };
    }