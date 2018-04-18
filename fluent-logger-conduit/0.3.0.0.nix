{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fluent-logger-conduit";
          version = "0.3.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2012, Noriyuki OHKAWA";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Conduit interface for fluent-logger";
        description = "Conduit interface for fluent-logger";
        buildType = "Simple";
      };
      components = {
        fluent-logger-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.fluent-logger
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
      };
    }