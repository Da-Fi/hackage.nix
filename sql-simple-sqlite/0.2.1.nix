{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sql-simple-sqlite";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/sql-simple";
        url = "";
        synopsis = "sqlite backend for sql-simple";
        description = "";
        buildType = "Simple";
      };
      components = {
        sql-simple-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.sql-simple
            hsPkgs.sqlite-simple
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }