{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "type-natural";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Hiromi ISHII 2013";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/type-natural";
        url = "";
        synopsis = "Type-level natural and proofs of their properties.";
        description = "Type-level natural numbers and proofs of their properties.";
        buildType = "Simple";
      };
      components = {
        type-natural = {
          depends  = [
            hsPkgs.base
            hsPkgs.equational-reasoning
            hsPkgs.monomorphic
            hsPkgs.template-haskell
            hsPkgs.constraints
          ] ++ [ hsPkgs.singletons ];
        };
      };
    }