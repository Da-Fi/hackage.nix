{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "generator";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yairchu@gmail.com";
        author = "Yair Chuchem";
        homepage = "http://github.com/yairchu/generator/tree";
        url = "";
        synopsis = "Python-generators notation for creation of monadic lists";
        description = "Generator monad transformer to create\nmonadic lists in a manner similar to\nPython generators.";
        buildType = "Simple";
      };
      components = {
        generator = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.List
          ];
        };
      };
    }