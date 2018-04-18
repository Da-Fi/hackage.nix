{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "numeric-extras";
          version = "0.0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://github.com/ekmett/numeric-extras";
        url = "";
        synopsis = "Useful tools from the C standard library";
        description = "";
        buildType = "Simple";
      };
      components = {
        numeric-extras = {
          depends  = [ hsPkgs.base ];
        };
      };
    }