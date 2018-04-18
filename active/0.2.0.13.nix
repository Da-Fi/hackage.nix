{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "active";
          version = "0.2.0.13";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2015 Brent Yorgey";
        maintainer = "byorgey@gmail.com";
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
            hsPkgs.vector
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.lens
            hsPkgs.linear
          ];
        };
        tests = {
          active-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.semigroups
              hsPkgs.semigroupoids
              hsPkgs.lens
              hsPkgs.linear
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }