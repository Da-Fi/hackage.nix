{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hjpath";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voker57@gmail.com";
        author = "Voker57";
        homepage = "http://bitcheese.net/wiki/code/hjpath";
        url = "";
        synopsis = "XPath-like syntax for querying JSON";
        description = "JPath is XPath-inspired query language to query JSON data.";
        buildType = "Simple";
      };
      components = {
        hjpath = {
          depends  = [
            hsPkgs.base
            hsPkgs.RJson
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }