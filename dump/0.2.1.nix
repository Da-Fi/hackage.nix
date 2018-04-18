{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dump";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dumplibhs.psssst@dfgh.net";
        author = "Milán Nagy";
        homepage = "https://github.com/Wizek/dump";
        url = "";
        synopsis = "Dumps the names and values of expressions to ease debugging.";
        description = "Example: \"let a=1 in [d|a, a+1|] == \\\"(a) = 1, (a+1) = 2\\\"\"";
        buildType = "Simple";
      };
      components = {
        dump = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.interpolatedstring-perl6
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.interpolatedstring-perl6
              hsPkgs.text
            ];
          };
        };
      };
    }