{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "iteratee-compress";
        version = "0.3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 (c) Maciej Piechotka";
      maintainer = "iteratee-compress@tsurucapital.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "Enumeratees for compressing and decompressing streams";
      description = "Enumeratees for compressing and decompressing streams";
      buildType = "Simple";
    };
    components = {
      "iteratee-compress" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.iteratee)
          (hsPkgs.mtl)
        ];
        libs = [
          (pkgs."z")
          (pkgs."bz2")
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }