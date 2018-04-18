{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      buildtools = false;
      specificpkgconfig = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llvm-ffi";
          version = "3.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
        author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
        homepage = "http://haskell.org/haskellwiki/LLVM";
        url = "";
        synopsis = "FFI bindings to the LLVM compiler toolkit.";
        description = "FFI bindings to the LLVM compiler toolkit.\n\nInstallation is based on @pkg-config@\nsince this is best supported by Cabal.\nThis requires an @llvm.pc@ file\nwhich unfortunately is not generated by the LLVM source package.\nYou may be lucky that your distribution package includes that file.\nIf not, you can generate it yourself\nusing the @llvm-pkg-config@ package.\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 3.4.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\nWe don't have the time or resources to test across multiple releases.";
        buildType = "Simple";
      };
      components = {
        llvm-ffi = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          llvm-diff-ffi = {
            depends  = optionals _flags.buildtools [
              hsPkgs.utility-ht
              hsPkgs.regex-posix
              hsPkgs.containers
              hsPkgs.base
            ];
          };
          llvm-function-mangler = {
            depends  = optionals _flags.buildtools [
              hsPkgs.utility-ht
              hsPkgs.regex-posix
              hsPkgs.containers
              hsPkgs.base
            ];
          };
          llvm-intrinsic-mangler = {
            depends  = optionals _flags.buildtools [
              hsPkgs.bytestring
              hsPkgs.base
            ];
          };
        };
      };
    }