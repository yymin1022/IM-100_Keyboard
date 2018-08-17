.class public Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;
.super Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.source "MoreKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreSuggestionsParam"
.end annotation


# static fields
.field private static final COLUMN_ORDER_TO_NUMBER:[[I


# instance fields
.field private final mColumnOrders:[I

.field public mDividerWidth:I

.field public mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private final mNumColumnsInRow:[I

.field private mNumRows:I

.field private final mRowNumbers:[I

.field private final mWidths:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_40

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_52

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    return-void

    :array_40
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_5e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_6c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xb4

    .line 54
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;-><init>()V

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mWidths:[I

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    return-void
.end method

.method private calcurateMaxRowWidth(II)I
    .registers 11
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "maxRowWidth":I
    move v3, p1

    .line 131
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_3
    iget v5, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumRows:I

    if-ge v4, v5, :cond_2e

    .line 132
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v2, v5, v4

    .line 133
    .local v2, "numColumnInRow":I
    const/4 v0, 0x0

    .line 134
    .local v0, "maxKeyWidth":I
    :goto_c
    if-ge v3, p2, :cond_1f

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v5, v5, v3

    if-ne v5, v4, :cond_1f

    .line 135
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 138
    :cond_1f
    mul-int v5, v0, v2

    iget v6, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 141
    .end local v0    # "maxKeyWidth":I
    .end local v2    # "numColumnInRow":I
    :cond_2e
    return v1
.end method

.method private fitInWidth(III)Z
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "width"    # I

    .prologue
    .line 121
    move v0, p1

    .local v0, "pos":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 122
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_b

    .line 123
    const/4 v1, 0x0

    .line 125
    :goto_a
    return v1

    .line 121
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getColumnNumber(I)I
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 173
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    aget v0, v2, p1

    .line 174
    .local v0, "columnOrder":I
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v1

    .line 175
    .local v1, "numColumn":I
    sget-object v2, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    return v2
.end method

.method public getNumColumnInRow(I)I
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getWidth(I)I
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v0

    .line 190
    .local v0, "numColumnInRow":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    iget v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    return v1
.end method

.method public getX(I)I
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 180
    .local v0, "columnNumber":I
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    return v1
.end method

.method public getY(I)I
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v0, v1, p1

    .line 185
    .local v0, "row":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mTopPadding:I

    add-int/2addr v1, v2

    return v1
.end method

.method public layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIIILcom/pantech/inputmethod/keyboard/KeyboardView;Z)I
    .registers 27
    .param p1, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "maxColumn"    # I
    .param p3, "maxWidth"    # I
    .param p4, "minWidth"    # I
    .param p5, "maxRow"    # I
    .param p6, "btnWidth"    # I
    .param p7, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;
    .param p8, "isSettingsPopup"    # Z

    .prologue
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->clearKeys()V

    .line 67
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual/range {p7 .. p7}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 70
    .local v8, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 71
    const v13, 0x7f0a006d

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 74
    .local v3, "mFloatingWidth":I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDividerWidth:I

    .line 75
    const v13, 0x7f0a001d

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v5, v13

    .line 77
    .local v5, "padding":I
    const/4 v9, 0x0

    .line 78
    .local v9, "row":I
    const/4 v7, 0x0

    .local v7, "pos":I
    const/4 v10, 0x0

    .line 79
    .local v10, "rowStartPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v13

    const/16 v14, 0xb4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 80
    .local v11, "size":I
    :goto_3d
    if-ge v7, v11, :cond_7e

    .line 81
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 83
    .local v12, "word":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mWidths:[I

    if-lez p6, :cond_dc

    move/from16 v13, p6

    :goto_4d
    aput v13, v14, v7

    .line 85
    sub-int v13, v7, v10

    add-int/lit8 v4, v13, 0x1

    .line 86
    .local v4, "numColumn":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v14, v4, -0x1

    mul-int/2addr v13, v14

    sub-int v13, p3, v13

    div-int v2, v13, v4

    .line 88
    .local v2, "columnWidth":I
    if-eqz p8, :cond_68

    move/from16 v0, p2

    if-le v11, v0, :cond_68

    .line 89
    add-int/lit8 v13, v11, 0x1

    div-int/lit8 p2, v13, 0x2

    .line 91
    :cond_68
    move/from16 v0, p2

    if-gt v4, v0, :cond_78

    if-lez p6, :cond_f1

    add-int/lit8 v13, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v2}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->fitInWidth(III)Z

    move-result v13

    if-nez v13, :cond_f1

    .line 93
    :cond_78
    add-int/lit8 v13, v9, 0x1

    move/from16 v0, p5

    if-lt v13, v0, :cond_e6

    .line 104
    .end local v2    # "columnWidth":I
    .end local v4    # "numColumn":I
    .end local v12    # "word":Ljava/lang/CharSequence;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v14, v7, v10

    aput v14, v13, v9

    .line 105
    if-eqz p8, :cond_96

    move/from16 v0, p2

    if-le v11, v0, :cond_96

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    add-int/lit8 v14, v11, 0x1

    div-int/lit8 v14, v14, 0x2

    aput v14, v13, v9

    .line 107
    :cond_96
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumRows:I

    .line 108
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mBaseWidth:I

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v13}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isLandscapeFloatingSingleMode()Z

    move-result v13

    if-eqz v13, :cond_c3

    .line 114
    int-to-double v14, v3

    const-wide v16, 0x3fe3333333333333L    # 0.6

    mul-double v14, v14, v16

    double-to-int v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mBaseWidth:I

    .line 116
    :cond_c3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumRows:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mVerticalGap:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mOccupiedHeight:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mBaseHeight:I

    .line 117
    add-int/lit8 v13, v7, 0x0

    return v13

    .line 83
    .restart local v12    # "word":Ljava/lang/CharSequence;
    :cond_dc
    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v13, v5

    goto/16 :goto_4d

    .line 96
    .restart local v2    # "columnWidth":I
    .restart local v4    # "numColumn":I
    :cond_e6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v14, v7, v10

    aput v14, v13, v9

    .line 97
    move v10, v7

    .line 98
    add-int/lit8 v9, v9, 0x1

    .line 100
    :cond_f1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    sub-int v14, v7, v10

    aput v14, v13, v7

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aput v9, v13, v7

    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 103
    goto/16 :goto_3d
.end method

.method public markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V
    .registers 7
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "pos"    # I

    .prologue
    .line 194
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v2, v3, p2

    .line 195
    .local v2, "row":I
    if-nez v2, :cond_9

    .line 196
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 197
    :cond_9
    iget v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_12

    .line 198
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 200
    :cond_12
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v1, v3, v2

    .line 201
    .local v1, "numColumnInRow":I
    invoke-virtual {p0, p2}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 202
    .local v0, "column":I
    if-nez v0, :cond_1f

    .line 203
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 204
    :cond_1f
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_26

    .line 205
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 206
    :cond_26
    return-void
.end method
