{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings";
          version = "2.4.1.8";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) Greg Horn 2013-2015";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "http://github.com/ghorn/casadi-bindings";
        url = "";
        synopsis = "mid-level bindings to CasADi";
        description = "Haskell bindings to the CasADi algorithmic differentiation and optimal control library.\nVERSION POLICY VIOLATION: version number x.y.z.w corresponds to the CasADi C++ library version x.y.z; the w referse to binding changes and may be completely breaking.\n\nThis package is a mid-level interface to the autogenerated low-level bindings `casadi-bindings-core`.\n\nThe module `casadi-bindings-core` is autogenerated\nfrom casadi's swig interface and corresponds to the casadi C++ API\n(though some functions will be missing).\n\nThe `casadi-bindings-internal` package is handwritten and provides some casadi memory management\nwrappers, C++ standard type marsahalling, and some hand-written wrapper code.\n\nFor high-level bindings, see my <https://github.com/ghorn/dynobud dynobud> project\n\nTo install this, first install casadi using instructions from <http://www.casadi.org www.casadi.org>. MAKE SURE pkg-config CAN FIND THE CASADI INSTALLATION, AS THIS IS HOW CABAL FINDS CASADI!!\n\nThen cabal install this package:\n\n>> cabal update && cabal install casadi-bindings\n\nIf you are upgrading this package and see linker errors, you may need to first manually `ghc-pkg unregister casadi-bindings-internal`.\n\nTemporary note: there is something wrong with casadi and ipopt related to http://list.coin-or.org/pipermail/ipopt/2014-April/003670.html, and https://github.com/casadi/casadi/issues/1075. Either update IPOPT or use a different linear solver than MUMPS.";
        buildType = "Simple";
      };
      components = {
        casadi-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.linear
            hsPkgs.spatial-math
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.cereal
            hsPkgs.binary
            hsPkgs.vector-binary-instances
            hsPkgs.casadi-bindings-internal
            hsPkgs.casadi-bindings-core
          ];
          libs = [ pkgs."stdc++" ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }