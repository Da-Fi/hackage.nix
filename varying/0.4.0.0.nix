{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "varying";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "schell.scivally@synapsegroup.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/varying";
        url = "";
        synopsis = "FRP through value streams and monadic splines.";
        description = "Varying is a FRP library aimed at providing a\nsimple way to describe values that change over a domain.\nIt allows monadic, applicative and arrow notation and has\nconvenience functions for tweening.";
        buildType = "Simple";
      };
      components = {
        varying = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          varying-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.varying
            ];
          };
        };
        tests = {
          varying-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.varying
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }