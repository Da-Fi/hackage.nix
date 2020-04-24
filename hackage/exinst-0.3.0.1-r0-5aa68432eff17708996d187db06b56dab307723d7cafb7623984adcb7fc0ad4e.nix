{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      aeson = true;
      bytes = true;
      deepseq = true;
      hashable = true;
      quickcheck = true;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "exinst"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2017";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Recover instances for your existential types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optionals (flags.bytes) [
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          ]) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exinst" or ((hsPkgs.pkgs-errors).buildDepError "exinst"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }