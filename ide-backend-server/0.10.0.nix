{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ide-backend-server";
          version = "0.10.0";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete";
        maintainer = "Duncan Coutts <duncan@well-typed.com>";
        author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
        homepage = "";
        url = "";
        synopsis = "An IDE backend server";
        description = "Server executable used internally by the ide-backend library.";
        buildType = "Custom";
      };
      components = {
        exes = {
          ide-backend-server = {
            depends  = (([
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.data-accessor
              hsPkgs.data-accessor-mtl
              hsPkgs.async
              hsPkgs.unix
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.unordered-containers
              hsPkgs.filemanip
              hsPkgs.array
              hsPkgs.temporary
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.file-embed
              hsPkgs.ide-backend-common
            ] ++ optionals compiler.isGhc [
              hsPkgs.old-time
              hsPkgs.haddock
              hsPkgs.Cabal
            ]) ++ optionals compiler.isGhc [
              hsPkgs.time
              hsPkgs.haddock-api
              hsPkgs.Cabal
            ]) ++ optionals (compiler.isGhc || compiler.isGhc) [
              hsPkgs.time
              hsPkgs.haddock-api
              hsPkgs.Cabal
            ];
          };
        };
      };
    }