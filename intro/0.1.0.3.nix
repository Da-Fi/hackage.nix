{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "intro";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "2016 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/intro#readme";
        url = "";
        synopsis = "\"Fixed Prelude\" - Mostly total and safe, provides Text and Monad transformers";
        description = "Intro is a modern Prelude which provides safe alternatives\nfor most of the partial functions and follows other\nbest practices, e.g., Text is preferred over String.\nFor String overloading the extension 'OverloadedStrings' should be used.\nContainer types and Monad transformers are provided.\n\nMost important - this Prelude tries not to be too fancy.\nThis means it just reexports from base and commonly used libraries\nand doesn\\'t invent its own stuff.\n\nFurthermore the Prelude is\nnot scattered over multiple files to keep things simple.\nEverything is exported explicitly to improve the quality of the documentation.";
        buildType = "Simple";
      };
      components = {
        intro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.extra
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.string-conversions
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.writer-cps-mtl
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        tests = {
          compat = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.dlist
              hsPkgs.extra
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.string-conversions
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.writer-cps-mtl
              hsPkgs.intro
              hsPkgs.lens
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
      };
    }