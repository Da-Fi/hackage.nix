{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-core";
          version = "0.36.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Pure Haskell PostScript and SVG generation.";
        description = "\nWumpus is a low-level library for generating static 2D vector\npictures, its salient feature is portability due to no FFI\ndependencies. It can generate PostScript (EPS) files and SVG\nfiles. The generated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nWumpus makes pictures from /paths/ and text /labels/. Paths\nthemselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to Pictures. Unlike PostScript there is no\nnotion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow-level. There is a supplemantary package @wumpus-basic@\navailable that helps create certain types of diagram, but it is\nexperimental - functionality is added and dropped between\nreleases, it has no stable API.\n\nSome of the design decisions made for @wumpus-core@ are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation, which is a\npriority.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert EPS files generated by Wumpus to many other formats\n(bitmaps).\n\nVERSION 0.36.0 UPGRADE NOTES\n\nThere are two major changes between 0.35.0 and 0.36.0.\n\n@PrimElement@ has been removed and the grouping constructor it\nprovided has been moved into the @Primitive@ type. As both\ntypes are opaque, definitions in client code will work without\nchange, /but all/ type signatures referencing @PrimElement@ will\nneed to replace @PrimElement@ with @Primitive@.\n\nRotations and scalings on Primitives have changed again.\nPrimitives are now instances of the affine classes so support -\n@rotate@, @rotateAbout@, @scale@, @translate@. Primitives are\nnow considered to be in the implicit affine frame with origin at\n(0,0). Previously rotatation on Primitives (via the function\n@rotatePrim@) was really a special case to allow slanted text,\nthe rotation was about the text\\'s baseline origin and not the\naffine frame. As rotation now works differently there is a\nspecial constructor for slanted text @rtextlabel@.\n\nChangelog:\n\n0.35.0 to 0.36.0:\n\n* API / behaviour change - rotation on primitives changed. New\nfunctions have been added to create rotated text labels and\nellipses (@rtextlabel@, @rstrokeEllipse@, etc.), and\nPrimitives have been made instances of the Affine classes\nexcept for the general matrix Transform class. The old\nfunctions for transforming Primitives (@rotatePrim@,\n@scalePrim@, etc.) have been removed. The demos (Rotated.hs,\nScaled.hs, Translated.hs) have been removed as they pertain\nto the old behaviour, there are new demos highlighting the\nnew behaviour (TransformEllipse.hs, etc.).\n\n* Major change - removed the PrimElement type. The (opaque)\nPrimitive type has been changed to incorporate a grouping\nconstructor equivalent to PrimElement\\'s @XLinkGroup@\ncontructor. The change has made the implementation of SVG\nhyperlinks more efficient, but has forced various type\nsignatures to change in @Core.Picture@. Client code will\nalso have to change type signatures - @PrimElement@ becomes\n@Primitive@.\n\n* @Core.PtSize@ - the class @FromPtSize@ has been given a @Num@\nsuperclass constraint. This can shorten type signatures of\nfunctions that use @fromPtSize@.\n\n* Corrected a bug where textlabels would generate an invalid\nbounding box and cause a runtime error when supplied with an\nempty string. Now there is no runtime error - and /no-ops/\nare generated in the output.\n\n* Internal changes - moved @PrimCTM@ from @Core.PictureInternal@\ninto separate module. Moved /utility/ modules into their own\ndirectory @Utils@. Move /text/ modules into their own\ndirectory @Text@.\n\n* Removed dependency on @algebra@ for @Semigroup@. The\nequivalent @append@ operation on @BoundingBox@ is\n@boundaryUnion@.\n\n* Renamed the @Core.GraphicsState@ to @Core.GraphicProps@.\nMoved the property datatypes from @Core.PictureInternal@ into\n@Core.GraphicProps@ (StrokeProps, LabelProps, etc.).\n\n* Moved @wumpus_default_font@ from @Core.Picture@ into\n@Core.Graphic.Props@.\n\n* Haddock docs improved.\n\n";
        buildType = "Simple";
      };
      components = {
        wumpus-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.vector-space
          ];
        };
      };
    }