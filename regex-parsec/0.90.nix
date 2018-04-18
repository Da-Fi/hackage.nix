{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-parsec";
          version = "0.90";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-parsec/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "A better performance, lazy, powerful replacement of Text.Regex and JRegex";
        buildType = "Custom";
      };
      components = {
        regex-parsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-base
            hsPkgs.parsec
          ];
        };
      };
    }