{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mapquest-api";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/mapquest-api";
        url = "";
        synopsis = "Bindings to the MapQuest API";
        description = "This library provides a high-level interface to the MapQuest API. Currently only the \"geocoding\" API (street address to coordinates) is provided, but the functionality is straightforward to extend.";
        buildType = "Simple";
      };
      components = {
        mapquest-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.goggles
            hsPkgs.mtl
            hsPkgs.req
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.exceptions
          ];
        };
      };
    }