{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactive";
          version = "0.8.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/reactive";
        url = "http://code.haskell.org/reactive";
        synopsis = "Simple foundation for functional reactive programming";
        description = "/Reactive/ is a simple foundation for programming reactive systems\nfunctionally.  Like Fran\\/FRP, it has a notions of (reactive) behaviors and\nevents.  Unlike most previous FRP implementations, Reactive has a hybrid\ndemand/data-driven implementation, as described in the paper \\\"Simply\nefficient functional reactivity\\\", <http://conal.net/papers/simply-reactive/>.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/reactive>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2007-2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        reactive = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.TypeCompose
            hsPkgs.vector-space
            hsPkgs.unamb
            hsPkgs.checkers
          ];
        };
      };
    }