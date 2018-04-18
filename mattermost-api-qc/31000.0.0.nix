{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mattermost-api-qc";
          version = "31000.0.0";
        };
        license = "ISC";
        copyright = "2017 Kevin Quick";
        maintainer = "kquick@galois.com";
        author = "Kevin Quick";
        homepage = "https://github.com/matterhorn-chat/mattermost-api-qc";
        url = "";
        synopsis = "QuickCheck instances for the Mattermost client API library";
        description = "A testing library for the mattermost-api library";
        buildType = "Simple";
      };
      components = {
        mattermost-api-qc = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mattermost-api
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }