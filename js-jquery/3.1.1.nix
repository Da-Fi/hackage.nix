{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "js-jquery";
          version = "3.1.1";
        };
        license = "MIT";
        copyright = "Neil Mitchell 2014-2016";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/js-jquery#readme";
        url = "";
        synopsis = "Obtain minified jQuery code";
        description = "This package bundles the minified <http://jquery.com/ jQuery> code into a Haskell package,\nso it can be depended upon by Cabal packages. The first three components of\nthe version number match the upstream jQuery version. The package is designed\nto meet the redistribution requirements of downstream users (e.g. Debian).";
        buildType = "Simple";
      };
      components = {
        js-jquery = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          js-jquery-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
            ];
          };
        };
      };
    }