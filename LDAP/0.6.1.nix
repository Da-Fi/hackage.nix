{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "LDAP";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2006 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://darcs.complete.org/ldap-haskell";
        url = "";
        synopsis = "Haskell binding for C LDAP API";
        description = "";
        buildType = "Custom";
      };
      components = {
        LDAP = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.ldap ];
        };
      };
    }