{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-kafka-client";
          version = "2.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Alexey Raga <alexey.raga@gmail.com>";
        author = "Alexey Raga <alexey.raga@gmail.com>";
        homepage = "https://github.com/haskell-works/hw-kafka-client";
        url = "";
        synopsis = "Kafka bindings for Haskell";
        description = "Apache Kafka bindings backed by the librdkafka C library.\n\nFeatures include:\n\n* Consumer groups: auto-rebalancing consumers\n\n* Keyed and keyless messages producing/consuming\n\n* Batch producing messages";
        buildType = "Simple";
      };
      components = {
        hw-kafka-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.unix
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          libs = [ pkgs.rdkafka ];
        };
        exes = {
          kafka-client-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.temporary
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.hw-kafka-client
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hw-kafka-client
              hsPkgs.monad-loops
              hsPkgs.hspec
              hsPkgs.either
            ];
          };
          integration-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hw-kafka-client
              hsPkgs.monad-loops
              hsPkgs.hspec
              hsPkgs.either
            ];
          };
        };
      };
    }