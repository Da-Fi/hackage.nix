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
      specVersion = "1.6";
      identifier = {
        name = "libxml-sax";
        version = "0.7";
      };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://john-millikin.com/software/bindings/libxml-sax/";
      url = "";
      synopsis = "Bindings for the libXML2 SAX interface";
      description = "";
      buildType = "Simple";
    };
    components = {
      "libxml-sax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.xml-types)
        ];
        libs = [ (pkgs."xml2") ];
        pkgconfig = [
          (pkgconfPkgs.libxml-2.0)
        ];
      };
    };
  }