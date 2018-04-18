{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "groundhog";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Boris Lykah <lykahb@gmail.com>";
        author = "Boris Lykah <lykahb@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Type-safe, relational, multi-backend persistence.";
        description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
        buildType = "Simple";
      };
      components = {
        groundhog = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.enumerator
            hsPkgs.monad-control
            hsPkgs.pool
          ];
        };
      };
    }