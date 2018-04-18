{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-persist";
          version = "0.0.1.4";
        };
        license = "ISC";
        copyright = "2017 CJ Affiliate by Conversant";
        maintainer = "Alexis King <lexi.lambda@gmail.com>";
        author = "Alexis King <lexi.lambda@gmail.com>";
        homepage = "https://github.com/cjdev/monad-persist#readme";
        url = "";
        synopsis = "An mtl-style typeclass and transformer for persistent.";
        description = "An mtl-style typeclass and transformer for persistent.";
        buildType = "Simple";
      };
      components = {
        monad-persist = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
        };
        tests = {
          monad-persist-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.monad-persist
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.text
            ];
          };
        };
      };
    }