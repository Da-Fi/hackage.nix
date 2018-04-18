{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MemoTrie";
          version = "0.6.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2015 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/MemoTrie";
        url = "";
        synopsis = "Trie-based memo functions";
        description = "MemoTrie provides a basis for memoized functions over some domains,\nusing tries.  It's based on ideas from Ralf Hinze and code from\nSpencer Janssen.\n\nProject wiki page: <http://haskell.org/haskellwiki/MemoTrie>\n\n&#169; 2008-2015 by Conal Elliott; BSD3 license.\nGeneric support thanks to Sam Boosalis.";
        buildType = "Simple";
      };
      components = {
        MemoTrie = {
          depends  = if compiler.isGhc
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.void
            ];
        };
        exes = {
          generic = {
            depends  = [
              hsPkgs.base
              hsPkgs.MemoTrie
            ];
          };
        };
      };
    }