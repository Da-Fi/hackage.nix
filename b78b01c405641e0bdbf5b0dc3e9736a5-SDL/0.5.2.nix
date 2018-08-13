{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "SDL";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL";
      description = "";
      buildType = "Custom";
    };
    components = {
      "SDL" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."SDL") ];
        frameworks = [
          (pkgs."AppKit")
        ];
      };
    };
  }