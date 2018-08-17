.class public Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeyPreviewDrawParams"
.end annotation


# static fields
.field private static final PREVIEW_ALPHA:I = 0xf0


# instance fields
.field public final mCoordinates:[I

.field private final mKeyLetterRatio:F

.field public mKeyLetterSize:I

.field public final mKeyTextStyle:Landroid/graphics/Typeface;

.field public final mPreviewBackground:Landroid/graphics/drawable/Drawable;

.field public final mPreviewBackgroundHeight:I

.field public final mPreviewBackgroundWidth:I

.field public final mPreviewHeight:I

.field public final mPreviewOffset:I

.field public final mPreviewTextColor:I

.field public mPreviewTextSize:I

.field public final mPreviewTopPadding:I

.field public final mPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "keyDrawParams"    # Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .prologue
    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    .line 346
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    .line 351
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundWidth:I

    .line 353
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundHeight:I

    .line 355
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewOffset:I

    .line 357
    const/16 v0, 0x21

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewHeight:I

    .line 359
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewWidth:I

    .line 361
    const/16 v0, 0x23

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTopPadding:I

    .line 363
    const/16 v0, 0x24

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    .line 364
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextColor:I

    .line 366
    invoke-static {p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->access$200(Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;)F

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterRatio:F

    .line 367
    iget-object v0, p2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 368
    return-void
.end method

.method private static setAlpha(Landroid/graphics/drawable/Drawable;I)V
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "alpha"    # I

    .prologue
    .line 377
    if-nez p0, :cond_3

    .line 380
    :goto_2
    return-void

    .line 379
    :cond_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2
.end method


# virtual methods
.method public updateKeyHeight(I)V
    .registers 4
    .param p1, "keyHeight"    # I

    .prologue
    .line 371
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    .line 372
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterSize:I

    .line 374
    :cond_e
    return-void
.end method
