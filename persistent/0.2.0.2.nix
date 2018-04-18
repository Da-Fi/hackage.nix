{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/persistent/";
        url = "";
        synopsis = "Type-safe, non-relational, multi-backend persistence.";
        description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
        buildType = "Simple";
      };
      components = {
        persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.text
            hsPkgs.hamlet
            hsPkgs.web-routes-quasi
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.enumerator
          ];
        };
      };
    }