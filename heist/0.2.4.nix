{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "heist";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Doug Beardsley, Gregory Collins";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "An xhtml templating system";
        description = "";
        buildType = "Simple";
      };
      components = {
        heist = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.hexpat
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.monads-fd
            hsPkgs.process
            hsPkgs.random
            hsPkgs.transformers
          ];
        };
      };
    }