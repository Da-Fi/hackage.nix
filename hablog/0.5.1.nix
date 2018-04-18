{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hablog";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "soupiral@gmail.com";
        author = "Gil Mizrahi";
        homepage = "";
        url = "";
        synopsis = "A blog system";
        description = "blog system with tags";
        buildType = "Simple";
      };
      components = {
        hablog = {
          depends  = [
            hsPkgs.base
            hsPkgs.scotty
            hsPkgs.scotty-tls
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.bifunctors
            hsPkgs.transformers
            hsPkgs.markdown
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mime-types
            hsPkgs.containers
          ];
        };
        exes = {
          hablog = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.hablog
            ];
          };
        };
      };
    }