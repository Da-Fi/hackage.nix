{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cpuid";
          version = "0.2.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "martin@grabmueller.de, cpuid@henning-thielemann.de";
        author = "Martin Grabmueller <martin@grabmueller.de>";
        homepage = "http://code.haskell.org/cpuid/";
        url = "";
        synopsis = "Binding for the cpuid machine instruction on x86 compatible processors";
        description = "This module provides the function 'cpuid'\nfor accessing information about the currently running IA-32 processor.\nBoth a function for calling the 'cpuid' instruction directly,\nand some convenience functions for common uses are provided.\nThis package is only portable to IA-32 machines.";
        buildType = "Simple";
      };
      components = {
        cpuid = {
          depends  = optionals (system.isI386 || system.isX86_64) [
            hsPkgs.data-accessor
            hsPkgs.enumset
            hsPkgs.base
          ];
        };
        exes = { cpuid-test = {}; };
      };
    }