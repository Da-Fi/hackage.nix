{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-python-test";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2016 Bernard James Pope";
        maintainer = "florbitous@gmail.com";
        author = "Bernard James Pope (Bernie Pope)";
        homepage = "http://github.com/bjpop/language-python-test";
        url = "";
        synopsis = "testing code for the language-python library";
        description = "testing code for the language-python library";
        buildType = "Simple";
      };
      components = {
        exes = {
          language-python-roundtrip = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-python
            ];
          };
          language-python-tokens = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-python
            ];
          };
          language-python-parse-pretty = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-python
            ];
          };
        };
      };
    }