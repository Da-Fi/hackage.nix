{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-auth-nopassword";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "2016 Dan Palmer";
        maintainer = "dan@danpalmer.me";
        author = "Dan Palmer";
        homepage = "https://github.com/danpalmer/yesod-auth-nopassword#readme";
        url = "";
        synopsis = "A plugin for Yesod to provide email-only authentication.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        yesod-auth-nopassword = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.blaze-markup
            hsPkgs.pwstore-fast
            hsPkgs.uuid
            hsPkgs.http-types
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.yesod-form
          ];
        };
      };
    }