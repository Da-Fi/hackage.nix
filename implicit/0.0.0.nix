{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "implicit";
          version = "0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Christopher Olah <chris@colah.ca>";
        author = "Christopher Olah";
        homepage = "https://github.com/colah/ImplicitCAD";
        url = "";
        synopsis = "Math-inspired programmatic 2&3D CAD: CSG, bevels, and shells; gcode export..";
        description = "A math-inspired programmatic CAD library in haskell.\nBuild objects with constructive solid geometry, bevels,\nshells and more in 2D & 3D. Then export to SVGs, STLs,\nor produce gcode directly!";
        buildType = "Simple";
      };
      components = {
        implicit = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.hashmap
            hsPkgs.parallel
            hsPkgs.containers
          ];
        };
      };
    }