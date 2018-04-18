{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demos = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fortytwo";
          version = "1.0.3";
        };
        license = "MIT";
        copyright = "Gianlua Guarini";
        maintainer = "gianluca.guarini@gmail.com";
        author = "Gianluca Guarini";
        homepage = "https://github.com/gianlucaguarini/fortytwo#readme";
        url = "";
        synopsis = "Interactive terminal prompt";
        description = "List of Prompt helpers to pimp the UIs of your haskell programs";
        buildType = "Simple";
      };
      components = {
        fortytwo = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.ansi-terminal
          ];
        };
        exes = {
          demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.fortytwo
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.fortytwo
              hsPkgs.base
              hsPkgs.process
              hsPkgs.async
              hsPkgs.hspec
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.fortytwo
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }