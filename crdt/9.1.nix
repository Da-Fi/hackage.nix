{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cm = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crdt";
          version = "9.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Yuriy Syrovetskiy, Nikolay Loginov;\n2018 Yuriy Syrovetskiy";
        maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
        author = "";
        homepage = "https://github.com/cblp/crdt#readme";
        url = "";
        synopsis = "Conflict-free replicated data types";
        description = "Definitions of CmRDT and CvRDT. Implementations for some classic CRDTs.";
        buildType = "Simple";
      };
      components = {
        crdt = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.Diff
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.network-info
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.vector
          ] ++ optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
      };
    }