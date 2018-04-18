{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "CHXHtml";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Paul Talaga <paul@fuzzpault.com>";
        maintainer = "paul@fuzzpault.com";
        author = "Paul Talaga";
        homepage = "http://fuzzpault.com/chxhtml";
        url = "";
        synopsis = "A W3C compliant (X)HTML generating library";
        description = "An (X)Html generating library providing nearly full W3C compliance.  Non-compliant\ncontent is exposed at compile time and fails type-check.";
        buildType = "Simple";
      };
      components = {
        CHXHtml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.hxt-regex-xmlschema
          ];
        };
      };
    }