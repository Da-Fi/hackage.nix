{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mtl-c";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/mtl-c";
        url = "";
        synopsis = "Monad transformers using continuation passing style";
        description = "Monad transformers in CPS";
        buildType = "Simple";
      };
      components = {
        mtl-c = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }