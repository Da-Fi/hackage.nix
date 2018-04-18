{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "irc";
          version = "0.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "trevor@geekgateway.com";
        author = "Trevor Elliott";
        homepage = "";
        url = "";
        synopsis = "A small library for parsing IRC messages.";
        description = "A set of combinators and types for parsing IRC messages.";
        buildType = "Custom";
      };
      components = {
        irc = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }