{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shunyalib";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 penguinshunya";
        maintainer = "penguinshunya@hotmail.com";
        author = "penguinshunya";
        homepage = "https://github.com/penguinshunya/shunyalib";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        shunyalib = {
          depends  = [ hsPkgs.base ];
        };
      };
    }