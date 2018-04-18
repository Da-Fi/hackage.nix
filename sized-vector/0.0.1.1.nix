{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sized-vector";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Hiromi ISHII 2013";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/sized-vector";
        url = "";
        synopsis = "Size-parameterized vector types and functions.";
        description = "Size-parameterized vector types and functions using a data-type promotion.";
        buildType = "Simple";
      };
      components = {
        sized-vector = {
          depends  = [ hsPkgs.base ];
        };
      };
    }