{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-java";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Niklas Broberg";
        homepage = "http://github.com/vincenthz/language-java";
        url = "";
        synopsis = "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer";
        description = "Java source manipulation.";
        buildType = "Simple";
      };
      components = {
        language-java = {
          depends  = [
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.cpphs
            hsPkgs.parsec
          ] ++ [ hsPkgs.base ];
          build-tools = [
            hsPkgs.buildPackages.alex
          ];
        };
      };
    }