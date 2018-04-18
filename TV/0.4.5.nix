{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "TV";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006,2009 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/TV";
        url = "http://code.haskell.org/~conal/code/TV";
        synopsis = "Tangible Values -- composable interfaces";
        description = "TV is a library for composing /tangible values/ (\\\"TVs\\\"), i.e., values\nthat carry along external interfaces.  Values and interfaces are\n/combined and separable/, which makes TVs ready to use and to reuse.\n\nTry out the examples in @src\\/Examples.hs@.\n\nFor more information, including examples, please see the project wiki\npage <http://haskell.org/haskellwiki/TV>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        TV = {
          depends  = [
            hsPkgs.base
            hsPkgs.DeepArrow
            hsPkgs.TypeCompose
          ];
        };
      };
    }