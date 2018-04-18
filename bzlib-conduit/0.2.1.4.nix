{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bzlib-conduit";
          version = "0.2.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012, Hideyuki Tanaka";
        maintainer = "Michael Snoyman";
        author = "Hideyuki Tanaka";
        homepage = "https://github.com/snoyberg/bzlib-conduit";
        url = "";
        synopsis = "Streaming compression/decompression via conduits.";
        description = "Streaming compression/decompression via conduits.";
        buildType = "Simple";
      };
      components = {
        bzlib-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.resourcet
            hsPkgs.data-default
            hsPkgs.bindings-DSL
          ];
          libs = pkgs.lib.optional (!system.isWindows) pkgs.bz2;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.bzlib-conduit
              hsPkgs.resourcet
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.bzlib-conduit
              hsPkgs.resourcet
            ];
          };
        };
      };
    }