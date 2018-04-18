{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "list-mux";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hellertime@gmail.com";
        author = "Chris Heller";
        homepage = "http://github.com/hellertime/list-mux";
        url = "";
        synopsis = "List Multiplexing";
        description = "Functions for multiplexing lists";
        buildType = "Simple";
      };
      components = {
        list-mux = {
          depends  = [ hsPkgs.base ];
        };
      };
    }