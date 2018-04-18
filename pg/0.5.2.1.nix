{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "pg";
          version = "0.5.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 MailRank, Inc.\n(c) 2011-2015 Leon P Smith";
        maintainer = "Charmander <~@charmander.me>";
        author = "Bryan O'Sullivan, Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Mid-level PostgreSQL client library";
        description = "Mid-level PostgreSQL client library, forked from postgresql-simple.";
        buildType = "Simple";
      };
      components = {
        pg = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.postgresql-libpq
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid-types
            hsPkgs.scientific
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.ghc-prim;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.filepath
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-golden
              hsPkgs.HUnit
              hsPkgs.pg
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.ghc-prim;
          };
        };
      };
    }