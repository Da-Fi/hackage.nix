{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "path-extra";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 Local Cooking Inc.";
        maintainer = "athan.clark@localcooking.com";
        author = "Athan Clark";
        homepage = "";
        url = "";
        synopsis = "Some extensions to Chris Done's path library, for use with urlpath and attoparsec-uri.";
        description = "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>";
        buildType = "Simple";
      };
      components = {
        path-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.path
          ];
        };
      };
    }