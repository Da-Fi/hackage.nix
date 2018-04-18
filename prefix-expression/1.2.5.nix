{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prefix-expression";
          version = "1.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: ©  2018 Vonfry";
        maintainer = "vonfry314@gmail.com";
        author = "Vonfry";
        homepage = "https://github.com/VonFry/prefix-expression";
        url = "";
        synopsis = "";
        description = "convert infix to prefix expression";
        buildType = "Simple";
      };
      components = {
        prefix-expression = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-pcre-builtin
          ];
        };
        tests = {
          Test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.prefix-expression
            ];
          };
        };
      };
    }