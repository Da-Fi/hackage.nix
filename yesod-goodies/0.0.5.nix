{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-goodies";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@pbrisbin.com";
        author = "Patrick Brisbin";
        homepage = "http://github.com/pbrisbin/yesod-goodies";
        url = "";
        synopsis = "A collection of various small helpers useful in any yesod application.";
        description = "A collection of various small helpers useful in any yesod application.";
        buildType = "Simple";
      };
      components = {
        yesod-goodies = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.pandoc
            hsPkgs.yesod
            hsPkgs.yesod-form
            hsPkgs.blaze-html
            hsPkgs.pureMD5
            hsPkgs.HTTP
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }