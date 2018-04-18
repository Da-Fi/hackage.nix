{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cereal-plus";
          version = "0.3.2";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/cereal-plus";
        url = "";
        synopsis = "An extended serialization library on top of \"cereal\"";
        description = "Provides non-orphan instances for an extended range of types,\ntransformer types and support for mutable data,\nwhile reapproaching the naming conventions of \\\"cereal\\\" library.\nFor a streaming frontend over this library see\n<http://hackage.haskell.org/package/pipes-cereal-plus \"pipes-cereal-plus\">";
        buildType = "Simple";
      };
      components = {
        cereal-plus = {
          depends  = [
            hsPkgs.cereal
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.hashable
            hsPkgs.hashtables
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.layers
            hsPkgs.errors
            hsPkgs.mtl
            hsPkgs.base
          ];
        };
      };
    }