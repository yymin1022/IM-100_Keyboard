.class Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyDrawParams"
.end annotation


# static fields
.field private static final UNDEFINED_RATIO:F = -1.0f


# instance fields
.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public final mKeyBackgroundSuggestions:Landroid/graphics/drawable/Drawable;

.field public mKeyEditHintLetterPadding:I

.field public mKeyEditHintLetterSize:I

.field public mKeyFloatingLabelSize:F

.field public mKeyFloatingLongLabelSize:F

.field public mKeyFloatingSwitchLabelSize:F

.field public final mKeyHintLabelColor:Landroid/content/res/ColorStateList;

.field public mKeyHintLabelSize:I

.field public mKeyHintLetterColor:I

.field public final mKeyHintLetterPadding:F

.field public mKeyHintLetterSize:I

.field public final mKeyLabelHorizontalPadding:F

.field private final mKeyLabelRatio:F

.field public mKeyLabelSize:I

.field private final mKeyLargeLetterRatio:F

.field public mKeyLargeLetterSize:I

.field private final mKeyLetterRatio:F

.field public mKeyLetterSize:I

.field public final mKeySuggestionsTextColor:Landroid/content/res/ColorStateList;

.field public mKeyTextColor:I

.field public mKeyTextColor2:I

.field public mKeyTextColor3:I

.field public mKeyTextColor4:I

.field public mKeyTextColor5:I

.field public mKeyTextColor6:I

.field public mKeyTextInactivatedColor:I

.field public final mKeyTextStyle:Landroid/graphics/Typeface;

.field public final mKeyUppercaseLetterActivatedColor:I

.field public final mKeyUppercaseLetterInactivatedColor:I

.field public final mKeyUppercaseLetterPadding:F

.field private final mKeyUppercaseLetterRatio:F

.field public mKeyUppercaseLetterSize:I

.field public final mPadding:Landroid/graphics/Rect;

.field public final mShadowColor:I

.field public final mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundSuggestions:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 240
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    .line 241
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 245
    :goto_24
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 246
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    .line 247
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 251
    :goto_32
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    .line 252
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    .line 253
    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    .line 255
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    .line 257
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingLabelSize:F

    .line 258
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingSwitchLabelSize:F

    .line 259
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingLongLabelSize:F

    .line 261
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    .line 263
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    .line 265
    const/16 v1, 0xf

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    .line 267
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    .line 268
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor2:I

    .line 269
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor3:I

    .line 270
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor4:I

    .line 271
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor5:I

    .line 272
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor6:I

    .line 273
    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeySuggestionsTextColor:Landroid/content/res/ColorStateList;

    .line 274
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    .line 275
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    .line 276
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:Landroid/content/res/ColorStateList;

    .line 277
    const/16 v1, 0x19

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    .line 279
    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    .line 282
    const/16 v1, 0x2a

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 284
    .local v0, "textStyle":I
    const/16 v1, 0x2a

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 287
    const/16 v1, 0x27

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    .line 288
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    .line 292
    return-void

    .line 243
    .end local v0    # "textStyle":I
    :cond_d3
    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    goto/16 :goto_24

    .line 249
    :cond_dc
    const/16 v1, 0x9

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$100(Landroid/content/res/TypedArray;I)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    goto/16 :goto_32
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .prologue
    .line 190
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    return v0
.end method


# virtual methods
.method public updateKeyHeight(I)V
    .registers 5
    .param p1, "keyHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 316
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e

    .line 317
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 318
    :cond_e
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1b

    .line 319
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 320
    :cond_1b
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    .line 321
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    .line 322
    return-void
.end method
