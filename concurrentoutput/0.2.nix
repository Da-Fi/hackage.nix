{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concurrentoutput";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Ungarble output from several threads";
        description = "This library provides a simple interface to output status\nmessages from more than one thread.\n\nIt will continue adding information (such as dots, or \\\"done\\\")\nto the correct line and continue scrolling when a line is done.\n\nFor example, this screen:\n\n@Thread ThreadId 27: still working... done@\n\n@Thread ThreadId 25: still working... @\n\n@Thread ThreadId 26: still working... @\n\n@_@\n\nwill, once thread 25 has finished, look like this\n\n@Thread ThreadId 25: still working... done@\n\n@Thread ThreadId 27: still working... done@\n\n@Thread ThreadId 26: still working... @\n\n@_@\n\nIf standard output is not a terminal, it will only print\ncomplete lines and not output any control characters.\n\nAt the moment, it can only handle lines that are shorter than\nthe terminal. If they are not, output will be garbled again.\n";
        buildType = "Simple";
      };
      components = {
        concurrentoutput = {
          depends  = [ hsPkgs.base ];
        };
      };
    }