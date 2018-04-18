{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HaskRel";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "Thor Michael Støre 2015";
        maintainer = "thormichael@gmail.com";
        author = "Thor Michael Støre";
        homepage = "";
        url = "";
        synopsis = "HaskRel, Haskell as a DBMS with support for the relational algebra";
        description = "HaskRel aims to define those elements of the relational theory of database management that Haskell can accommodate, thus enabling Haskell (or more precisely GHC) in its own right as a DBMS with first-class support for those parts of the relational model. It does not qualify as a proper RDBMS since it as-is only defines the relational algebra, relational variables and relational assignment. It does not define the relational calculus, views, constraints and transactions (beyond the fundamental requirement that the tuples of relations are to be unique), certain operators like relation valued aggregate operators, nor a few minor or even deprecated operators such as DIVIDE. The implemented parts are decently complete even if there are major implementation shortcomings that prevent this from being practically usable as an actual DBMS.\n\nI refer to it as \"/first-class/\" since the types of the relational model are first-class types to Haskell, and the Haskell type system is able to induce the type resulting of relational expressions (for instance that a natural join of two relations results in a relation with a heading that is the setwise union of the headings of the original relations).\n\n== Model\n\nHaskRel is based on the relational model of database management, as defined by Chris Date and Hugh Darwen today. Is is not based on SQL in any way. Tutorial D has been the reference when implmementing the functions of the relational algebra, although HaskRel does not satisfy the criteria of D. SQL and Relational Theory, 2nd ed. [1] has been the principal guide in this endeavor (I have plenty of SQL in my background so a book on SQL and the relational model has been a good introduction to the latter). See also The Third Manifesto [2], and the additional material on http://www.thethirdmanifesto.com/ (this might be better to start with for those mathematically inclined but not steeped in SQL).\n\nIn addition to naming certain other aspects of Tutorial D has been adopted, such as argument order. Such aspects may be changed in the future if HaskRel is found to be solid enough to stand on its own, particularly if there are ways to express this that are more idiomatic vis-a-vis Haskell (Tutorial D is, after all, not a definition of the relational model, but vehicle for understanding it).\n\n== Implementation\n\nHaskRel is developed and tested with GHC 7.10.2. It builds upon HList (at least version 0.4.0.0). Separately from this library there is also an optional variant that builds on TIPs instead of records, which additionally relies on Lens (tested with version 4.12.3).\n\n= Examples\n\nThe examples in this documentation are based on \"the old warhorse\" that is the suppliers-parts database (see [1] for more). This gives a body of relational expressions with known results to base examples upon. See also examples\\/SuppliersPartsExamples.hs (not visible from this documentation) for Haskell versions of a selection of the Tutorial D expressions given as examples in chapters 6 and 7 of [1]. These can be run by starting examples\\/suppliersPartsDB.sh and then running @snrt2ndExamples@. While most Tutorial D expressions translate fairly verbatim to Haskell there are a few where one must be a bit more explicit. While most Tutorial D expressions translate fairly verbatim to Haskell there are a few where Haskell is stricter than Tutorial D and one must be a bit more explicit.\n\n\$ is always used after `p`\\/`rPrint` or `pt`\\/`rPrintTyped` in the examples to keep them uniform (and so it kinda looks like a prompt), even when not required. The short forms `p` and `pt` are used whenever there isn't a conflict with other identifiers, whereas for the SuppliersPartsExample, which has a relvar \"@p@\", `rPrint` is used instead of `p` for presentation of relational objects without type information.\n\n= Terminology\n\nSince this builds on both Haskell and relational theory this documentation uses terms as they have been established in material related to either. Several terms of Haskell and HList have been redefined in terms of relational theory in this library, mostly to illustrate how terms and concepts have been mapped from the latter to the former. (I'm trying to keep this open to change later if it turns out to be an unhelpful crutch.)\n\nThe following table gives a quick overview of either terms or concepts as found in Haskell, the relational model (as presented in [1]), HaskRel and SQL, and how they are mapped from the second to the first:\n\n@\n┌───────────────────────────┬────────────────────┬────────────┬────────────────────────────────────────────────┐\n│ haskell                   │ relModel           │ haskRel    │ sql                                            │\n╞═══════════════════════════╪════════════════════╪════════════╪════════════════════════════════════════════════╡\n│ <https://hackage.haskell.org/package/tagged/docs/Data-Tagged.html Data.Tagged.Tagged>        │ attribute          │ Attr       │ field, column                                  │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Data.HList.Record.Record>  │ tuple              │ RTuple     │ row                                            │\n│ ( <https://hackage.haskell.org/package/containers/docs/Data-Set.html Set> (<https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Record> a) )        │ relation           │ Relation a │ table                                          │\n│ <https://hackage.haskell.org/package/filepath/docs/System-FilePath.html FilePath> (<https://hackage.haskell.org/package/containers/docs/Data-Set.html Set> (<https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html Record> a)) │ relvar             │ Relvar a   │ table                                          │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-FakePrelude.html#t:Label Data.HList.Record.Label>   │ attribute name     │ Label      │ field name, column name                        │\n│ <https://hackage.haskell.org/package/HList/docs/Data-HList-Record.html#t:Labels Data.HList.Record.Labels>  │ attribute name set │ Labels     │ list of field/column names                     │\n│ function, operator        │ operator           │ function   │ operator, function, procedure, routine, method │\n└───────────────────────────┴────────────────────┴────────────┴────────────────────────────────────────────────┘\n@\n\nFound in \"example\\/Terminology.hs\". Note that this is just an overview, study of [1] or [2], Haskell itself, HList and HaskRel is required to see how terms and concepts correlate.\n\nThe term \\\"RTuple\\\", or \"r-tuple\", is chosen to simultaneously distinguish the concept from Haskell tuples while relating it to tuples of the relational model. For the type of either \"Record a\" or \"Set ( Record a )\" in Haskell the term \"heading\" is used in relational theory, and \"row type\" or \"composite type\" in SQL. In relational theory the term \"scalar\" is used to refer to data types that are neither tuples nor relations, which corresponds to everything but \"Record a\" or \"Set ( Record a )\" in Haskell. Note also that HaskRel /does/ use the term \"table\", but then only in the sense of \"presentation of a relation value\" (see above).\n\n== The HaskRel library\n\nNot all modules of this library are relevant to gain an understanding of how it functions, the next part to go to at this point is \"Database.HaskRel.RDBMS\", and the modules it reexports.\n\n[1] <http://shop.oreilly.com/product/0636920022879.do SQL and Relational Theory, 2nd ed. (2011), C.J. Date>\n[2] <http://www.dcs.warwick.ac.uk/~hugh/TTM/TTM-2013-02-07.pdf The Third Manifesto, C. J. Date and Hugh Darwen, February 7th, 2013>";
        buildType = "Simple";
      };
      components = {
        HaskRel = {
          depends  = [
            hsPkgs.base
            hsPkgs.HList
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.tagged
            hsPkgs.directory
            hsPkgs.ghc-prim
          ];
        };
      };
    }