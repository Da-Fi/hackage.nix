{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "spoon";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Matt Morrow & Dan Peebles";
        maintainer = "Dan Peebles <pumpkingod@gmail.com>";
        author = "Matt Morrow, Dan Peebles";
        homepage = "";
        url = "";
        synopsis = "Catch errors thrown from pure computations.";
        description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in.";
        buildType = "Simple";
      };
      components = {
        spoon = {
          depends  = [ hsPkgs.base ];
        };
      };
    }