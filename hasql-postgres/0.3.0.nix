{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-postgres";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-postgres";
        url = "";
        synopsis = "A \"PostgreSQL\" backend for the \"hasql\" library";
        description = "This library provides a \\\"PostgreSQL\\\" driver for\n<http://hackage.haskell.org/package/hasql the \"hasql\" library>.\n\nAccording to the included benchmarks,\nit performs up to 2x faster than \\\"postgresql-simple\\\" and\nup to 7x faster than \\\"HDBC\\\".\nYou can read up\n<http://nikita-volkov.github.io/hasql-benchmarks/ a post with analysis of those benchmarks>.";
        buildType = "Simple";
      };
      components = {
        hasql-postgres = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.attoparsec
            hsPkgs.hasql-backend
            hsPkgs.postgresql-binary
            hsPkgs.postgresql-libpq
            hsPkgs.uuid
            hsPkgs.vector
            hsPkgs.time
            hsPkgs.hashtables
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.list-t
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.mtl-prelude
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          library-tests = {
            depends  = [
              hsPkgs.HTF
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.template-haskell
              hsPkgs.attoparsec
              hsPkgs.hasql
              hsPkgs.postgresql-binary
              hsPkgs.postgresql-libpq
              hsPkgs.uuid
              hsPkgs.vector
              hsPkgs.time
              hsPkgs.hashtables
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.loch-th
              hsPkgs.placeholders
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
          tests = {
            depends  = [
              hsPkgs.hasql-postgres
              hsPkgs.hasql-backend
              hsPkgs.hasql
              hsPkgs.HTF
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.SafeSemaphore
              hsPkgs.slave-thread
              hsPkgs.vector
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.list-t
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          competition = {
            depends  = [
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.postgresql-simple
              hsPkgs.hasql-postgres
              hsPkgs.hasql-backend
              hsPkgs.hasql
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.criterion-plus
              hsPkgs.vector
              hsPkgs.time
              hsPkgs.text
              hsPkgs.scientific
              hsPkgs.monad-control
              hsPkgs.deepseq
              hsPkgs.list-t
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
          profiling = {
            depends  = [
              hsPkgs.postgresql-simple
              hsPkgs.hasql-postgres
              hsPkgs.hasql-backend
              hsPkgs.hasql
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.vector
              hsPkgs.time
              hsPkgs.text
              hsPkgs.scientific
              hsPkgs.list-t
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }