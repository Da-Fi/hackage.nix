{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "universal-binary";
          version = "0.11";
        };
        license = "BSD-3-Clause";
        copyright = "Erik Charlebois";
        maintainer = "Erik Charlebois <erikcharlebois@gmail.com>";
        author = "Erik Charlebois";
        homepage = "";
        url = "";
        synopsis = "Parser for OS X Universal Binary format.";
        description = "Parser for OS X Universal Binary format.";
        buildType = "Custom";
      };
      components = {
        universal-binary = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }