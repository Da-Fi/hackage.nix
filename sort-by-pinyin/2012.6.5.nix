{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sort-by-pinyin";
          version = "2012.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/sort-by-pinyin";
        url = "";
        synopsis = "Sort simplified Chinese by PinYin";
        description = "Sort simplified Chinese by PinYin";
        buildType = "Simple";
      };
      components = {
        sort-by-pinyin = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.air
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.air-extra
          ];
        };
      };
    }