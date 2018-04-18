{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro";
          version = "1.7.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral <koral at mailoo dot org>";
        author = "koral <koral at mailoo dot org>";
        homepage = "https://github.com/k0ral/hbro";
        url = "";
        synopsis = "Minimal extensible web-browser";
        description = "Cf README";
        buildType = "Simple";
      };
      components = {
        hbro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.chunked-data
            hsPkgs.cond
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.errors
            hsPkgs.safe-exceptions
            hsPkgs.fast-logger
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.microlens-platform
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.monadIO
            hsPkgs.mono-traversable
            hsPkgs.network-uri
            hsPkgs.optparse-applicative
            hsPkgs.pango
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.stm-chans
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.uuid
            hsPkgs.webkitgtk3
            hsPkgs.zeromq4-haskell
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.integer-simple;
        };
        exes = {
          hbro = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
            ];
          };
        };
      };
    }