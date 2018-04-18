{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "irc";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "trevor@geekgateway.com";
        author = "Trevor Elliott";
        homepage = "";
        url = "";
        synopsis = "A small library for parsing IRC messages.";
        description = "A set of combinators and types for parsing IRC messages.";
        buildType = "Simple";
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