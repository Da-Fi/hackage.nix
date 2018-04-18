{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "RBTree";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2011 Wu Xingbo (wuxb45@gmail.com)";
        maintainer = "Wu Xingbo";
        author = "Wu Xingbo";
        homepage = "git://github.com/wuxb45/Haskell-RBTree.git";
        url = "";
        synopsis = "Pure haskell Red-Black-Tree implemetation";
        description = "This package implemets Red-Black tree data-structure.";
        buildType = "Simple";
      };
      components = {
        RBTree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }