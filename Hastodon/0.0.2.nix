{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hastodon";
          version = "0.0.2";
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
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.MissingH
            hsPkgs.text
          ];
        };
      };
    }