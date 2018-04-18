{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hxt-cache";
          version = "9.1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "Cache for HXT XML Documents and other binary data";
        description = "Extension for caching XML documents and other binary data in cache directory\nof the local filesystem\n\nChanges from 9.0.2: dependency from old-time changed to time to work with ghc-7.6\n";
        buildType = "Simple";
      };
      components = {
        hxt-cache = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hxt
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.SHA
          ] ++ optionals compiler.isGhc [
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
      };
    }