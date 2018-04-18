{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-kgsearch";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Knowledge Graph Search SDK.";
        description = "Searches the Google Knowledge Graph for entities.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1@\nof the API.";
        buildType = "Simple";
      };
      components = {
        gogol-kgsearch = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }