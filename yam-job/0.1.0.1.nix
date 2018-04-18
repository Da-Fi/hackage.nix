{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-job";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel YU";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam/yam-job#readme";
        url = "";
        synopsis = "";
        description = "Job Module for Yam";
        buildType = "Simple";
      };
      components = {
        yam-job = {
          depends  = [
            hsPkgs.base
            hsPkgs.yam-app
            hsPkgs.cron
          ];
        };
      };
    }