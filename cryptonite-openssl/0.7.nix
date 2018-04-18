{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptonite-openssl";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/haskell-crypto/cryptonite-openssl";
        url = "";
        synopsis = "Crypto stuff using OpenSSL cryptographic library";
        description = "Crypto stuff using the OpenSSL cryptographic library as bindings";
        buildType = "Simple";
      };
      components = {
        cryptonite-openssl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.basement
            hsPkgs.memory
            hsPkgs.cryptonite
          ];
          libs = if system.isWindows || system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto ];
        };
        tests = {
          test-cryptonite-openssl = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-kat
              hsPkgs.cryptonite
              hsPkgs.cryptonite-openssl
            ];
          };
        };
      };
    }