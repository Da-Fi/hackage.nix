{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extensible";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/extensible";
        url = "";
        synopsis = "Extensible ADTs";
        description = "";
        buildType = "Simple";
      };
      components = {
        extensible = {
          depends  = [ hsPkgs.base ];
        };
      };
    }