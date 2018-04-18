{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "linearEqSolver";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2012-2013";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://github.com/LeventErkok/linearEqSolver";
        url = "";
        synopsis = "Use SMT solvers to solve linear systems over integers and rationals";
        description = "Solve linear systems of equations over integers and rationals, using an SMT solver.\n\nCurrently, the following SMT solvers are supported:\n\n* Z3 from Microsoft (<http://z3.codeplex.com/>).\n\n* CVC4 from New York University and the University of Iowa (<http://cvc4.cs.nyu.edu>)\nlinearEqSolver is hosted at GitHub: <http://github.com/LeventErkok/linearEqSolver>. Comments,\nbug reports, and patches are always welcome.\n\n\nRelease notes can be seen at: <http://github.com/LeventErkok/linearEqSolver/blob/master/RELEASENOTES>.";
        buildType = "Simple";
      };
      components = {
        linearEqSolver = {
          depends  = [
            hsPkgs.base
            hsPkgs.sbv
          ];
        };
      };
    }