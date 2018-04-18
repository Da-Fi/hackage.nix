{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-to-json-fast";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "Copyright Noam Lewis, 2014";
        maintainer = "jones.noamle@gmail.com";
        author = "Noam Lewis";
        homepage = "https://github.com/sinelaw/xml-to-json-fast";
        url = "";
        synopsis = "Fast, light converter of xml to json capable of handling huge xml files";
        description = "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.\n\nIf not input file is given, reads from stdin (so it can be used in a unix pipe chain).";
        buildType = "Simple";
      };
      components = {
        xml-to-json-fast = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagsoup
            hsPkgs.text
          ];
        };
        exes = {
          xml-to-json-fast = {
            depends  = [
              hsPkgs.base
              hsPkgs.xml-to-json-fast
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }