{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tokyotyrant-haskell";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Polar Mobile";
        maintainer = "";
        author = "Gregory Collins <gregory.collins@polarmobile.com>";
        homepage = "http://www.polarmobile.com/";
        url = "";
        synopsis = "FFI bindings to libtokyotyrant";
        description = "This package provides a thin FFI binding to the libtokyotyrant\nC library shipped with Mikio Hirabayashi's Tokyo\nTyrant. (<http://tokyocabinet.sourceforge.net/tyrantdoc/>)";
        buildType = "Simple";
      };
      components = {
        tokyotyrant-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
          libs = [
            pkgs.tokyocabinet
            pkgs.tokyotyrant
          ];
        };
      };
    }