.class public Lcom/pantech/inputmethod/style/KeyDrawable;
.super Ljava/lang/Object;
.source "KeyDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEYBOARD_PRESETS:[I

.field private static final KEY_STATE_ACTIVE_NORMAL:[I

.field private static final KEY_STATE_ACTIVE_PRESSED:[I

.field private static final KEY_STATE_EMOJITAB_NORMAL:[I

.field private static final KEY_STATE_EMOJITAB_SELECTED:[I

.field private static final KEY_STATE_EMOJI_NORMAL:[I

.field private static final KEY_STATE_EMOJI_PRESSED:[I

.field public static final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field public static final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private static final KEY_STATE_MORE_NORMAL:[I

.field private static final KEY_STATE_MORE_PRESSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_B:[I

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_NUMBER:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_B:[I

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_PRESSED_NUMBER:[I

.field private static final KEY_STATE_STROKE_NORMAL:[I

.field private static final KEY_STATE_TOUCH_PANNEL_NORMAL:[I

.field public static final PREF_KEYBOARD_THEME_TYPE:Ljava/lang/String; = "theme_type"

.field public static final PREF_KEY_IMAGE_SELECTED:Ljava/lang/String; = "keyboard_background_image_selected"

.field public static final PREF_KEY_OPACITY_KEY_BACKGROUND:Ljava/lang/String; = "opacity_key_background"

.field public static final PREF_KEY_OPACITY_OUTLINE:Ljava/lang/String; = "opacitiy_outline"

.field public static final PREF_KEY_OPACITY_TEXT:Ljava/lang/String; = "opacity_text"

.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_COLOR_EDIT_TOGGLE:I = 0x5

.field public static final TEXT_COLOR_EMOJI_NORMAL:I = 0x7

.field public static final TEXT_COLOR_FUNCTION:I = 0x2

.field public static final TEXT_COLOR_LONG_PRESS:I = 0x6

.field public static final TEXT_COLOR_NORMAL:I = 0x1

.field public static final TEXT_COLOR_NUMBER:I = 0x3

.field public static final TEXT_COLOR_STROKE:I = 0x4

.field private static final mInstance:Lcom/pantech/inputmethod/style/KeyDrawable;

.field public static mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public static mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

.field public static mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

.field public static mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

.field public static mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

.field public static mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;


# instance fields
.field private bm:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    const-class v0, Lcom/pantech/inputmethod/style/KeyDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/pantech/inputmethod/style/KeyDrawable;

    invoke-direct {v0}, Lcom/pantech/inputmethod/style/KeyDrawable;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->mInstance:Lcom/pantech/inputmethod/style/KeyDrawable;

    .line 33
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    .line 35
    new-array v0, v4, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    .line 39
    new-array v0, v2, [I

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL:[I

    .line 41
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED:[I

    .line 45
    new-array v0, v3, [I

    const v1, 0x10100a3

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 48
    new-array v0, v4, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 52
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_MORE_NORMAL:[I

    .line 53
    new-array v0, v4, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_MORE_PRESSED:[I

    .line 57
    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_ACTIVE_NORMAL:[I

    .line 60
    new-array v0, v4, [I

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_ACTIVE_PRESSED:[I

    .line 65
    new-array v0, v3, [I

    const v1, 0x10100a4

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL_B:[I

    .line 68
    new-array v0, v4, [I

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_B:[I

    .line 73
    new-array v0, v3, [I

    const v1, 0x10100a5

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_STROKE_NORMAL:[I

    .line 76
    new-array v0, v3, [I

    const v1, 0x7f0100ad

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NUMBER:[I

    .line 79
    new-array v0, v4, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_NUMBER:[I

    .line 83
    new-array v0, v3, [I

    const v1, 0x7f0100ae

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_TOUCH_PANNEL_NORMAL:[I

    .line 87
    new-array v0, v3, [I

    const v1, 0x7f0100b0

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJITAB_NORMAL:[I

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJITAB_SELECTED:[I

    .line 93
    new-array v0, v3, [I

    const v1, 0x7f0100b1

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJI_NORMAL:[I

    .line 94
    new-array v0, v4, [I

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJI_PRESSED:[I

    .line 99
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    return-void

    .line 35
    nop

    :array_bc
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data

    .line 48
    :array_c4
    .array-data 4
        0x10100a3
        0x10100a7
    .end array-data

    .line 53
    :array_cc
    .array-data 4
        0x10100a6
        0x10100a7
    .end array-data

    .line 60
    :array_d4
    .array-data 4
        0x10100a2
        0x10100a7
    .end array-data

    .line 68
    :array_dc
    .array-data 4
        0x10100a4
        0x10100a7
    .end array-data

    .line 79
    :array_e4
    .array-data 4
        0x7f0100ad
        0x10100a7
    .end array-data

    .line 88
    :array_ec
    .array-data 4
        0x7f0100b0
        0x10100a0
    .end array-data

    .line 94
    :array_f4
    .array-data 4
        0x7f0100b1
        0x10100a7
    .end array-data

    .line 99
    :array_fc
    .array-data 4
        0x7f0e0009
        0x7f0e000a
        0x7f0e000b
        0x7f0e000c
        0x7f0e000d
        0x7f0e000e
        0x7f0e000f
        0x7f0e0010
        0x7f0e0011
        0x7f0e0012
        0x7f0e0013
        0x7f0e0014
        0x7f0e0015
        0x7f0e0016
        0x7f0e0017
        0x7f0e0018
        0x7f0e0019
        0x7f0e001a
        0x7f0e001b
        0x7f0e001c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static convertColorIntWithAlpha(Ljava/lang/String;I)I
    .registers 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "alpha"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x10

    .line 620
    if-nez p0, :cond_a

    .line 624
    const/4 v6, -0x1

    .line 655
    :goto_9
    return v6

    .line 628
    :cond_a
    mul-int/lit16 v6, p1, 0xff

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "alphaHex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2c

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    :cond_2c
    const/4 v0, -0x1

    .line 634
    .local v0, "a":I
    const/4 v4, -0x1

    .line 635
    .local v4, "r":I
    const/4 v3, -0x1

    .line 636
    .local v3, "g":I
    const/4 v2, -0x1

    .line 639
    .local v2, "b":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_78

    .line 642
    invoke-virtual {v5, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 643
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 644
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 645
    const/16 v6, 0x8

    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 647
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_9

    .line 648
    :cond_78
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v12, :cond_9e

    .line 649
    const/16 v0, 0xff

    .line 650
    invoke-virtual {v5, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 651
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 652
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 653
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto/16 :goto_9

    .line 655
    :cond_9e
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto/16 :goto_9
.end method

.method public static getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/pantech/inputmethod/style/KeyDrawable;->mInstance:Lcom/pantech/inputmethod/style/KeyDrawable;

    return-object v0
.end method

.method public static makeDrawable(Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;)Landroid/graphics/drawable/StateListDrawable;
    .registers 32
    .param p0, "numberInfo"    # Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    .param p1, "normalInfo"    # Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    .param p2, "functionInfo"    # Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    .param p3, "moreNormalInfo"    # Lcom/pantech/inputmethod/style/KeyDrawableInfo;

    .prologue
    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 502
    .local v13, "number":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 509
    .local v14, "number_pressed":Landroid/graphics/drawable/Drawable;
    const-wide/16 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 513
    .local v16, "emoji":Landroid/graphics/drawable/Drawable;
    const-wide/16 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 518
    .local v17, "emoji_pressed":Landroid/graphics/drawable/Drawable;
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 520
    .local v18, "emojiNormal":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 527
    .local v19, "emojiNormal_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 533
    .local v24, "more_normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 539
    .local v9, "more_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 544
    .local v25, "normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 550
    .local v26, "normal_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    const-string v2, "#FFFFFF"

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "#FFFFFF"

    const/16 v4, 0x46

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 555
    .local v12, "stroke":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 561
    .local v15, "edit":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 568
    .local v20, "active_normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 574
    .local v21, "active_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 580
    .local v11, "normalB_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 586
    .local v22, "function":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getPressed()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 594
    .local v23, "function_pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getGap()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getNormal()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline_thick()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getOutline()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->getCorner_radius()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 600
    .local v7, "high":Landroid/graphics/drawable/Drawable;
    move-object/from16 v6, v23

    .line 603
    .local v6, "high_pressed":Landroid/graphics/drawable/Drawable;
    move-object/from16 v10, v22

    .local v10, "normalB":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v24

    .line 605
    invoke-static/range {v0 .. v19}, Lcom/pantech/inputmethod/style/KeyDrawable;->setDrawableState(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v27

    .line 611
    .local v27, "result":Landroid/graphics/drawable/StateListDrawable;
    return-object v27
.end method

.method public static setDrawableState(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .registers 23
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "normal_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p2, "function"    # Landroid/graphics/drawable/Drawable;
    .param p3, "function_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p4, "active_normal"    # Landroid/graphics/drawable/Drawable;
    .param p5, "active_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p6, "high_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p7, "high"    # Landroid/graphics/drawable/Drawable;
    .param p8, "more_normal"    # Landroid/graphics/drawable/Drawable;
    .param p9, "more_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p10, "normalB"    # Landroid/graphics/drawable/Drawable;
    .param p11, "normalB_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p12, "stroke"    # Landroid/graphics/drawable/Drawable;
    .param p13, "number"    # Landroid/graphics/drawable/Drawable;
    .param p14, "number_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p15, "edit"    # Landroid/graphics/drawable/Drawable;
    .param p16, "emoji_tab"    # Landroid/graphics/drawable/Drawable;
    .param p17, "emoji_tab_pressed"    # Landroid/graphics/drawable/Drawable;
    .param p18, "emoji_normal"    # Landroid/graphics/drawable/Drawable;
    .param p19, "emoji_normal_pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 464
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 465
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    invoke-virtual {v1, v2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 466
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_ACTIVE_PRESSED:[I

    invoke-virtual {v1, v2, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 467
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_ACTIVE_NORMAL:[I

    invoke-virtual {v1, v2, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 468
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    invoke-virtual {v1, v2, p6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 469
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 470
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    invoke-virtual {v1, v2, p7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 471
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_B:[I

    invoke-virtual {v1, v2, p11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 472
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJITAB_SELECTED:[I

    move-object/from16 v0, p17

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 474
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJITAB_NORMAL:[I

    move-object/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 477
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJI_PRESSED:[I

    move-object/from16 v0, p19

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 478
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_EMOJI_NORMAL:[I

    move-object/from16 v0, p18

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 480
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL_B:[I

    invoke-virtual {v1, v2, p10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 481
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_STROKE_NORMAL:[I

    invoke-virtual {v1, v2, p12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 482
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED_NUMBER:[I

    move-object/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 483
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NUMBER:[I

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 484
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_TOUCH_PANNEL_NORMAL:[I

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 485
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_MORE_PRESSED:[I

    invoke-virtual {v1, v2, p9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 486
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_MORE_NORMAL:[I

    invoke-virtual {v1, v2, p8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 487
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_PRESSED:[I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 488
    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEY_STATE_NORMAL:[I

    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 489
    return-object v1
.end method


# virtual methods
.method public getKeyBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 371
    .local v6, "pref":Landroid/content/SharedPreferences;
    new-instance v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;

    invoke-direct {v5}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;-><init>()V

    .line 372
    .local v5, "numberInfo":Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    new-instance v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;

    invoke-direct {v4}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;-><init>()V

    .line 373
    .local v4, "normalInfo":Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    new-instance v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;

    invoke-direct {v2}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;-><init>()V

    .line 374
    .local v2, "functionInfo":Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    new-instance v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;

    invoke-direct {v3}, Lcom/pantech/inputmethod/style/KeyDrawableInfo;-><init>()V

    .line 376
    .local v3, "moreNormalInfo":Lcom/pantech/inputmethod/style/KeyDrawableInfo;
    const/4 v7, 0x0

    sget-object v8, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardPreset:[I

    const/4 v9, 0x3

    sget-object v10, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    const-string v11, "theme_type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget v10, v10, v11

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 380
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mNormal:I

    .line 383
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mPressed:I

    .line 386
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacitiy_outline"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline:I

    .line 390
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline_thick:D

    .line 392
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mCorner_radius:D

    .line 394
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v5, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mGap:D

    .line 397
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mNormal:I

    .line 400
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mPressed:I

    .line 403
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacitiy_outline"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline:I

    .line 407
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline_thick:D

    .line 409
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mCorner_radius:D

    .line 411
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v4, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mGap:D

    .line 414
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mNormal:I

    .line 417
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacity_key_background"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mPressed:I

    .line 420
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacitiy_outline"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline:I

    .line 424
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline_thick:D

    .line 426
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mCorner_radius:D

    .line 428
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v2, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mGap:D

    .line 431
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mNormal:I

    .line 433
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mPressed:I

    .line 435
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opacitiy_outline"

    const/16 v9, 0x64

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline:I

    .line 438
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline_thick:D

    .line 440
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mCorner_radius:D

    .line 442
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v3, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mGap:D

    .line 445
    invoke-static {v5, v4, v2, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->makeDrawable(Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;Lcom/pantech/inputmethod/style/KeyDrawableInfo;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 448
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 449
    if-nez v1, :cond_192

    .line 450
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    .line 452
    :cond_192
    return-object v1
.end method

.method public getKeyTextColor(Landroid/content/Context;I)I
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "what"    # I

    .prologue
    .line 304
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 306
    .local v8, "pref":Landroid/content/SharedPreferences;
    const/4 v11, 0x0

    sget-object v12, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardPreset:[I

    const/4 v13, 0x3

    sget-object v14, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    const-string v15, "theme_type"

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget v14, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 311
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v7

    .line 315
    .local v7, "numberColor":I
    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v6

    .line 319
    .local v6, "normalColor":I
    const/16 v11, 0xe

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v4

    .line 323
    .local v4, "functionColor":I
    const-string v11, "#000000"

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v9

    .line 325
    .local v9, "strokeColor":I
    const/16 v11, 0xf

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    .line 329
    .local v2, "editSelectColor":I
    const/16 v11, 0x10

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v5

    .line 333
    .local v5, "longPressColor":I
    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "opacity_text"

    const/16 v13, 0x64

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    .line 339
    .local v3, "emojiNormalColor":I
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_a2

    .line 340
    move v10, v6

    .line 363
    .local v10, "unPressedColor":I
    :goto_9e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    return v10

    .line 341
    .end local v10    # "unPressedColor":I
    :cond_a2
    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_a9

    .line 342
    move v10, v4

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 343
    .end local v10    # "unPressedColor":I
    :cond_a9
    const/4 v11, 0x3

    move/from16 v0, p2

    if-ne v0, v11, :cond_b0

    .line 344
    move v10, v7

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 345
    .end local v10    # "unPressedColor":I
    :cond_b0
    const/4 v11, 0x4

    move/from16 v0, p2

    if-ne v0, v11, :cond_b7

    .line 346
    move v10, v9

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 347
    .end local v10    # "unPressedColor":I
    :cond_b7
    const/4 v11, 0x5

    move/from16 v0, p2

    if-ne v0, v11, :cond_be

    .line 348
    move v10, v2

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 349
    .end local v10    # "unPressedColor":I
    :cond_be
    const/4 v11, 0x6

    move/from16 v0, p2

    if-ne v0, v11, :cond_c5

    .line 350
    move v10, v5

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 351
    .end local v10    # "unPressedColor":I
    :cond_c5
    const/4 v11, 0x7

    move/from16 v0, p2

    if-ne v0, v11, :cond_cc

    .line 352
    move v10, v3

    .restart local v10    # "unPressedColor":I
    goto :goto_9e

    .line 354
    .end local v10    # "unPressedColor":I
    :cond_cc
    move v10, v6

    .restart local v10    # "unPressedColor":I
    goto :goto_9e
.end method

.method public getKeyboardBackgroundColor(Landroid/content/Context;)I
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    .line 289
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 292
    .local v2, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardPreset:[I

    sget-object v5, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    const-string v6, "theme_type"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p1, v3, v4, v8, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 296
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/KeyDrawable;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return v1
.end method

.method public loadDrawableFromFile(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 138
    .local v9, "pref":Landroid/content/SharedPreferences;
    const-string v13, "keyboard_background_image_selected"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 140
    .local v7, "isKeybaordImageset":Z
    new-instance v5, Ljava/io/File;

    sget-object v13, Lcom/pantech/inputmethod/style/StyleContants;->PATH_KEYBOARD_IMAGE_FILE:Ljava/lang/String;

    const-string v14, "kbdimage.png"

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v5, "file":Ljava/io/File;
    const/4 v13, 0x1

    if-ne v7, v13, :cond_cd

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_cd

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_38

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 150
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 151
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "keyboard_background_image_selected"

    const/4 v14, 0x0

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_37
    :goto_37
    return-void

    .line 157
    :cond_38
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 159
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 161
    .local v6, "height":I
    const/16 v2, 0x210

    .line 162
    .local v2, "HEIGHT_OF_LAND":I
    const/16 v3, 0x780

    .line 164
    .local v3, "WIDTH_OF_LAND":I
    mul-int/lit16 v13, v12, 0x210

    div-int/lit16 v13, v13, 0x780

    sub-int v13, v6, v13

    div-int/lit8 v11, v13, 0x2

    .line 165
    .local v11, "startHeight":I
    mul-int/lit8 v13, v11, 0x2

    sub-int v8, v6, v13

    .line 167
    .local v8, "landHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 168
    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_37

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15, v12, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    .line 170
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

    .line 172
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

    .line 174
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-static {v13, v14, v11, v12, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    .line 178
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 179
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v13, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v13, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_37

    .line 183
    .end local v2    # "HEIGHT_OF_LAND":I
    .end local v3    # "WIDTH_OF_LAND":I
    .end local v6    # "height":I
    .end local v8    # "landHeight":I
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "startHeight":I
    .end local v12    # "width":I
    :cond_cd
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/inputmethod/style/KeyDrawable;->releaseMemory(Landroid/content/Context;)V

    goto/16 :goto_37
.end method

.method public releaseMemory(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "keyboard_background_image_selected"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 194
    .local v2, "isKeybaordImageset":Z
    if-nez v2, :cond_7f

    .line 195
    iget-object v4, p0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_19

    .line 196
    iget-object v4, p0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    iput-object v6, p0, Lcom/pantech/inputmethod/style/KeyDrawable;->bm:Landroid/graphics/Bitmap;

    .line 200
    :cond_19
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a

    .line 201
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 202
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2a
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3b

    .line 208
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 209
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

    .line 214
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3b
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4c

    .line 215
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

    .line 221
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4c
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5d

    .line 222
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 223
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;

    .line 228
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5d
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6e

    .line 229
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 230
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 235
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6e
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7f

    .line 236
    sget-object v1, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 237
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    sput-object v6, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

    .line 243
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_7f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 244
    return-void
.end method

.method public setAlphaForIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 660
    if-nez p2, :cond_3

    .line 666
    :goto_2
    return-void

    .line 664
    :cond_3
    mul-int/lit16 v0, p3, 0xff

    div-int/lit8 p3, v0, 0x64

    .line 665
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2
.end method

.method public setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/view/View;
    .param p3, "isFloating"    # Z
    .param p4, "splitType"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 248
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 250
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "keyboard_background_image_selected"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 252
    .local v1, "isKeybaordImageset":Z
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/pantech/inputmethod/style/StyleContants;->PATH_KEYBOARD_IMAGE_FILE:Ljava/lang/String;

    const-string v5, "kbdimage.png"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "file":Ljava/io/File;
    if-ne v1, v6, :cond_5a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5a

    if-nez p5, :cond_5a

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 258
    .local v2, "orientation":I
    if-ne v2, v6, :cond_3a

    .line 259
    if-ne p3, v6, :cond_34

    .line 260
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableFloating:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    .end local v2    # "orientation":I
    :cond_33
    :goto_33
    return-void

    .line 263
    .restart local v2    # "orientation":I
    :cond_34
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    .line 265
    :cond_3a
    if-ne v2, v7, :cond_33

    .line 267
    if-eqz p3, :cond_54

    .line 268
    if-ne p4, v6, :cond_46

    .line 269
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    .line 271
    :cond_46
    if-ne p4, v7, :cond_4e

    .line 272
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloatingSplitRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    .line 275
    :cond_4e
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLandFloating:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    .line 279
    :cond_54
    sget-object v4, Lcom/pantech/inputmethod/style/KeyDrawable;->mKeyboardBackgroundDrawableLand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    .line 283
    .end local v2    # "orientation":I
    :cond_5a
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyboardBackgroundColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_33
.end method
