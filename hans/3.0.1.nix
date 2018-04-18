{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hans";
          version = "3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "halvm-devel@community.galois.com";
        author = "Galois Inc.";
        homepage = "";
        url = "";
        synopsis = "Network Stack";
        description = "HaNS is a lightweight, pure Haskell network stack that can be used for Haskell\nnetworking in the context of the HaLVM, or with a Linux tap device.";
        buildType = "Simple";
      };
      components = {
        hans = {
          depends  = ([
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.heaps
            hsPkgs.psqueues
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.time
            hsPkgs.hashable
            hsPkgs.array
            hsPkgs.BoundedChan
            hsPkgs.random
            hsPkgs.monadLib
            hsPkgs.cryptonite
            hsPkgs.memory
          ] ++ optionals system.isHalvm [
            hsPkgs.XenDevice
            hsPkgs.HALVMCore
          ]) ++ pkgs.lib.optional (system.isOsx || system.isLinux) hsPkgs.unix;
        };
        exes = {
          echo-server = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hans
            ];
          };
        };
        tests = {
          hans-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-ant-xml
              hsPkgs.QuickCheck
              hsPkgs.cereal
              hsPkgs.hans
            ];
          };
        };
      };
    }