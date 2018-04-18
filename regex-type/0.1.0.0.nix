{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex-type";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kiss.csongor.kiss@gmail.com";
        author = "Csongor Kiss";
        homepage = "https://github.com/kcsongor/regex-type";
        url = "";
        synopsis = "Type-level regular expressions";
        description = "Regular expression matching of Haskell types using nondeterministic finite automata.";
        buildType = "Simple";
      };
      components = {
        regex-type = {
          depends  = [ hsPkgs.base ];
        };
      };
    }