{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "users-test";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://github.com/agrafix/users";
        url = "";
        synopsis = "Library to test backends for the users library";
        description = "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.\n\nAll backend packages should conform to this specification.";
        buildType = "Simple";
      };
      components = {
        users-test = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.users
            hsPkgs.text
          ];
        };
      };
    }