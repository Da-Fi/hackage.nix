{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stylish-haskell";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jasper Van der Jeugt";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "https://github.com/jaspervdj/stylish-haskell";
        url = "";
        synopsis = "Haskell code prettifier";
        description = "A Haskell code prettifier. For more information, see:\n\n<https://github.com/jaspervdj/stylish-haskell/blob/master/README.markdown>";
        buildType = "Simple";
      };
      components = {
        exes = {
          stylish-haskell = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.syb
              hsPkgs.yaml
              hsPkgs.strict
            ];
          };
        };
        tests = {
          stylish-haskell-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.syb
              hsPkgs.yaml
              hsPkgs.strict
            ];
          };
        };
      };
    }