{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webify";
          version = "0.1.9.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Anantha Kumaran";
        maintainer = "Sarah Brofeldt <sbrofeldt@gmail.com>";
        author = "Anantha Kumaran";
        homepage = "http://github.com/ananthakumaran/webify";
        url = "";
        synopsis = "webfont generator";
        description = "A command line tool to convert ttf file to woff, eot & svg files";
        buildType = "Simple";
      };
      components = {
        exes = {
          webify = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.blaze-builder
              hsPkgs.binary
              hsPkgs.binary-strict
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.zlib
              hsPkgs.xmlgen
              hsPkgs.optparse-applicative
              hsPkgs.vector
              hsPkgs.hopfli
            ];
          };
        };
      };
    }