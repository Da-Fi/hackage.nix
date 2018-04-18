{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-postscript";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Ryan Yates";
        homepage = "http://projects.haskell.org/diagrams/";
        url = "";
        synopsis = "Postscript backend for diagrams drawing EDSL";
        description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL using Postscript.\n\n* \"Diagrams.Backend.Postscript.CmdLine\" - Provides\nthe \"defaultMain\" interface to render a diagram\nbased on command line options.\n\n* \"Diagrams.Backend.Postscript\" - Provides the\ngeneral API for rendering diagrams using the\nPostscript backend.";
        buildType = "Simple";
      };
      components = {
        diagrams-postscript = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.dlist
            hsPkgs.vector-space
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.data-default-class
            hsPkgs.split
            hsPkgs.monoid-extras
            hsPkgs.semigroups
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.hashable
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }