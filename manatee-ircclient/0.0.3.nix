{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-ircclient";
          version = "0.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "IRC client extension for Manatee.";
        description = "manatee-ircclient is IRC client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nManual look <http://haskell.org/haskellwiki/Manatee>\n\nScreenshot at <http://goo.gl/MkVw>\n\nIRC channel:\n\nirc.freenode.net 6667 <##manatee>\n";
        buildType = "Custom";
      };
      components = {
        manatee-ircclient = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.dbus-core
            hsPkgs.template-haskell
            hsPkgs.gtksourceview2
            hsPkgs.unix
            hsPkgs.network
            hsPkgs.groom
            hsPkgs.fastirc
            hsPkgs.split
            hsPkgs.nano-md5
            hsPkgs.filepath
            hsPkgs.regex-posix
            hsPkgs.array
            hsPkgs.GoogleTranslate
            hsPkgs.utf8-string
            hsPkgs.mtl
            hsPkgs.Cabal
            hsPkgs.MorseCode
          ];
        };
        exes = {
          manatee-irc-daemon = {};
          manatee-ircclient = {};
        };
      };
    }