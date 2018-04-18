{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabalg";
          version = "0.2.7";
        };
        license = "MIT";
        copyright = "";
        maintainer = "malikov.d.y@gmail.com";
        author = "Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "alias for cabal install from given git repo";
        description = "Short alias for installing cabal package from git source repository.\n\nI.e.\n\n@\$> cabalg https:\\/\\/github.com\\/biegunka\\/biegunka\n@\n\nis just a shorthand for\n\n@\$> mktemp\n\$> git clone --single-branch --depth=1 --quiet https:\\/\\/github.com\\/biegunka\\/biegunka \\<tempdirname\\>\n\$> cabal install \\<tempdirname\\>/\\<cabalfilename\\>\n@\n\nIt also supports arbitrary git revisions mentioning like\n\n@\$> cabalg https:\\/\\/github.com\\/biegunka\\/biegunka\\@beefboa\n@\n\nNecessary arguments could be passed to 'cabal install' with '--' delimiter like\n\n@\$> cabalg \\<repo1\\> ... \\<repoN\\> [\\-\\- \\<cabal-install args\\>]\n@\n\nPlease notice, that '--single-branch' flag  comes with git-1.7.10 (<https://lkml.org/lkml/2012/3/28/418>) and later, so you probably want to have it.\n\nIt's supposed to be Windows-compatible (not sure about the tests)";
        buildType = "Simple";
      };
      components = {
        cabalg = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
          ];
        };
        exes = {
          cabalg = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabalg
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }