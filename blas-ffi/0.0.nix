{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "blas-ffi";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/blas-ffi/";
        url = "";
        synopsis = "Auto-generated interface to Fortran BLAS";
        description = "BLAS is a package for efficient basic linear algebra operations.\nThe reference implementation is written in FORTRAN.\n\nThis is an automatically generated low-level interface.\nWe provide bindings to functions of all variants\nfor @Float@, @Double@, @Complex Float@ and @Complex Double@.\nWe do not use TemplateHaskell nor HSC nor CHS,\nbut instead Haskell 98 code\ngenerated by the custom @lapack-ffi-tools@ package.";
        buildType = "Simple";
      };
      components = {
        blas-ffi = {
          depends  = [
            hsPkgs.netlib-ffi
            hsPkgs.base
          ];
        };
      };
    }