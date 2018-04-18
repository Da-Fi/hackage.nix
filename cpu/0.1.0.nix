{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cpu";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cpu";
        url = "";
        synopsis = "Cpu information and properties helpers.";
        description = "Lowlevel cpu routines to get basic properties of the cpu platform, like endianness and architecture.";
        buildType = "Simple";
      };
      components = {
        cpu = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          cpuid = {
            depends  = optionals _flags.executable [
              hsPkgs.base
              hsPkgs.cpu
              hsPkgs.bytestring
            ];
          };
        };
      };
    }