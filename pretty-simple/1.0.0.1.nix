{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexample = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pretty-simple";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/pretty-simple";
        url = "";
        synopsis = "Simple pretty printer for any datatype with a 'Show' instance.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pretty-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.mono-traversable
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          pretty-simple-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty-simple
            ];
          };
        };
        tests = {
          pretty-simple-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
        benchmarks = {
          pretty-simple-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.pretty-simple
            ];
          };
        };
      };
    }