{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AttoJson";
          version = "0.5.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "konn.jinro _at_ gmail.com";
        author = "Hiromi ISHII";
        homepage = "http://github.com/konn/AttoJSON";
        url = "";
        synopsis = "Simple lightweight JSON parser, generator & manipulator based on ByteString";
        description = "Simple Lightweight JSON parser & generator based on ByteString.";
        buildType = "Simple";
      };
      components = {
        AttoJson = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.bytestring-show
            hsPkgs.utf8-string
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
      };
    }