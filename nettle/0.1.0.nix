{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usepkgconfig = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nettle";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "Stefan Bühler <stbuehler@web.de>";
        maintainer = "Stefan Bühler <stbuehler@web.de>";
        author = "Stefan Bühler <stbuehler@web.de>";
        homepage = "https://github.com/stbuehler/haskell-nettle";
        url = "";
        synopsis = "safe nettle binding";
        description = "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.";
        buildType = "Simple";
      };
      components = {
        nettle = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.tagged
            hsPkgs.securemem
            hsPkgs.crypto-cipher-types
          ];
          libs = pkgs.lib.optional (!_flags.usepkgconfig) pkgs.nettle;
        };
        tests = {
          test-ciphers = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-tests
              hsPkgs.nettle
            ];
          };
          test-hashes = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tagged
              hsPkgs.array
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.nettle
            ];
          };
          test-hmac = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tagged
              hsPkgs.array
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.nettle
            ];
          };
          test-umac = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tagged
              hsPkgs.array
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.nettle
            ];
          };
        };
      };
    }