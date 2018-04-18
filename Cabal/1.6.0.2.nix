{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      base3 = true;
    } // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Cabal";
          version = "1.6.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2006, Isaac Jones\n2005-2008, Duncan Coutts";
        maintainer = "cabal-devel@haskell.org";
        author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "A framework for packaging Haskell software";
        description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
        buildType = "Custom";
      };
      components = {
        Cabal = {
          depends  = ((([
            hsPkgs.filepath
          ] ++ pkgs.lib.optional _flags.base4 hsPkgs.base) ++ pkgs.lib.optional _flags.base3 hsPkgs.base) ++ pkgs.lib.optional (!_flags.base3 && !_flags.base4) hsPkgs.base) ++ optionals (_flags.base3 || _flags.base4) [
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.old-time
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.pretty
          ];
        };
      };
    }