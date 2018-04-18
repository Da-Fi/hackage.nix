{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "safe-failure";
          version = "0.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2007-8, Neil Mitchell";
        maintainer = "pepeiborra@gmail.com";
        author = "Neil Mitchell, Jose Iborra (2009), Michael Snoyman (2009)";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/safe/";
        url = "";
        synopsis = "Library for safe functions (deprecated)";
        description = "Partial functions from the base library, such as @head@ and @!!@, modified\nto fail in a @Failure@.\nThese functions can be used to reduce the number of unsafe pattern matches in\nyour code.";
        buildType = "Simple";
      };
      components = {
        safe-failure = {
          depends  = [
            hsPkgs.base
            hsPkgs.failure
          ];
        };
      };
    }