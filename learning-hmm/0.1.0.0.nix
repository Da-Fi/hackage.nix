{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "learning-hmm";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 Mitsuhiro Nakamura";
        maintainer = "Mitsuhiro Nakamura <m.nacamura@gmail.com>";
        author = "Mitsuhiro Nakamura";
        homepage = "https://github.com/mnacamura/learning-hmm";
        url = "";
        synopsis = "Yet another library for hidden Markov models";
        description = "This library provides functions for the maximum likelihood\nestimation of discrete hidden Markov models. At present,\nonly Baum-Welch and Viterbi algorithms are implemented.";
        buildType = "Simple";
      };
      components = {
        learning-hmm = {
          depends  = [
            hsPkgs.base
            hsPkgs.logfloat
            hsPkgs.random-fu
            hsPkgs.vector
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }