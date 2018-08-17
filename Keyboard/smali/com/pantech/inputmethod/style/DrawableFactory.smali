.class public Lcom/pantech/inputmethod/style/DrawableFactory;
.super Ljava/lang/Object;
.source "DrawableFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;
    .registers 25
    .param p0, "padding"    # D
    .param p2, "gradientStartColor"    # I
    .param p3, "gradientEndColor"    # I
    .param p4, "strokeWidth"    # D
    .param p6, "strokeColor"    # I
    .param p7, "cornersRadius"    # D

    .prologue
    .line 19
    move-wide/from16 v0, p4

    double-to-int v5, v0

    .line 20
    .local v5, "i":I
    move-wide/from16 v0, p7

    double-to-int v7, v0

    .line 21
    .local v7, "j":I
    move-wide/from16 v0, p0

    double-to-int v10, v0

    .line 24
    .local v10, "k":I
    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Lcom/pantech/inputmethod/style/DrawableFactory$1;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/pantech/inputmethod/style/DrawableFactory$1;-><init>(IIIII)V

    invoke-direct {v14, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 41
    .local v14, "localShapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 43
    .local v8, "localLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    move v11, v10

    move v12, v10

    move v13, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 44
    return-object v8
.end method
