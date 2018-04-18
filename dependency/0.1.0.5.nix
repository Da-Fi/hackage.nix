{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "dependency";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Dependency resolution for package management";
        description = "A library for resolving dependencies; uses a topological sort to construct a build plan and then allows choice between all compatible plans.";
        buildType = "Simple";
      };
      components = {
        dependency = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
            hsPkgs.recursion-schemes
            hsPkgs.microlens
            hsPkgs.deepseq
            hsPkgs.composition-prelude
            hsPkgs.binary
            hsPkgs.deepseq
          ];
        };
        tests = {
          dependency-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.dependency
              hsPkgs.hspec
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          dependency-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.dependency
              hsPkgs.containers
              hsPkgs.criterion
            ];
          };
        };
      };
    }