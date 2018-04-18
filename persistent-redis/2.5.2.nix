{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent-redis";
          version = "2.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pavel Ryzhov <paul@paulrz.cz>";
        author = "Pavel Ryzhov <paul@paulrz.cz>";
        homepage = "";
        url = "";
        synopsis = "Backend for persistent library using Redis.";
        description = "Based on the Redis package.";
        buildType = "Simple";
      };
      components = {
        persistent-redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.hedis
            hsPkgs.bytestring
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.attoparsec
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.utf8-string
            hsPkgs.binary
            hsPkgs.scientific
            hsPkgs.path-pieces
            hsPkgs.http-api-data
          ];
        };
        tests = {
          basic = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedis
              hsPkgs.persistent
              hsPkgs.persistent-template
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.time
              hsPkgs.attoparsec
              hsPkgs.template-haskell
              hsPkgs.monad-control
              hsPkgs.path-pieces
              hsPkgs.scientific
              hsPkgs.http-api-data
              hsPkgs.persistent-redis
            ];
          };
        };
      };
    }