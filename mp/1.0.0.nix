{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "mp";
          version = "1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Piotr Borek <piotrborek@op.pl>";
        author = "Piotr Borek <piotrborek@op.pl>";
        homepage = "http://bitbucket.org/borekpiotr/linux-music-player";
        url = "";
        synopsis = "Music player for linux.";
        description = "Music player for linux.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mp = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-gi-base
              hsPkgs.haskell-gi-overloading
              hsPkgs.gi-gobject
              hsPkgs.gi-glib
              hsPkgs.gi-gst
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.unix
              hsPkgs.filepath
              hsPkgs.utf8-string
              hsPkgs.ConfigFile
              hsPkgs.MissingH
              hsPkgs.resourcet
              hsPkgs.exceptions
              hsPkgs.async
              hsPkgs.daemons
              hsPkgs.vty
              hsPkgs.lens
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.vector
              hsPkgs.data-default-class
              hsPkgs.template-haskell
              hsPkgs.stm
              hsPkgs.simple-ui
            ];
          };
        };
      };
    }