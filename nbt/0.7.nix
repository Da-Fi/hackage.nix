{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "nbt";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam C. Foltzer <acfoltzer@gmail.com>";
        author = "Adam C. Foltzer <acfoltzer@gmail.com>, Stijn van Drongelen <rhymoid@gmail.com>";
        homepage = "https://github.com/acfoltzer/nbt";
        url = "";
        synopsis = "A parser/serializer for Minecraft's Named Binary Tag (NBT)\ndata format.";
        description = "This package includes a data type for the NBT file\nformat, notably used to represent saved data in Minecraft and\nsignificant parts of the Minecraft network protocol.  All thirteen\ntags used in Minecraft 1.13 are implemented.";
        buildType = "Simple";
      };
      components = {
        nbt = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.text
            hsPkgs.array
          ];
        };
        tests = {
          round-trip = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.zlib
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.array
              hsPkgs.nbt
            ];
          };
        };
      };
    }