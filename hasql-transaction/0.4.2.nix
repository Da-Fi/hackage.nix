{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-transaction";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-transaction";
        url = "";
        synopsis = "A composable abstraction over the retryable transactions for Hasql";
        description = "";
        buildType = "Simple";
      };
      components = {
        hasql-transaction = {
          depends  = [
            hsPkgs.hasql
            hsPkgs.postgresql-error-codes
            hsPkgs.bytestring-tree-builder
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.contravariant-extras
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.base-prelude
          ];
        };
      };
    }