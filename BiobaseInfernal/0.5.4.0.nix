{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "BiobaseInfernal";
          version = "0.5.4.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2011";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Infernal data structures and tools";
        description = "Provides import and export facilities for Infernal/Rfam data\nformats. We include Stockholm, CM, verbose Infernal results,\nand tabulated Infernal results. Some small tools are included.\n\nThe VerboseHit format is slightly extended to allow simple\nannotations. This extension should be backward-compatible with\nstandard-compliant parsers.\n\n\n\nWith the BioHaskell library split, this package is officially\nback! And the package is not feature-complete yet, take the\nabove as a will-include-soon list.\n\nThe taxonomy importer makes use of Iteratee.zip, hence the\nswitch from Enumerator. (See the Biohaskell wiki pages for\ndiscussion on Iteratee/Enumerator).";
        buildType = "Simple";
      };
      components = {
        BiobaseInfernal = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.attoparsec-iteratee
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either-unwrap
            hsPkgs.iteratee
            hsPkgs.transformers
            hsPkgs.tuple
          ];
        };
      };
    }