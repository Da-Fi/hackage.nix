{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nsis";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2012-2014";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/nsis#readme";
        url = "";
        synopsis = "DSL for producing Windows Installer using NSIS.";
        description = "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers\nto create installers for Windows.\nThis library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much\nof the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should\nbe significantly more maintainable.";
        buildType = "Simple";
      };
      components = {
        nsis = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.uniplate
          ];
        };
        tests = {
          shake-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.uniplate
              hsPkgs.process
            ];
          };
        };
      };
    }