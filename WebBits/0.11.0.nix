{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "WebBits";
          version = "0.11.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007-2008 Arjun Guha and Spiridon Eliopoulos";
        maintainer = "Arjun Guha <arjun@cs.brown.edu>";
        author = "Arjun Guha, Spiridon Eliopoulos";
        homepage = "http://www.cs.brown.edu/research/plt/";
        url = "";
        synopsis = "JavaScript analysis tools";
        description = "WebBits is a collection of libraries for working with JavaScript embeded in\nHTML files.  Highlights include:\n\n* @WebBits.JavaScript.Crawl@ returns all JavaScript in an HTML page, including\nJavaScript from imported script files (@\\<script src=...\\>@).\n\n* @WebBits.JavaScript.Environment@ annotates JavaScript syntax with its static\nenvironment and returns a list of free identifiers.\n\n* @WebBits.JavaScript.Parser@ is a JavaScript parser that is largely based on\nJavaScript 1.5.\n\n* @WebBits.Html.Parser@ is a permissive HTML parser.";
        buildType = "Custom";
      };
      components = {
        WebBits = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.syb
          ];
        };
      };
    }