{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-schema";
          version = "0.3.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Tim Baumann <tim@timbaumann.info>";
        author = "Tim Baumann <tim@timbaumann.info>";
        homepage = "https://github.com/timjb/aeson-schema";
        url = "";
        synopsis = "Haskell JSON schema validator and parser generator";
        description = "";
        buildType = "Simple";
      };
      components = {
        aeson-schema = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.regex-pcre
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.syb
            hsPkgs.bytestring
            hsPkgs.scientific
            hsPkgs.ghc-prim
            hsPkgs.regex-compat
            hsPkgs.regex-base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.aeson-schema
              hsPkgs.attoparsec
              hsPkgs.scientific
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.hint
              hsPkgs.temporary
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }