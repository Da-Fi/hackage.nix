{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "neat-interpolation";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/neat-interpolation";
        url = "";
        synopsis = "A quasiquoter for neat and simple multiline text interpolation";
        description = "NeatInterpolation provides a quasiquoter for producing strings\nwith a simple interpolation of input values.\nIt removes the excessive indentation from the input and\naccurately manages the indentation of all lines of interpolated variables.";
        buildType = "Simple";
      };
      components = {
        neat-interpolation = {
          depends  = [
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.base
          ];
        };
        exes = {
          neat-interpolation-demo = {
            depends  = [
              hsPkgs.parsec
              hsPkgs.template-haskell
              hsPkgs.base
            ];
          };
        };
      };
    }