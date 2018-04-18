{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "GPipe";
          version = "2.2";
        };
        license = "MIT";
        copyright = "Tobias Bexelius";
        maintainer = "Tobias Bexelius";
        author = "Tobias Bexelius";
        homepage = "https://github.com/tobbebex/GPipe-Core#readme";
        url = "";
        synopsis = "Typesafe functional GPU graphics programming";
        description = "A typesafe API based on the conceptual model of OpenGl, but without the imperative state machine.\nAims to be as close to the raw OpenGl performance as possible, without compromising type safety or functional style.\nIncludes DSL for shaders to provide type safety even when crossing into that domain.\nUses OpenGl 3.3 core profile under the hood.";
        buildType = "Simple";
      };
      components = {
        GPipe = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.exception-transformers
            hsPkgs.containers
            hsPkgs.Boolean
            hsPkgs.hashtables
            hsPkgs.gl
            hsPkgs.linear
          ];
        };
      };
    }