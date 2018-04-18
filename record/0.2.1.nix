{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      doctest = true;
      demo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/record";
        url = "";
        synopsis = "First class records implemented with quasi-quotation";
        description = "An API of just two quasi-quoters,\nproviding a full-scale solution to the notorious records problem of Haskell.\n\nLinks:\n\n* <http://nikita-volkov.github.io/record A comprehensive introduction to the library>.\n\n* <https://github.com/nikita-volkov/record/blob/master/demo/Main.hs Demo>.\n";
        buildType = "Custom";
      };
      components = {
        record = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        exes = {
          demo = {
            depends  = optionals (!(!_flags.demo)) [
              hsPkgs.record
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
        tests = {
          doctest = {
            depends  = optionals (!(!_flags.doctest)) [
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }