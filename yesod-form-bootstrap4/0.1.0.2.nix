{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-form-bootstrap4";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "© ncaq";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "https://github.com/ncaq/yesod-form-bootstrap4#readme";
        url = "";
        synopsis = "renderBootstrap4";
        description = "";
        buildType = "Simple";
      };
      components = {
        yesod-form-bootstrap4 = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude-yesod
            hsPkgs.yesod-form
          ];
        };
      };
    }