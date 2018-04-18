{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedis";
          version = "0.9.11";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Falko Peters";
        maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
        author = "Falko Peters <falko.peters@gmail.com>";
        homepage = "https://github.com/informatikr/hedis";
        url = "";
        synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
        description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Compatibility with Latest Stable Redis:] Hedis is intended\nto be used with the latest stable version of Redis (currently 3.2).\nMost redis commands (<http://redis.io/commands>) are available as\nhaskell functions, although MONITOR and SYNC are intentionally\nomitted. Additionally, a low-level API is\nexposed that  makes it easy for the library user to implement further\ncommands, such as new commands from an experimental Redis version.\n\n[Automatic Optimal Pipelining:] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user. See\n<http://informatikr.com/2012/redis-pipelining.html> for a\ntechnical explanation of automatic optimal pipelining.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\n[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to\nconnect to a Redis server. For connections to a server on the same\nmachine, Unix domain sockets offer higher performance than the standard\nTCP connection.\n\nFor detailed documentation, see the \"Database.Redis\" module.\n";
        buildType = "Simple";
      };
      components = {
        hedis = {
          depends  = [
            hsPkgs.scanner
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resource-pool
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.vector
          ];
        };
        tests = {
          hedis-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.HUnit
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.slave-thread
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.time
            ];
          };
        };
        benchmarks = {
          hedis-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.hedis
              hsPkgs.time
            ];
          };
        };
      };
    }