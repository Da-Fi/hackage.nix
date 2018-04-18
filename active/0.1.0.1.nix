{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "active";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Brent Yorgey";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Abstractions for animation";
        description = "\"Active\" abstraction for animated things with finite start and end times.";
        buildType = "Simple";
      };
      components = {
        active = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.vector-space
            hsPkgs.newtype
          ];
        };
        tests = {
          active-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.semigroups
              hsPkgs.semigroupoids
              hsPkgs.vector-space
              hsPkgs.newtype
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }