{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "canteven-http";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rick@owenssoftware.com";
        author = "Rick Owens";
        homepage = "https://github.com/SumAll/canteven-http";
        url = "";
        synopsis = "Utilities for HTTP programming.";
        description = "";
        buildType = "Simple";
      };
      components = {
        canteven-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.canteven-log
            hsPkgs.exceptions
            hsPkgs.http-types
            hsPkgs.monad-logger
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
            hsPkgs.wai
          ];
        };
      };
    }