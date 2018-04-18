{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "solr";
          version = "0.3.2";
        };
        license = "MIT";
        copyright = "(c) 2016, Sannsyn AS";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/sannsyn/solr";
        url = "";
        synopsis = "A minimal Solr client library";
        description = "";
        buildType = "Simple";
      };
      components = {
        solr = {
          depends  = [
            hsPkgs.http-response-decoder
            hsPkgs.http-client
            hsPkgs.uri-encode
            hsPkgs.json-encoder
            hsPkgs.json-incremental-decoder
            hsPkgs.bytestring-tree-builder
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.case-insensitive
            hsPkgs.matcher
            hsPkgs.semigroups
            hsPkgs.profunctors
            hsPkgs.contravariant
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }