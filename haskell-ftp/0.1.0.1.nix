{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-ftp";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yi.codeplayer@gmail.com";
        author = "yihuang";
        homepage = "https://github.com/yihuang/haskell-ftp";
        url = "";
        synopsis = "A Haskell ftp server with configurable backend.";
        description = "See home page (https://github.com/yihuang/haskell-ftp)";
        buildType = "Simple";
      };
      components = {
        haskell-ftp = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.system-filepath
            hsPkgs.network
            hsPkgs.conduit
            hsPkgs.network-conduit
            hsPkgs.process-conduit
          ];
        };
        exes = {
          simple-ftp-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.case-insensitive
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.system-filepath
              hsPkgs.network
              hsPkgs.conduit
              hsPkgs.network-conduit
              hsPkgs.process-conduit
            ];
          };
        };
      };
    }