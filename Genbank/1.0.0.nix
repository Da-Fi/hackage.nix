{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Genbank";
          version = "1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "egg@tbi.univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Libary for processing the NCBI genbank format";
        description = "Haskell cabal Genbank libary contains tools, parser and datastructures for the NCBI (National Center for Biotechnology Information) Genbank format.\n\nFor more information on genbank refer to: <http://www.ncbi.nlm.nih.gov/genbank/>\n\nFor a sample genbank record see: <http://www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html>\n\n###GenbankData - Datastructures for Genbank format\n\nContains Haskell datastructures for Genbank format and for contained features, subfeatures\n\n###GenbankParser - Parse Genbank format\n\nContains Haskell functions to parse Genbank format from files or internal Strings.\n\n###GenbankTools - Tools for processing Genbank\n\nContains Haskell functions to extract nucleotide sequences for features";
        buildType = "Simple";
      };
      components = {
        Genbank = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.split
            hsPkgs.bytestring
            hsPkgs.biocore
            hsPkgs.biofasta
          ];
        };
      };
    }