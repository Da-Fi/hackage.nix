{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lang";
          version = "0.2.2";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "zaomir@outlook.com";
        author = "Zaoqi";
        homepage = "语.ml";
        url = "";
        synopsis = "A Lisp";
        description = "";
        buildType = "Simple";
      };
      components = {
        lang = {
          depends  = [
            hsPkgs.base
            hsPkgs.Mapping
            hsPkgs.http-streams
            hsPkgs.bytestring
          ];
        };
      };
    }