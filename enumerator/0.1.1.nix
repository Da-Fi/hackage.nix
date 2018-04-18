{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://ianen.org/haskell/enumerator/";
        url = "";
        synopsis = "Implementation of Oleg Kiselyov's left-fold enumerators";
        description = "Based on Oleg Kiselyov's IterateeM: <http://okmij.org/ftp/Haskell/Iteratee/IterateeM.hs>";
        buildType = "Simple";
      };
      components = {
        enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
      };
    }