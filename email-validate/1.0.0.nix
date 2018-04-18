{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "email-validate";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard";
        homepage = "http://porg.es/blog/email-address-validation-simpler-faster-more-correct";
        url = "";
        synopsis = "Validating an email address string against RFC 5322";
        description = "Validating an email address string against RFC 5322";
        buildType = "Simple";
      };
      components = {
        email-validate = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.email-validate
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.bytestring
            ];
          };
        };
      };
    }