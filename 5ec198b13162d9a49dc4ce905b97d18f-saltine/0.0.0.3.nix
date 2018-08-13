{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "saltine";
        version = "0.0.0.3";
      };
      license = "MIT";
      copyright = "Copyright (c) Joseph Abrahamson 2013";
      maintainer = "Joseph Abrahamson <me@jspha.com>";
      author = "Joseph Abrahamson";
      homepage = "";
      url = "";
      synopsis = "Cryptography that's easy to digest (NaCl/libsodium bindings).";
      description = "/NaCl/ (pronounced \\\"salt\\\") is a new easy-to-use high-speed software\nlibrary for network communica tion, encryption, decryption,\nsignatures, etc. NaCl's goal is to provide all of the core\noperations needed to build higher-level cryptographic tools.\n\n<http://nacl.cr.yp.to/>\n\n/Sodium/ is a portable, cross-compilable, installable, packageable\ncrypto library based on NaCl, with a compatible API.\n\n<https://github.com/jedisct1/libsodium>\n\n/Saltine/ is a Haskell binding to the NaCl primitives going through\nSodium for build convenience and, eventually, portability.";
      buildType = "Simple";
    };
    components = {
      "saltine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.profunctors)
        ];
        libs = [ (pkgs."sodium") ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.saltine)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }