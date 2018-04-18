{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grapefruit-ui-gtk";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://grapefruit-project.org/";
        url = "http://hackage.haskell.org/packages/archive/grapefruit-ui-gtk/0.1.0.5/grapefruit-ui-gtk-0.1.0.5.tar.gz";
        synopsis = "GTK+-based backend for declarative user interface programming";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains the GTK+-based user interface backend.";
        buildType = "Simple";
      };
      components = {
        grapefruit-ui-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.fraction
            hsPkgs.grapefruit-frp
            hsPkgs.grapefruit-records
            hsPkgs.grapefruit-ui
            hsPkgs.glib
            hsPkgs.gtk
          ];
        };
      };
    }