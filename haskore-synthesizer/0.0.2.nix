{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskore-synthesizer";
          version = "0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "http://darcs.haskell.org/haskore-synthesizer/";
        synopsis = "Audio signal processing coded in Haskell";
        description = "Use native Haskell Audio Signal Processing for Music rendering with Haskore\nContains several example songs.";
        buildType = "Simple";
      };
      components = {
        haskore-synthesizer = {
          depends  = [
            hsPkgs.synthesizer
            hsPkgs.haskore
            hsPkgs.numeric-prelude
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.data-accessor
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else [ hsPkgs.base ]);
        };
        exes = { rendersong = {}; };
      };
    }