{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "optional-args";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Optional function arguments";
        description = "This library provides a type for specifying `Optional` function\narguments\n\nRead the tutorial in \"Data.Optional\" to learn more";
        buildType = "Simple";
      };
      components = {
        optional-args = {
          depends  = [ hsPkgs.base ];
        };
      };
    }