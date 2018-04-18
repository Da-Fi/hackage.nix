{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bytestring-in-base = true;
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bloomfilter";
          version = "1.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://www.serpentine.com/software/bloomfilter";
        url = "";
        synopsis = "Pure and impure Bloom Filter implementations.";
        description = "Pure and impure Bloom Filter implementations.";
        buildType = "Simple";
      };
      components = {
        bloomfilter = {
          depends  = (if _flags.bytestring-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
            ]) ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }