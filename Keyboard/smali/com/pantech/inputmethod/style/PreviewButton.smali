.class public Lcom/pantech/inputmethod/style/PreviewButton;
.super Landroid/widget/Button;
.source "PreviewButton.java"


# instance fields
.field private mAlpha:I

.field private mHIntIcon:Landroid/graphics/drawable/Drawable;

.field private mHintColor:I

.field private mHintText:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/style/PreviewButton;->init(Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/PreviewButton;->setClickable(Z)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/PreviewButton;->setEnabled(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/PreviewButton;->setFocusable(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/PreviewButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardPreView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "hintText":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 47
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintText(Ljava/lang/String;)V

    .line 49
    :cond_14
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    .local v1, "hintIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1e

    .line 51
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_1e
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_28

    .line 56
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 96
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 98
    .local v0, "height":I
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 99
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x28

    int-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    iget-object v7, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    :cond_23
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5b

    .line 104
    const/4 v2, 0x1

    .line 105
    .local v2, "x":I
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v0, v4

    add-int/lit8 v3, v4, 0x1

    .line 106
    .local v3, "y":I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_5b
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9c

    .line 114
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 115
    .restart local v2    # "x":I
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v3, v4, 0x2

    .line 116
    .restart local v3    # "y":I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 119
    iget-object v4, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_9c
    return-void
.end method

.method public setHintIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "hintIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v4, 0x32

    .line 76
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "hintIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/PreviewButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v4, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 79
    .local v1, "resizeHintIcon":Landroid/graphics/drawable/Drawable;
    iput-object v1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHIntIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public setHintLongPressTextColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintColor:I

    .line 88
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .registers 2
    .param p1, "hintText"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mHintText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method public setIconAlpha(I)V
    .registers 4
    .param p1, "alpha"    # I

    .prologue
    .line 67
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mAlpha:I

    .line 68
    iget-object v0, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/inputmethod/style/PreviewButton;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method
