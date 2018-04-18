{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polynomial";
          version = "0.5";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "/dev/null";
        url = "";
        synopsis = "Polynomials";
        description = "A type for representing polynomials, several functions\nfor manipulating and evaluating them, and several\ninteresting polynomial sequences.";
        buildType = "Simple";
      };
      components = {
        polynomial = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.vector-space
          ];
        };
      };
    }