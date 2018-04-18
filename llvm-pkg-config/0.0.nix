{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llvm-pkg-config";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "llvm@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "";
        url = "";
        synopsis = "Generate Pkg-Config configuration file for LLVM";
        description = "Building the @llvm-base@ package is fragile due to its configuration process.\nIt would be much simpler, if LLVM would support pkg-config\nsince this is nicely integrated in Cabal.\nHowever, LLVM developers do not seem to care much about it:\n<http://llvm.org/bugs/show_bug.cgi?id=9405>.\nIf we are lucky we get pkg-config support in Debian Linux.\nUntil this comes true, you can use this program.\nIt calls @llvm-config@ and writes its output to a PC file.\n\n> llvm-pkg-config\n\ncalls default @llvm-config@ and writes the generated file to standard output.\n\n> sudo llvm-pkg-config --install\n\ninstalls the PC file at a default location.\nThis should be the standard task to perform.\n\n> llvm-pkg-config --llvm-config=/custom/path/to/llvm-config\n\nif you have multiple versions of LLVM installed\nyou may choose an @llvm-config@ other than the default one.";
        buildType = "Simple";
      };
      components = {
        exes = {
          llvm-pkg-config = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.process
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }