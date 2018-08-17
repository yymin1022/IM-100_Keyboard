.class public Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;,
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;,
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;,
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;,
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;,
        Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KP:",
        "Lcom/pantech/inputmethod/keyboard/Keyboard$Params;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_KEYBOARD_COLUMNS:I = 0xa

.field private static final DEFAULT_KEYBOARD_ROWS:I = 0x4

.field private static final ROWHEIGHT_A_NORMAL:I = -0x1

.field private static final ROWHEIGHT_B_NORMAL:I = -0x2

.field private static final ROWHEIGHT_B_TOPPADDING:I = -0x4

.field private static final ROWHEIGHT_COMMON:I = -0x3

.field private static final ROWHEIGHT_KOR_NORMAL:I = -0x7

.field private static final ROWHEIGHT_NOT_ENUM:I = 0x0

.field private static final ROWHEIGHT_TOUCH_PAD_BIG:I = -0x6

.field private static final ROWHEIGHT_TOUCH_PAD_NORMAL:I = -0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CASE:Ljava/lang/String; = "case"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field public static final TAG_KEY_STYLE:Ljava/lang/String; = "key-style"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static final TAG_SPACER:Ljava/lang/String; = "Spacer"

.field private static final TAG_SWITCH:Ljava/lang/String; = "switch"

.field static heightScaleFactor:F

.field static widthScaleFactor:F


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCurrentHeightIndex:I

.field private mCurrentRow:Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

.field private mCurrentY:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mKeyStyles:Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

.field private mLeftEdge:Z

.field protected final mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKP;"
        }
    .end annotation
.end field

.field private mPref:Landroid/content/SharedPreferences;

.field protected final mResources:Landroid/content/res/Resources;

.field private mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private mTopEdge:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 116
    const-class v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    .line 381
    sput v1, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->heightScaleFactor:F

    .line 382
    sput v1, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->widthScaleFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TKP;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    .local p2, "params":Lcom/pantech/inputmethod/keyboard/Keyboard$Params;, "TKP;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 141
    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 144
    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 145
    new-instance v1, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    invoke-direct {v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    .line 148
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentHeightIndex:I

    .line 275
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    .local v0, "res":Landroid/content/res/Resources;
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    .line 278
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 280
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .line 282
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->setTouchPositionCorrectionData(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 284
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->GRID_WIDTH:I

    .line 285
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->GRID_HEIGHT:I

    .line 287
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    const-string v2, "com.pantech.inputmethod.skyime_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mPref:Landroid/content/SharedPreferences;

    .line 288
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I
    .registers 5
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/SharedPreferences;
    .param p3, "x3"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->setScaleHeight(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v0

    return v0
.end method

.method private addEdgeSpace(FLcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .prologue
    .line 955
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-virtual {p2, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->advanceXPos(F)V

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 958
    return-void
.end method

.method private static booleanAttr(Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1107
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, " %s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method

.method private static checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 910
    return-void

    .line 911
    :cond_12
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;

    invoke-direct {v0, p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v0
.end method

.method private endKey(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 3
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 940
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 941
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    if-eqz v0, :cond_11

    .line 942
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 945
    :cond_11
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    if-eqz v0, :cond_1a

    .line 946
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 948
    :cond_1a
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 949
    return-void
.end method

.method private endKeyboard()V
    .registers 1

    .prologue
    .line 952
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    return-void
.end method

.method private endRow(Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 5
    .param p1, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .prologue
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v2, 0x0

    .line 927
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    if-nez v0, :cond_d

    .line 928
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "orphant end row tag"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_d
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_1a

    .line 930
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 931
    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 933
    :cond_1a
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 934
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 935
    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 937
    return-void
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # F

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 962
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_7

    .line 969
    .end local p3    # "defValue":F
    :cond_6
    :goto_6
    return p3

    .line 964
    .restart local p3    # "defValue":F
    :cond_7
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->isFractionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 965
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p3

    goto :goto_6

    .line 966
    :cond_12
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->isDimensionValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 967
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_6
.end method

.method public static getEnumValue(Landroid/content/res/TypedArray;II)I
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 973
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 974
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_7

    .line 979
    .end local p2    # "defValue":I
    :cond_6
    :goto_6
    return p2

    .line 976
    .restart local p2    # "defValue":I
    :cond_7
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 977
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_6
.end method

.method public static getRowHeight(Landroid/content/res/TypedArray;ILandroid/content/res/Resources;)I
    .registers 9
    .param p0, "keyboardAttr"    # Landroid/content/res/TypedArray;
    .param p1, "heightIndex"    # I
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const v5, 0x7f0a002e

    const/4 v4, 0x1

    .line 1000
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 1003
    .local v1, "heightType":I
    if-ltz v1, :cond_f

    .line 1004
    const/4 v0, -0x1

    .line 1064
    :goto_e
    return v0

    .line 1007
    :cond_f
    const/4 v0, 0x0

    .line 1008
    .local v0, "height":I
    packed-switch v1, :pswitch_data_94

    .line 1061
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1010
    :pswitch_18
    if-ne p1, v4, :cond_22

    .line 1011
    const v2, 0x7f0a002d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1013
    :cond_22
    const v2, 0x7f0a002c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1015
    goto :goto_e

    .line 1017
    :pswitch_2a
    if-ne p1, v4, :cond_34

    .line 1018
    const v2, 0x7f0a0031

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1020
    :cond_34
    const v2, 0x7f0a0030

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1022
    goto :goto_e

    .line 1024
    :pswitch_3c
    if-ne p1, v4, :cond_46

    .line 1025
    const v2, 0x7f0a002f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1027
    :cond_46
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1029
    goto :goto_e

    .line 1031
    :pswitch_4b
    if-ne p1, v4, :cond_55

    .line 1032
    const v2, 0x7f0a000c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1034
    :cond_55
    const v2, 0x7f0a000b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1036
    goto :goto_e

    .line 1039
    :pswitch_5d
    if-ne p1, v4, :cond_67

    .line 1040
    const v2, 0x7f0a003a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1042
    :cond_67
    const v2, 0x7f0a0039

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1044
    goto :goto_e

    .line 1046
    :pswitch_6f
    if-ne p1, v4, :cond_79

    .line 1047
    const v2, 0x7f0a003c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1049
    :cond_79
    const v2, 0x7f0a003b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1051
    goto :goto_e

    .line 1053
    :pswitch_81
    if-ne p1, v4, :cond_8b

    .line 1054
    const v2, 0x7f0a0033

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_e

    .line 1056
    :cond_8b
    const v2, 0x7f0a0032

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1058
    goto/16 :goto_e

    .line 1008
    :pswitch_data_94
    .packed-switch -0x7
        :pswitch_81
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_3c
        :pswitch_2a
        :pswitch_18
    .end packed-switch
.end method

.method private static isDimensionValue(Landroid/util/TypedValue;)Z
    .registers 3
    .param p0, "v"    # Landroid/util/TypedValue;

    .prologue
    .line 987
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isFractionValue(Landroid/util/TypedValue;)Z
    .registers 3
    .param p0, "v"    # Landroid/util/TypedValue;

    .prologue
    .line 983
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isIntegerValue(Landroid/util/TypedValue;)Z
    .registers 3
    .param p0, "v"    # Landroid/util/TypedValue;

    .prologue
    .line 991
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isStringValue(Landroid/util/TypedValue;)Z
    .registers 3
    .param p0, "v"    # Landroid/util/TypedValue;

    .prologue
    .line 995
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 847
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, p2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z
    .registers 8
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "intValue"    # I
    .param p3, "strValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 859
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 860
    .local v0, "v":Landroid/util/TypedValue;
    if-nez v0, :cond_9

    .line 868
    :cond_8
    :goto_8
    return v1

    .line 863
    :cond_9
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->isIntegerValue(Landroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 864
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq p2, v3, :cond_8

    move v1, v2

    goto :goto_8

    .line 865
    :cond_17
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->isStringValue(Landroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 866
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_8

    :cond_2c
    move v1, v2

    .line 868
    goto :goto_8
.end method

.method private parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v1, 0x1

    .line 752
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 753
    .local v0, "selected":Z
    if-nez p2, :cond_f

    .line 755
    if-eqz v0, :cond_d

    .end local p3    # "skip":Z
    :goto_9
    invoke-direct {p0, p1, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 760
    :goto_c
    return v0

    .restart local p3    # "skip":Z
    :cond_d
    move p3, v1

    .line 755
    goto :goto_9

    .line 758
    :cond_f
    if-eqz v0, :cond_15

    .end local p3    # "skip":Z
    :goto_11
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_c

    .restart local p3    # "skip":Z
    :cond_15
    move p3, v1

    goto :goto_11
.end method

.method private parseCaseCondition(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 764
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 765
    .local v10, "id":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    if-nez v10, :cond_f

    .line 766
    const/16 v18, 0x1

    .line 834
    :goto_e
    return v18

    .line 768
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v21

    sget-object v22, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Case:[I

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 771
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    :try_start_21
    iget v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v21, v0

    iget v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchTypedValue(Landroid/content/res/TypedArray;IILjava/lang/String;)Z

    move-result v14

    .line 773
    .local v14, "modeMatched":Z
    const/16 v20, 0x1

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v15

    .line 775
    .local v15, "navigateActionMatched":Z
    const/16 v20, 0x2

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v16

    .line 777
    .local v16, "passwordInputMatched":Z
    const/16 v20, 0x3

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v7

    .line 779
    .local v7, "hasSettingsKeyMatched":Z
    const/16 v20, 0x4

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mQwertyLongInput:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v17

    .line 781
    .local v17, "qwertyLongInputMatched":Z
    const/16 v20, 0x5

    iget v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v6

    .line 783
    .local v6, "f2KeyModeMatched":Z
    const/16 v20, 0x6

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    .line 785
    .local v4, "clobberSettingsKeyMatched":Z
    const/16 v20, 0x7

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v19

    .line 787
    .local v19, "shortcutKeyEnabledMatched":Z
    const/16 v20, 0x8

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v8

    .line 793
    .local v8, "hasShortcutKeyMatched":Z
    const/16 v20, 0x9

    iget v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v11

    .line 795
    .local v11, "imeActionMatched":Z
    const/16 v20, 0xa

    iget-object v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v13

    .line 797
    .local v13, "localeCodeMatched":Z
    const/16 v20, 0xb

    iget-object v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v12

    .line 799
    .local v12, "languageCodeMatched":Z
    const/16 v20, 0xc

    iget-object v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v5

    .line 802
    .local v5, "countryCodeMatched":Z
    const/16 v20, 0xd

    iget-boolean v0, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHideEmojiMode:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    :try_end_f8
    .catchall {:try_start_21 .. :try_end_f8} :catchall_11f

    move-result v9

    .line 804
    .local v9, "hideEmojiMode":Z
    if-eqz v14, :cond_11c

    if-eqz v15, :cond_11c

    if-eqz v16, :cond_11c

    if-eqz v7, :cond_11c

    if-eqz v17, :cond_11c

    if-eqz v6, :cond_11c

    if-eqz v4, :cond_11c

    if-eqz v19, :cond_11c

    if-eqz v8, :cond_11c

    if-eqz v11, :cond_11c

    if-eqz v13, :cond_11c

    if-eqz v12, :cond_11c

    if-eqz v5, :cond_11c

    if-eqz v9, :cond_11c

    const/16 v18, 0x1

    .line 834
    .local v18, "selected":Z
    :goto_117
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_e

    .line 804
    .end local v18    # "selected":Z
    :cond_11c
    const/16 v18, 0x0

    goto :goto_117

    .line 834
    .end local v4    # "clobberSettingsKeyMatched":Z
    .end local v5    # "countryCodeMatched":Z
    .end local v6    # "f2KeyModeMatched":Z
    .end local v7    # "hasSettingsKeyMatched":Z
    .end local v8    # "hasShortcutKeyMatched":Z
    .end local v9    # "hideEmojiMode":Z
    .end local v11    # "imeActionMatched":Z
    .end local v12    # "languageCodeMatched":Z
    .end local v13    # "localeCodeMatched":Z
    .end local v14    # "modeMatched":Z
    .end local v15    # "navigateActionMatched":Z
    .end local v16    # "passwordInputMatched":Z
    .end local v17    # "qwertyLongInputMatched":Z
    .end local v19    # "shortcutKeyEnabledMatched":Z
    :catchall_11f
    move-exception v20

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v20
.end method

.method private parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-nez p2, :cond_7

    .line 883
    invoke-direct {p0, p1, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 887
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 885
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_5
.end method

.method private parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v6, 0x0

    .line 669
    if-eqz p3, :cond_9

    .line 670
    const-string v3, "include"

    invoke-static {v3, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 690
    :goto_8
    return-void

    .line 672
    :cond_9
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Include:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 674
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 676
    .local v1, "keyboardLayout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 678
    const-string v3, "include"

    invoke-static {v3, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 679
    if-nez v1, :cond_2b

    .line 680
    new-instance v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v4, "No keyboardLayout attribute in <include/>"

    invoke-direct {v3, v4, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v3

    .line 683
    :cond_2b
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 685
    .local v2, "parserForInclude":Landroid/content/res/XmlResourceParser;
    :try_start_31
    invoke-direct {p0, v2, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    .line 687
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_8

    :catchall_38
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3
.end method

.method private parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 660
    return-void
.end method

.method private parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 665
    return-void
.end method

.method private parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_8

    .line 634
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 643
    :goto_7
    return-void

    .line 636
    :cond_8
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;)V

    .line 640
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 641
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    goto :goto_7
.end method

.method private parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "skip"    # Z

    .prologue
    .line 891
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_KeyStyle:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 893
    .local v1, "keyStyleAttr":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 896
    .local v0, "keyAttrs":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 897
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "<key-style/> needs styleName attribute"

    invoke-direct {v2, v3, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_27

    .line 902
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 903
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 899
    :cond_2f
    if-nez p2, :cond_36

    .line 900
    :try_start_31
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    invoke-virtual {v2, v1, v0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_27

    .line 902
    :cond_36
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 903
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 905
    return-void
.end method

.method private parseKeyboard(Landroid/content/res/XmlResourceParser;II)V
    .registers 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "oneHandMode"    # I
    .param p3, "heightIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    .line 343
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 344
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "Keyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 346
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;II)V

    .line 347
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->startKeyboard()V

    .line 348
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 355
    .end local v1    # "tag":Ljava/lang/String;
    :cond_20
    return-void

    .line 351
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_21
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v3, "Keyboard"

    invoke-direct {v2, p1, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseKeyboardAttributes(Lorg/xmlpull/v1/XmlPullParser;II)V
    .registers 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "oneHandMode"    # I
    .param p3, "heightIndex"    # I

    .prologue
    .line 439
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 440
    .local v2, "displayWidth":I
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    sget-object v12, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard:[I

    const/high16 v13, 0x7f010000

    const v14, 0x7f0e001d

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 443
    .local v4, "keyboardAttr":Landroid/content/res/TypedArray;
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    sget-object v12, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 446
    .local v3, "keyAttr":Landroid/content/res/TypedArray;
    :try_start_21
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 447
    .local v1, "displayHeight":I
    const/4 v10, 0x2

    div-int/lit8 v11, v1, 0x2

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v5, v10

    .line 449
    .local v5, "keyboardHeight":I
    const/4 v10, 0x3

    div-int/lit8 v11, v1, 0x2

    int-to-float v11, v11

    invoke-static {v4, v10, v1, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v6, v10

    .line 451
    .local v6, "maxKeyboardHeight":I
    const/4 v10, 0x4

    div-int/lit8 v11, v1, 0x2

    int-to-float v11, v11

    invoke-static {v4, v10, v1, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v7, v10

    .line 453
    .local v7, "minKeyboardHeight":I
    if-gez v7, :cond_4c

    .line 456
    const/4 v10, 0x4

    div-int/lit8 v11, v2, 0x2

    int-to-float v11, v11

    invoke-static {v4, v10, v2, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    neg-int v7, v10

    .line 459
    :cond_4c
    iget-object v8, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .line 463
    .local v8, "params":Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    move/from16 v0, p3

    iput v0, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightIndex:I

    .line 465
    iput v5, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    .line 469
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_64

    .line 470
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    .line 476
    :cond_64
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mPref:Landroid/content/SharedPreferences;

    iget-object v13, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-static {v10, v11, v12, v13}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->setScaleHeight(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    .line 478
    iget-object v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v10, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    .line 480
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mPref:Landroid/content/SharedPreferences;

    iget-object v13, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-static {v10, v11, v12, v13}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->setScaleWidth(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    .line 484
    if-eqz p2, :cond_93

    .line 485
    iget-object v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v10, v10, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    .line 487
    :cond_93
    move/from16 v0, p2

    iput v0, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOneHandMode:I

    .line 489
    const/4 v10, 0x5

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTopPadding:I

    .line 491
    const/4 v10, 0x6

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBottomPadding:I

    .line 495
    const/4 v10, 0x2

    move/from16 v0, p2

    if-ne v0, v10, :cond_143

    .line 496
    iget-object v10, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0d0003

    iget-object v12, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v12, v12, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget-object v13, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v13, v13, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    .line 498
    iget v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalCenterPadding:I

    sub-int/2addr v10, v11

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    .line 505
    :goto_cd
    const/16 v10, 0x15

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    iget v12, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    div-int/lit8 v12, v12, 0xa

    int-to-float v12, v12

    invoke-static {v3, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultKeyWidth:I

    .line 508
    const/16 v10, 0x9

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalGap:I

    .line 510
    const/16 v10, 0xa

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    .line 512
    iget v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTopPadding:I

    sub-int/2addr v10, v11

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBottomPadding:I

    sub-int/2addr v10, v11

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseHeight:I

    .line 516
    iget v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightIndex:I

    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v10, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getRowHeight(Landroid/content/res/TypedArray;ILandroid/content/res/Resources;)I

    move-result v9

    .line 517
    .local v9, "rowHeight":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_166

    .line 518
    const/16 v10, 0x8

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseHeight:I

    iget v12, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseHeight:I

    div-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultRowHeight:I

    .line 525
    :goto_11d
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIsRtlKeyboard:Z

    .line 527
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMoreKeysTemplate:I

    .line 529
    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxMiniKeyboardColumn:I

    .line 532
    iget-object v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v10, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->loadIcons(Landroid/content/res/TypedArray;)V
    :try_end_13c
    .catchall {:try_start_21 .. :try_end_13c} :catchall_15e

    .line 534
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 537
    return-void

    .line 500
    .end local v9    # "rowHeight":I
    :cond_143
    const/4 v10, 0x7

    :try_start_144
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v11, v11, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    .line 502
    iget v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget v11, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalCenterPadding:I

    sub-int/2addr v10, v11

    iput v10, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I
    :try_end_15c
    .catchall {:try_start_144 .. :try_end_15c} :catchall_15e

    goto/16 :goto_cd

    .line 534
    .end local v1    # "displayHeight":I
    .end local v5    # "keyboardHeight":I
    .end local v6    # "maxKeyboardHeight":I
    .end local v7    # "minKeyboardHeight":I
    .end local v8    # "params":Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    :catchall_15e
    move-exception v10

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v10

    .line 522
    .restart local v1    # "displayHeight":I
    .restart local v5    # "keyboardHeight":I
    .restart local v6    # "maxKeyboardHeight":I
    .restart local v7    # "minKeyboardHeight":I
    .restart local v8    # "params":Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .restart local v9    # "rowHeight":I
    :cond_166
    :try_start_166
    iput v9, v8, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultRowHeight:I
    :try_end_168
    .catchall {:try_start_166 .. :try_end_168} :catchall_15e

    goto :goto_11d
.end method

.method private parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_61

    .line 543
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4f

    .line 544
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 546
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    move-result-object v1

    .line 548
    .local v1, "row":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    if-nez p2, :cond_1f

    .line 549
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->startRow(Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 550
    :cond_1f
    invoke-direct {p0, p1, v1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 551
    .end local v1    # "row":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    :cond_23
    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 553
    :cond_2f
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 555
    :cond_3b
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 558
    :cond_47
    new-instance v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 560
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 561
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 562
    .restart local v2    # "tag":Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 563
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->endKeyboard()V

    .line 576
    .end local v2    # "tag":Ljava/lang/String;
    :cond_61
    return-void

    .line 565
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_62
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "merge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 569
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    new-instance v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method public static parseKeyboardLocale(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 360
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 361
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v3, :cond_d

    const-string v2, ""

    .line 378
    :goto_c
    return-object v2

    .line 363
    :cond_d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v6, 0x1

    if-eq v0, v6, :cond_3f

    .line 364
    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    .line 365
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "Keyboard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 367
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard:[I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 369
    .local v1, "keyboardAttr":Landroid/content/res/TypedArray;
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_c

    .line 374
    .end local v1    # "keyboardAttr":Landroid/content/res/TypedArray;
    .end local v2    # "locale":Ljava/lang/String;
    :cond_37
    new-instance v6, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v7, "Keyboard"

    invoke-direct {v6, v3, v7}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v6

    .line 378
    .end local v5    # "tag":Ljava/lang/String;
    :cond_3f
    const-string v2, ""

    goto :goto_c
.end method

.method private parseMerge(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    .line 696
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 697
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 699
    if-nez p2, :cond_1c

    .line 700
    invoke-direct {p0, p1, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 711
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-void

    .line 702
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_1b

    .line 706
    :cond_20
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    const-string v3, "Included keyboard layout must have <merge> root element"

    invoke-direct {v2, v3, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v2
.end method

.method private parseRowAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 579
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 582
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x9

    :try_start_e
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 583
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v1, "horizontalGap"

    invoke-direct {v0, p1, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1c

    .line 588
    :catchall_1c
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 584
    :cond_21
    const/16 v0, 0xa

    :try_start_23
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 585
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;

    const-string v1, "verticalGap"

    invoke-direct {v0, p1, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_31
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mPref:Landroid/content/SharedPreferences;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;-><init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/SharedPreferences;)V
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_1c

    .line 588
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private parseRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_66

    .line 596
    const/4 v2, 0x2

    if-ne v0, v2, :cond_52

    .line 597
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 599
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKey(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 600
    :cond_1a
    const-string v2, "Spacer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 601
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 602
    :cond_26
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 603
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseIncludeRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 604
    :cond_32
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 605
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    goto :goto_0

    .line 606
    :cond_3e
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 607
    invoke-direct {p0, p1, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyStyle(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    .line 609
    :cond_4a
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v1    # "tag":Ljava/lang/String;
    :cond_52
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 612
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 613
    .restart local v1    # "tag":Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 615
    if-nez p3, :cond_66

    .line 616
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->endRow(Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 629
    .end local v1    # "tag":Ljava/lang/String;
    :cond_66
    return-void

    .line 618
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_67
    const-string v2, "case"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 622
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseSpacer(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    if-eqz p3, :cond_8

    .line 648
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 655
    :goto_7
    return-void

    .line 650
    :cond_8
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Key$Spacer;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mKeyStyles:Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/Key$Spacer;-><init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;)V

    .line 652
    .local v0, "spacer":Lcom/pantech/inputmethod/keyboard/Key$Spacer;
    const-string v1, "Spacer"

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->checkEndTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 653
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->endKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    goto :goto_7
.end method

.method private parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v4, 0x1

    .line 726
    const/4 v1, 0x0

    .line 728
    .local v1, "selected":Z
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    if-eq v0, v4, :cond_4c

    .line 729
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3d

    .line 730
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 732
    if-eqz v1, :cond_20

    move v3, v4

    :goto_1a
    invoke-direct {p0, p1, p2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseCase(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_20
    move v3, p3

    goto :goto_1a

    .line 733
    :cond_22
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 734
    if-eqz v1, :cond_33

    move v3, v4

    :goto_2d
    invoke-direct {p0, p1, p2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseDefault(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    :cond_33
    move v3, p3

    goto :goto_2d

    .line 736
    :cond_35
    new-instance v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalStartTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 738
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3d
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 739
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 740
    .restart local v2    # "tag":Ljava/lang/String;
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 748
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4c
    return-void

    .line 744
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_4d
    new-instance v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$IllegalEndTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseSwitchKeyboardContent(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 716
    return-void
.end method

.method private parseSwitchRowContent(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p3, "skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseSwitchInternal(Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Z)V

    .line 721
    return-void
.end method

.method private static setScaleHeight(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "height"    # I
    .param p2, "pref"    # Landroid/content/SharedPreferences;
    .param p3, "kbdId"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v3, 0x64

    .line 385
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 386
    .local v0, "orientation":I
    const/16 v1, 0x64

    .line 388
    .local v1, "progress":I
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 389
    if-ne v0, v4, :cond_29

    .line 390
    const-string v2, "custom_floating_height"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 406
    :cond_1c
    :goto_1c
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    div-float/2addr v2, v5

    div-float/2addr v2, v5

    sput v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->heightScaleFactor:F

    .line 407
    int-to-float v2, p1

    sget v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->heightScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 408
    return p1

    .line 392
    :cond_29
    if-ne v0, v6, :cond_2e

    .line 393
    const/16 v1, 0x64

    goto :goto_1c

    .line 395
    :cond_2e
    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this kbd xml has to be writen int upper two-if method : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 398
    :cond_4b
    if-ne v0, v4, :cond_54

    .line 399
    const-string v2, "custom_height"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1c

    .line 401
    :cond_54
    if-ne v0, v6, :cond_1c

    .line 402
    const-string v2, "custom_height_landscape"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1c
.end method

.method private static setScaleWidth(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "width"    # I
    .param p2, "pref"    # Landroid/content/SharedPreferences;
    .param p3, "kbdId"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v3, 0x64

    .line 413
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 414
    .local v0, "orientation":I
    const/16 v1, 0x64

    .line 416
    .local v1, "progress":I
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 417
    if-ne v0, v4, :cond_29

    .line 418
    const-string v2, "custom_floating_width"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 432
    :cond_1c
    :goto_1c
    mul-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    div-float/2addr v2, v5

    div-float/2addr v2, v5

    sput v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->widthScaleFactor:F

    .line 433
    int-to-float v2, p1

    sget v3, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->widthScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 434
    return p1

    .line 419
    :cond_29
    if-ne v0, v6, :cond_2e

    .line 420
    const/16 v1, 0x64

    goto :goto_1c

    .line 422
    :cond_2e
    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this kbd xml has to be writen int upper two-if method : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 425
    :cond_4b
    if-ne v0, v4, :cond_54

    .line 426
    const-string v2, "custom_width"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1c

    .line 427
    :cond_54
    if-ne v0, v6, :cond_1c

    .line 428
    const-string v2, "custom_width_landscape"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1c
.end method

.method private static setTouchPositionCorrectionData(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    const/4 v6, 0x0

    .line 291
    const/4 v3, 0x0

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard:[I

    const/high16 v5, 0x7f010000

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mThemeId:I

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 295
    .local v2, "resourceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    if-nez v2, :cond_26

    .line 297
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v3, :cond_33

    .line 298
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "touchPositionCorrectionData is not defined"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "data":[Ljava/lang/String;
    iget-object v3, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    invoke-virtual {v3, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->load([Ljava/lang/String;)V

    .line 304
    .end local v1    # "data":[Ljava/lang/String;
    :cond_33
    return-void
.end method

.method private startKeyboard()V
    .registers 3

    .prologue
    .line 915
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTopPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentY:I

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mTopEdge:Z

    .line 917
    return-void
.end method

.method private startRow(Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V
    .registers 3
    .param p1, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .prologue
    .line 920
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->addEdgeSpace(FLcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;)V

    .line 921
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentRow:Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mLeftEdge:Z

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mRightEdgeKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 924
    return-void
.end method

.method private static stringArrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 873
    .local v1, "elem":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 874
    const/4 v4, 0x1

    .line 876
    .end local v1    # "elem":Ljava/lang/String;
    :goto_e
    return v4

    .line 872
    .restart local v1    # "elem":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 876
    .end local v1    # "elem":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private static textAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1103
    if-eqz p0, :cond_12

    const-string v0, " %s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v0, ""

    goto :goto_11
.end method


# virtual methods
.method public build()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 3

    .prologue
    .line 334
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    return-object v0
.end method

.method public load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
    .registers 9
    .param p1, "id"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .param p2, "oneHandMode"    # I
    .param p3, "heightIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/inputmethod/keyboard/KeyboardId;",
            "II)",
            "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder",
            "<TKP;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iput-object p1, v2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 309
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getXmlId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 311
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_e
    invoke-direct {p0, v1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboard(Landroid/content/res/XmlResourceParser;II)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_11} :catch_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_39
    .catchall {:try_start_e .. :try_end_11} :catchall_34

    .line 319
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 321
    return-object p0

    .line 312
    :catch_15
    move-exception v0

    .line 313
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_16
    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_34

    .line 319
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_34
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    .line 315
    :catch_39
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    :try_start_3a
    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_34
.end method

.method public load(Lcom/pantech/inputmethod/keyboard/KeyboardId;)V
    .registers 4
    .param p1, "id"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    .line 326
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mCurrentHeightIndex:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 327
    return-void
.end method

.method public setTouchPositionCorrectionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 330
    .local p0, "this":Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;, "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder<TKP;>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->setEnabled(Z)V

    .line 331
    return-void
.end method
