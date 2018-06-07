{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Agda";
          version = "2.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Ulf Norell <ulfn@chalmers.se>";
        author = "Ulf Norell, Catarina Coquand, Makoto Takeyama, Nils Anders Danielsson, Andreas Abel, ...";
        homepage = "http://wiki.portal.chalmers.se/agda/";
        url = "";
        synopsis = "A dependently typed functional programming language and proof assistant";
        description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are like Haskell's GADTs, but they can be\nindexed by values and not just types. It also has parameterised\nmodules, mixfix operators, Unicode characters, and an interactive\nEmacs interface (the type checker can assist in the development of\nyour code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-Löf. It has many similarities\nwith other proof assistants based on dependent types, such as Coq,\nEpigram and NuPRL.\n\nNote that if you want to use the command-line program (agda), then\nyou should also install the Agda-executable package. This package\nincludes an Emacs mode for Agda, but you need to set up the Emacs\nmode yourself (see the README).";
        buildType = "Simple";
      };
      components = {
        Agda = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.haskell98
            hsPkgs.haskell-src
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.haskeline
            hsPkgs.utf8-string
            hsPkgs.xhtml
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.ghc-prim;
          build-tools = [
            hsPkgs.buildPackages.happy
            hsPkgs.buildPackages.alex
          ];
        };
        exes = {
          agda-mode = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }