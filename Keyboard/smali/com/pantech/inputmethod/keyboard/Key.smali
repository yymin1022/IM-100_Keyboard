.class public Lcom/pantech/inputmethod/keyboard/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/Key$Spacer;
    }
.end annotation


# static fields
.field public static final BACKGROUND_TYPE_ACTION:I = 0x2

.field public static final BACKGROUND_TYPE_EMOJI_NORMAL:I = 0xa

.field public static final BACKGROUND_TYPE_EMOJI_TAB:I = 0x9

.field public static final BACKGROUND_TYPE_FUNCTIONAL:I = 0x1

.field public static final BACKGROUND_TYPE_MORE:I = 0x4

.field public static final BACKGROUND_TYPE_NORMAL:I = 0x0

.field public static final BACKGROUND_TYPE_NORMAL_B:I = 0x5

.field public static final BACKGROUND_TYPE_NUMBER:I = 0x7

.field public static final BACKGROUND_TYPE_STICKY:I = 0x3

.field public static final BACKGROUND_TYPE_STROKE:I = 0x6

.field public static final BACKGROUND_TYPE_TOUCH_PANNEL:I = 0x8

.field private static final KEY_STATE_ACTIVE_NORMAL:[I

.field private static final KEY_STATE_ACTIVE_PRESSED:[I

.field private static final KEY_STATE_EMOJI_NORMAL:[I

.field private static final KEY_STATE_EMOJI_NORMAL_PRESSED:[I

.field private static final KEY_STATE_EMOJI_TAB:[I

.field private static final KEY_STATE_EMOJI_TAB_SELECTED:[I

.field private static final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private static final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private static final KEY_STATE_MORE_NORMAL:[I

.field private static final KEY_STATE_MORE_PRESSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_B:[I

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_NUMBER:[I

.field private static final KEY_STATE_NUMBER_PRESSED:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_B:[I

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

.field private static final KEY_STATE_STROKE_NORMAL:[I

.field private static final KEY_STATE_TOUCH_PANNEL_NORMAL:[I

.field private static final LABEL_OPTION_ALIGN_LEFT:I = 0x1

.field private static final LABEL_OPTION_ALIGN_LEFT_OF_CENTER:I = 0x8

.field private static final LABEL_OPTION_ALIGN_RIGHT:I = 0x2

.field private static final LABEL_OPTION_AUTO_X_SCALE:I = 0x4000

.field private static final LABEL_OPTION_FOLLOW_KEY_HINT_LABEL_RATIO:I = 0x100

.field private static final LABEL_OPTION_FOLLOW_KEY_LETTER_RATIO:I = 0x80

.field private static final LABEL_OPTION_FONT_FUNCTION:I = 0x8000

.field private static final LABEL_OPTION_FONT_MONO_SPACE:I = 0x40

.field private static final LABEL_OPTION_FONT_NORMAL:I = 0x20

.field private static final LABEL_OPTION_HAS_HINT_LABEL:I = 0x800

.field private static final LABEL_OPTION_HAS_POPUP_HINT:I = 0x200

.field private static final LABEL_OPTION_HAS_UPPERCASE_LETTER:I = 0x400

.field private static final LABEL_OPTION_LARGE_LETTER:I = 0x10

.field private static final LABEL_OPTION_WITH_ICON_LEFT:I = 0x1000

.field private static final LABEL_OPTION_WITH_ICON_RIGHT:I = 0x2000

.field private static final sRtlParenthesisMap:Landroid/util/SparseIntArray;


# instance fields
.field public mBackgroundType:I

.field public mCode:I

.field private mEnabled:Z

.field public final mHeight:I

.field private mHighlightOn:Z

.field private mHintIcon:Landroid/graphics/drawable/Drawable;

.field public final mHintLabel:Ljava/lang/CharSequence;

.field public final mHitBox:Landroid/graphics/Rect;

.field public final mHorizontalGap:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyIconId:I

.field public mLabel:Ljava/lang/CharSequence;

.field private final mLabelOption:I

.field public mLabelShifted:Ljava/lang/CharSequence;

.field public final mMaxMoreKeysColumn:I

.field public final mMoreKeys:[Ljava/lang/CharSequence;

.field private mNeedsSpecialPopupHint:Z

.field public mOutputText:Ljava/lang/CharSequence;

.field private mPressed:Z

.field private mPreviewIcon:Landroid/graphics/drawable/Drawable;

.field public final mRepeatable:Z

.field public mStyleName:Ljava/lang/String;

.field public final mVerticalGap:I

.field public final mVisualInsetsLeft:I

.field public final mVisualInsetsRight:I

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->sRtlParenthesisMap:Landroid/util/SparseIntArray;

    .line 155
    const/16 v0, 0x28

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 156
    const/16 v0, 0x5b

    const/16 v1, 0x5d

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 157
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 158
    const/16 v0, 0x3c

    const/16 v1, 0x3e

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 161
    const/16 v0, 0xab

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 164
    const/16 v0, 0x2039

    const/16 v1, 0x203a

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 167
    const/16 v0, 0x2264

    const/16 v1, 0x2265

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 620
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    .line 624
    new-array v0, v4, [I

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    .line 630
    new-array v0, v2, [I

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    .line 633
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    .line 639
    new-array v0, v3, [I

    const v1, 0x10100a3

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 644
    new-array v0, v4, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 650
    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    .line 655
    new-array v0, v4, [I

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    .line 661
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_MORE_NORMAL:[I

    .line 666
    new-array v0, v4, [I

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_MORE_PRESSED:[I

    .line 673
    new-array v0, v3, [I

    const v1, 0x10100a4

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_B:[I

    .line 678
    new-array v0, v4, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_B:[I

    .line 684
    new-array v0, v3, [I

    const v1, 0x10100a5

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_STROKE_NORMAL:[I

    .line 689
    new-array v0, v3, [I

    const v1, 0x7f0100ad

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NUMBER:[I

    .line 694
    new-array v0, v4, [I

    fill-array-data v0, :array_104

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NUMBER_PRESSED:[I

    .line 700
    new-array v0, v3, [I

    const v1, 0x7f0100ae

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_TOUCH_PANNEL_NORMAL:[I

    .line 706
    new-array v0, v3, [I

    const v1, 0x7f0100b0

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_TAB:[I

    .line 710
    new-array v0, v4, [I

    fill-array-data v0, :array_10c

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_TAB_SELECTED:[I

    .line 717
    new-array v0, v3, [I

    const v1, 0x7f0100b1

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_NORMAL:[I

    .line 721
    new-array v0, v4, [I

    fill-array-data v0, :array_114

    sput-object v0, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_NORMAL_PRESSED:[I

    return-void

    .line 624
    nop

    :array_dc
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data

    .line 644
    :array_e4
    .array-data 4
        0x10100a3
        0x10100a7
    .end array-data

    .line 655
    :array_ec
    .array-data 4
        0x10100a2
        0x10100a7
    .end array-data

    .line 666
    :array_f4
    .array-data 4
        0x10100a6
        0x10100a7
    .end array-data

    .line 678
    :array_fc
    .array-data 4
        0x10100a4
        0x10100a7
    .end array-data

    .line 694
    :array_104
    .array-data 4
        0x7f0100ad
        0x10100a7
    .end array-data

    .line 710
    :array_10c
    .array-data 4
        0x7f0100b0
        0x10100a0
    .end array-data

    .line 721
    :array_114
    .array-data 4
        0x7f0100b1
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;)V
    .registers 32
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p3, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "keyStyles"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    .prologue
    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 141
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHighlightOn:Z

    .line 143
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mEnabled:Z

    .line 150
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mKeyIconId:I

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v22

    if-eqz v22, :cond_a8

    const/4 v6, 0x0

    .line 245
    .local v6, "horizontalGap":F
    :goto_2d
    move-object/from16 v0, p3

    iget v9, v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    .line 246
    .local v9, "keyHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mVerticalGap:I

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mVerticalGap:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    .line 249
    invoke-static/range {p4 .. p4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v22

    sget-object v23, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Key:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 253
    .local v8, "keyAttr":Landroid/content/res/TypedArray;
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_b3

    .line 254
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;->getKeyStyle(Ljava/lang/String;)Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;

    move-result-object v21

    .line 256
    .local v21, "style":Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    if-nez v21, :cond_b7

    .line 257
    new-instance v22, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown key style: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v22

    .line 244
    .end local v6    # "horizontalGap":F
    .end local v8    # "keyAttr":Landroid/content/res/TypedArray;
    .end local v9    # "keyHeight":I
    .end local v21    # "style":Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    :cond_a8
    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v6, v0

    goto/16 :goto_2d

    .line 259
    .restart local v6    # "horizontalGap":F
    .restart local v8    # "keyAttr":Landroid/content/res/TypedArray;
    .restart local v9    # "keyHeight":I
    :cond_b3
    invoke-virtual/range {p5 .. p5}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;->getEmptyKeyStyle()Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;

    move-result-object v21

    .line 262
    .restart local v21    # "style":Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    :cond_b7
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyX(Landroid/content/res/TypedArray;)F

    move-result v11

    .line 263
    .local v11, "keyXPos":F
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyWidth(Landroid/content/res/TypedArray;F)F

    move-result v10

    .line 264
    .local v10, "keyWidth":F
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyY()I

    move-result v12

    .line 267
    .local v12, "keyYPos":I
    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v6, v22

    add-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    .line 268
    move-object/from16 v0, p0

    iput v12, v0, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    .line 269
    sub-float v22, v10, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    .line 270
    float-to-int v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHorizontalGap:I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    float-to-int v0, v11

    move/from16 v23, v0

    add-float v24, v11, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    add-int v25, v12, v9

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    add-float v22, v11, v10

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->setXPos(F)V

    .line 277
    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 281
    .local v13, "moreKeys":[Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v22

    if-eqz v22, :cond_34e

    const v22, 0x7f070006

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-nez v22, :cond_34e

    .line 283
    sget-object v22, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->DIGIT_FILTER:Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->filterOut(Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;)[Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 289
    :goto_157
    const/16 v22, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxMiniKeyboardColumn:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    .line 292
    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 294
    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 295
    const/16 v22, 0x12

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mEnabled:Z

    .line 297
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 298
    .local v7, "iconsSet":Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;
    const/16 v22, 0x13

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v8, v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    .line 300
    const/16 v22, 0x14

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v8, v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    .line 303
    const/16 v22, 0xd

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v14

    .line 305
    .local v14, "previewId":I
    const/16 v22, 0xf

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    const/16 v22, 0xd

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 309
    const/16 v22, 0xb

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 312
    const/16 v22, 0xb

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mKeyIconId:I

    .line 314
    const/16 v22, 0xc

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v18

    .line 316
    .local v18, "shiftedIconId":I
    if-eqz v18, :cond_27c

    .line 317
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 318
    .local v17, "shiftedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->addShiftedIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V

    .line 320
    .end local v17    # "shiftedIcon":Landroid/graphics/drawable/Drawable;
    :cond_27c
    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v16

    .line 322
    .local v16, "shiftLockedIconId":I
    if-eqz v16, :cond_299

    .line 323
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 324
    .local v15, "shiftLockedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v15}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->addShiftLockedIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V

    .line 326
    .end local v15    # "shiftLockedIcon":Landroid/graphics/drawable/Drawable;
    :cond_299
    const/16 v22, 0xe

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v20

    .line 328
    .local v20, "shiftedPreviewIconId":I
    if-eqz v20, :cond_2b8

    .line 329
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 330
    .local v19, "shiftedPreviewIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->addShiftedPreviewIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V

    .line 345
    .end local v19    # "shiftedPreviewIcon":Landroid/graphics/drawable/Drawable;
    :cond_2b8
    const/16 v22, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    .line 347
    const/16 v22, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 349
    const/16 v22, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    .line 351
    const/16 v22, 0xa

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    .line 352
    const/16 v22, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v8, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 355
    const/16 v22, 0x0

    const/16 v23, -0x63

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v8, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 357
    .local v4, "code":I
    const/16 v22, -0x63

    move/from16 v0, v22

    if-ne v4, v0, :cond_354

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_354

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 359
    .local v5, "firstChar":I
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIsRtlKeyboard:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/pantech/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 366
    .end local v5    # "firstChar":I
    :goto_34a
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    return-void

    .line 285
    .end local v4    # "code":I
    .end local v7    # "iconsSet":Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;
    .end local v14    # "previewId":I
    .end local v16    # "shiftLockedIconId":I
    .end local v18    # "shiftedIconId":I
    .end local v20    # "shiftedPreviewIconId":I
    :cond_34e
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    goto/16 :goto_157

    .line 360
    .restart local v4    # "code":I
    .restart local v7    # "iconsSet":Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;
    .restart local v14    # "previewId":I
    .restart local v16    # "shiftLockedIconId":I
    .restart local v18    # "shiftedIconId":I
    .restart local v20    # "shiftedPreviewIconId":I
    :cond_354
    const/16 v22, -0x63

    move/from16 v0, v22

    if-eq v4, v0, :cond_35f

    .line 361
    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    goto :goto_34a

    .line 363
    :cond_35f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    goto :goto_34a
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;IIII)V
    .registers 20
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p3, "moreKeySpec"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 197
    invoke-static {p3}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, p3}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/Key;->getCode(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;)I

    move-result v5

    invoke-static {p3}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->getOutputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIIILjava/lang/String;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIIILjava/lang/String;)V
    .registers 15
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "hintLabel"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "code"    # I
    .param p6, "outputText"    # Ljava/lang/CharSequence;
    .param p7, "x"    # I
    .param p8, "y"    # I
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "styleName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 141
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHighlightOn:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mEnabled:Z

    .line 150
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mKeyIconId:I

    .line 207
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    sub-int v0, p10, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    .line 208
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalGap:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHorizontalGap:I

    .line 209
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mVerticalGap:I

    .line 210
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    .line 211
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHorizontalGap:I

    sub-int v0, p9, v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    .line 212
    iput-object p3, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    .line 213
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    .line 214
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 215
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 216
    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 217
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    .line 218
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 219
    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    .line 220
    iput-object p6, p0, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 221
    iput p5, p0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 222
    iput-object p4, p0, Lcom/pantech/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHorizontalGap:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p7

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    .line 225
    iput p8, p0, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    .line 226
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    add-int v1, p7, p9

    add-int/lit8 v1, v1, 0x1

    add-int v2, p8, p10

    invoke-virtual {v0, p7, p8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    iput-object p11, p0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method private static addRtlParenthesisPair(II)V
    .registers 3
    .param p0, "left"    # I
    .param p1, "right"    # I

    .prologue
    .line 171
    sget-object v0, Lcom/pantech/inputmethod/keyboard/Key;->sRtlParenthesisMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Lcom/pantech/inputmethod/keyboard/Key;->sRtlParenthesisMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    return-void
.end method

.method private static getCode(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p2, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0, p2}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIsRtlKeyboard:Z

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v0

    return v0
.end method

.method private static getIcon(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p1, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRtlParenthesisCode(IZ)I
    .registers 3
    .param p0, "code"    # I
    .param p1, "isRtl"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_10

    sget-object v0, Lcom/pantech/inputmethod/keyboard/Key;->sRtlParenthesisMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_10

    .line 177
    sget-object v0, Lcom/pantech/inputmethod/keyboard/Key;->sRtlParenthesisMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    .line 179
    .end local p0    # "code":I
    :cond_10
    return p0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 796
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    return v0
.end method

.method public getCurrentDrawableState()[I
    .registers 3

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mPressed:Z

    .line 735
    .local v0, "pressed":Z
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    packed-switch v1, :pswitch_data_5a

    .line 767
    if-eqz v0, :cond_56

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    :goto_b
    return-object v1

    .line 737
    :pswitch_c
    if-eqz v0, :cond_11

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    goto :goto_b

    :cond_11
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_b

    .line 739
    :pswitch_14
    if-eqz v0, :cond_19

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    goto :goto_b

    :cond_19
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    goto :goto_b

    .line 741
    :pswitch_1c
    if-eqz v0, :cond_21

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    goto :goto_b

    :cond_21
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    goto :goto_b

    .line 743
    :pswitch_24
    if-eqz v0, :cond_29

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_MORE_PRESSED:[I

    goto :goto_b

    :cond_29
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_MORE_NORMAL:[I

    goto :goto_b

    .line 745
    :pswitch_2c
    if-eqz v0, :cond_31

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_B:[I

    goto :goto_b

    :cond_31
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_B:[I

    goto :goto_b

    .line 747
    :pswitch_34
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_STROKE_NORMAL:[I

    goto :goto_b

    .line 750
    :pswitch_37
    if-eqz v0, :cond_3c

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NUMBER_PRESSED:[I

    goto :goto_b

    :cond_3c
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NUMBER:[I

    goto :goto_b

    .line 753
    :pswitch_3f
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_TOUCH_PANNEL_NORMAL:[I

    goto :goto_b

    .line 758
    :pswitch_42
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Key;->isHighlightOn()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_TAB_SELECTED:[I

    goto :goto_b

    :cond_4b
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_TAB:[I

    goto :goto_b

    .line 763
    :pswitch_4e
    if-eqz v0, :cond_53

    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_NORMAL_PRESSED:[I

    goto :goto_b

    :cond_53
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_EMOJI_NORMAL:[I

    goto :goto_b

    .line 767
    :cond_56
    sget-object v1, Lcom/pantech/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    goto :goto_b

    .line 735
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_37
        :pswitch_3f
        :pswitch_42
        :pswitch_4e
    .end packed-switch
.end method

.method public getHintIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHitBox()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 804
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 808
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    return v0
.end method

.method public hasHintLabel()Z
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabelWithIconLeft()Z
    .registers 2

    .prologue
    .line 496
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabelWithIconRight()Z
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPopupHint()Z
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUppercaseLetter()Z
    .registers 2

    .prologue
    .line 488
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignLeft()Z
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignLeftOfCenter()Z
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignRight()Z
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEmojiNormal()Z
    .registers 3

    .prologue
    .line 426
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEmojiTab()Z
    .registers 3

    .prologue
    .line 422
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mEnabled:Z

    return v0
.end method

.method public isFontFunction()Z
    .registers 3

    .prologue
    .line 460
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFunctional()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 413
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHighlightOn()Z
    .registers 2

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHighlightOn:Z

    return v0
.end method

.method public isNormal()Z
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNumber()Z
    .registers 3

    .prologue
    .line 403
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOnKey(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isQwertyNormal()Z
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSpacer()Z
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public isSticky()Z
    .registers 3

    .prologue
    .line 408
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public markAsBottomEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 5
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 392
    return-void
.end method

.method public markAsLeftEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 4
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 371
    return-void
.end method

.method public markAsRightEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 5
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    .line 378
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOneHandMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 379
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 384
    :goto_10
    return-void

    .line 381
    :cond_11
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_10
.end method

.method public markAsTopEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 4
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTopPadding:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 388
    return-void
.end method

.method public needsSpecialPopupHint()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mNeedsSpecialPopupHint:Z

    return v0
.end method

.method public needsXScale()Z
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onPressed()V
    .registers 2

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mPressed:Z

    .line 545
    return-void
.end method

.method public onReleased()V
    .registers 2

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mPressed:Z

    .line 554
    return-void
.end method

.method public selectTextSize(IIII)I
    .registers 7
    .param p1, "letter"    # I
    .param p2, "largeLetter"    # I
    .param p3, "label"    # I
    .param p4, "hintLabel"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x180

    if-nez v0, :cond_1b

    .line 445
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 446
    mul-int/lit8 v0, p3, 0x8

    div-int/lit8 p3, v0, 0xa

    .line 455
    .end local p3    # "label":I
    :cond_1a
    :goto_1a
    return p3

    .line 450
    .restart local p3    # "label":I
    :cond_1b
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_23

    move p3, p4

    .line 451
    goto :goto_1a

    .line 452
    :cond_23
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    move p3, p2

    .line 453
    goto :goto_1a

    :cond_2b
    move p3, p1

    .line 455
    goto :goto_1a
.end method

.method public selectTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3
    .param p1, "defaultTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 432
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 433
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 437
    .end local p1    # "defaultTypeface":Landroid/graphics/Typeface;
    :cond_8
    :goto_8
    return-object p1

    .line 434
    .restart local p1    # "defaultTypeface":Landroid/graphics/Typeface;
    :cond_9
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 435
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_8
.end method

.method public setBackgroundType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 577
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mEnabled:Z

    .line 572
    return-void
.end method

.method public setHighlightOn(Z)V
    .registers 2
    .param p1, "highlightOn"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHighlightOn:Z

    .line 559
    return-void
.end method

.method public setHintIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "hintIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 522
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 517
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 536
    return-void
.end method

.method public setNeedsSpecialPopupHint(Z)V
    .registers 2
    .param p1, "needsSpecialPopupHint"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mNeedsSpecialPopupHint:Z

    .line 481
    return-void
.end method

.method public setPreviewIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 526
    return-void
.end method

.method public squaredDistanceToEdge(II)I
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 598
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    .line 599
    .local v5, "left":I
    iget v8, p0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    add-int v6, v5, v8

    .line 600
    .local v6, "right":I
    iget v7, p0, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    .line 601
    .local v7, "top":I
    iget v8, p0, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    add-int v0, v7, v8

    .line 602
    .local v0, "bottom":I
    if-ge p1, v5, :cond_1c

    move v3, v5

    .line 603
    .local v3, "edgeX":I
    :goto_f
    if-ge p2, v7, :cond_22

    move v4, v7

    .line 604
    .local v4, "edgeY":I
    :goto_12
    sub-int v1, p1, v3

    .line 605
    .local v1, "dx":I
    sub-int v2, p2, v4

    .line 606
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 602
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "edgeX":I
    .end local v4    # "edgeY":I
    :cond_1c
    if-le p1, v6, :cond_20

    move v3, v6

    goto :goto_f

    :cond_20
    move v3, p1

    goto :goto_f

    .line 603
    .restart local v3    # "edgeX":I
    :cond_22
    if-le p2, v0, :cond_26

    move v4, v0

    goto :goto_12

    :cond_26
    move v4, p2

    goto :goto_12
.end method
