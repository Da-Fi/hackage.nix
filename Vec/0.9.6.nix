{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "Vec";
          version = "0.9.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Scott E. Dillard <sedillard@gmail.com>";
        author = "Scott E. Dillard";
        homepage = "http://graphics.cs.ucdavis.edu/~sdillard/Vec";
        url = "";
        synopsis = "Fixed-length lists and low-dimensional linear algebra.";
        description = "Vectors are represented by lists with type-encoded lengths. The constructor\nis @:.@, which acts like a cons both at the value and type levels, with @()@\ntaking the place of nil. So @x:.y:.z:.()@ is a 3d vector. The library\nprovides a set of common list-like functions (map, fold, etc) for working\nwith vectors. Built up from these functions are a small but useful set of\nlinear algebra operations: matrix multiplication, determinants, solving\nlinear systems, inverting matrices. Efficient code is generated using\nStorable and unboxed array instances or an optional packed representation.";
        buildType = "Simple";
      };
      components = {
        Vec = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.array
            hsPkgs.ghc-prim
          ];
        };
      };
    }