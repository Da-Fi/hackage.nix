{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gps";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "For manipulating GPS coordinates and trails.";
        description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations";
        buildType = "Simple";
      };
      components = {
        gps = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.pretty
              hsPkgs.prettyclass
              hsPkgs.xml
              hsPkgs.time
            ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.pretty
              hsPkgs.prettyclass
              hsPkgs.xml
            ];
        };
      };
    }