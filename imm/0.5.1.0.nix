{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imm";
          version = "0.5.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral att mailoo dott org";
        author = "kamaradclimber, koral";
        homepage = "";
        url = "";
        synopsis = "Retrieve RSS/Atom feeds and write one mail per new item in a maildir.";
        description = "Cf README";
        buildType = "Simple";
      };
      components = {
        imm = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cond
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.feed
            hsPkgs.filepath
            hsPkgs.hslogger
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mime-mail
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resourcet
            hsPkgs.old-locale
            hsPkgs.opml
            hsPkgs.random
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.transformers-base
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.tls
            hsPkgs.utf8-string
            hsPkgs.xdg-basedir
            hsPkgs.xml
          ];
        };
        exes = {
          imm = {
            depends  = [
              hsPkgs.imm
              hsPkgs.base
            ];
          };
        };
      };
    }