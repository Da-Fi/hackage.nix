{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "msgpack";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2011, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/msgpack/msgpack";
        url = "";
        synopsis = "A Haskell implementation of MessagePack";
        description = "A Haskell implementation of MessagePack <http://msgpack.org/>";
        buildType = "Simple";
      };
      components = {
        msgpack = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
            hsPkgs.deepseq
            hsPkgs.template-haskell
          ];
        };
      };
    }