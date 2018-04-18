{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      useinstalledomega = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "Omega";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cirodrig@illinois.edu";
        author = "Christopher Rodrigues";
        homepage = "";
        url = "";
        synopsis = "Operations on Presburger arithmetic formulae";
        description = "This package provides tools for manipulating sets and relations\nwhose members can be represented compactly as a Presburger\narithmetic formula.  Formulae are simplified and solved by the\nOmega Library.  The primary interface can be found in\n\"Data.Presburger.Omega.Set\" and \"Data.Presburger.Omega.Rel\".";
        buildType = "Custom";
      };
      components = {
        Omega = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = if _flags.useinstalledomega
            then [
              pkgs.omega
              pkgs."stdc++"
            ]
            else [ pkgs."stdc++" ];
        };
      };
    }