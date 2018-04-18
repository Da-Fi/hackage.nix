{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "future-resource";
          version = "0.3.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2014 capsjac";
        maintainer = "capsjac <capsjac at gmail dot com>";
        author = "capsjac <capsjac at gmail dot com>";
        homepage = "";
        url = "";
        synopsis = "realtime resource handling with manual concurrency";
        description = "Similar to async package, lazy resource loading framework for GUI applications";
        buildType = "Simple";
      };
      components = {
        future-resource = {
          depends  = [ hsPkgs.base ];
        };
      };
    }