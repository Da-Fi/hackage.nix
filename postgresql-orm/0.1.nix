{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "postgresql-orm";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "amit@amitlevy.com";
        author = "Amit Levy and David Mazieres";
        homepage = "";
        url = "";
        synopsis = "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.";
        description = "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See\n\"Database.PostgreSQL.ORM\" for documentation.";
        buildType = "Simple";
      };
      components = {
        postgresql-orm = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.postgresql-simple
            hsPkgs.process
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.vector
          ];
        };
        exes = {
          pg_migrate = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.mtl
              hsPkgs.postgresql-simple
              hsPkgs.process
            ];
          };
        };
      };
    }