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
        name = "hgeometric";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (C) 2007, 2008 Marco Túlio Gontijo e Silva\nCopyright (C) 2007 Rafael Cunha de Almeida";
      maintainer = "malebria@riseup.net";
      author = "Marco Túlio Gontijo e Silva\nRafael Cunha de Almeida";
      homepage = "ftp://ftp.cs.man.ac.uk/pub/toby/gpc/";
      url = "";
      synopsis = "A geometric library with bindings to GPC.";
      description = "hgeometric is a geometric library with bindings to the General Polygon\nClipper Library (GPC), a flexible and highly robust polygon set operations\nlibrary. GPC is free for non-comercial use and can be obtained at\n<http://www.cs.man.ac.uk/~toby/alan/software/>. hgeometric also include\nsome functions to deal with geometric types.";
      buildType = "Simple";
    };
    components = {
      "hgeometric" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
        libs = [ (pkgs."gpcl") ];
      };
    };
  }