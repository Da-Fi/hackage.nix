{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      semigroups = true;
      tagged = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bifunctors";
          version = "5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/bifunctors/";
        url = "";
        synopsis = "Bifunctors";
        description = "Bifunctors";
        buildType = "Simple";
      };
      components = {
        bifunctors = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional _flags.tagged hsPkgs.tagged) ++ pkgs.lib.optional _flags.semigroups hsPkgs.semigroups;
        };
        tests = {
          bifunctors-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
        };
      };
    }