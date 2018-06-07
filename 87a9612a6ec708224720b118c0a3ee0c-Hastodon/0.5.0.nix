{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hastodon";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "syucream1031@gmail.com";
        author = "Ryo Okubo";
        homepage = "https://github.com/syucream/hastodon";
        url = "";
        synopsis = "mastodon client module for Haskell";
        description = "mastodon client module for Haskell";
        buildType = "Simple";
      };
      components = {
        Hastodon = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.exceptions
            hsPkgs.mime-types
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.MissingH
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
      };
    }