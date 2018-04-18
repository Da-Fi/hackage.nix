{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "auto-update";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/wai";
        url = "";
        synopsis = "Efficiently run periodic, on-demand actions";
        description = "API docs and the README are available at <http://www.stackage.org/package/auto-update>.";
        buildType = "Simple";
      };
      components = {
        auto-update = {
          depends  = [ hsPkgs.base ];
        };
      };
    }