.class final Lcom/pantech/inputmethod/style/DrawableFactory$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "DrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gradientEndColor:I

.field final synthetic val$gradientStartColor:I

.field final synthetic val$i:I

.field final synthetic val$j:I

.field final synthetic val$strokeColor:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    .prologue
    .line 24
    iput p1, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$gradientStartColor:I

    iput p2, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$gradientEndColor:I

    iput p3, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$i:I

    iput p4, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$strokeColor:I

    iput p5, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$j:I

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "paramAnonymousCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paramAnonymousPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 27
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 28
    .local v2, "localOrientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 29
    .local v0, "arrayOfInt":[I
    iget v3, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$gradientStartColor:I

    aput v3, v0, v5

    .line 30
    const/4 v3, 0x1

    iget v4, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$gradientEndColor:I

    aput v4, v0, v3

    .line 31
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 33
    .local v1, "localGradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget v3, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$i:I

    iget v4, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$strokeColor:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 34
    iget v3, p0, Lcom/pantech/inputmethod/style/DrawableFactory$1;->val$j:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 35
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/DrawableFactory$1;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/DrawableFactory$1;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 37
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    return-void
.end method
