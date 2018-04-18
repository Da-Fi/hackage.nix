{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fsmActions";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
        author = "Andy Gimblett <haskell@gimbo.org.uk>";
        homepage = "";
        url = "";
        synopsis = "Finite state machines and FSM actions";
        description = "This is a library for representing and manipulating finite state\nmachines (FSMs) in Haskell, with an emphasis on computing the\neffects of sequences of transitions across entire machines (which\nwe call actions), and in particular investigating action\nequivalences between such sequences.";
        buildType = "Simple";
      };
      components = {
        fsmActions = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
      };
    }