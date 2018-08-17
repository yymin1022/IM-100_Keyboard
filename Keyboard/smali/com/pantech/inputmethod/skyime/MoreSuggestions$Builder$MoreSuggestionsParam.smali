.class public Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;
.super Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreSuggestionsParam"
.end annotation


# static fields
.field private static final COLUMN_ORDER_TO_NUMBER:[[I

.field private static final MAX_COLUMNS_IN_ROW:I = 0x4


# instance fields
.field private final mColumnOrders:[I

.field public mDivider:Landroid/graphics/drawable/Drawable;

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

    .line 134
    new-array v0, v6, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v5

    sput-object v0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    return-void

    nop

    :array_26
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x48

    .line 49
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;-><init>()V

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    return-void
.end method

.method private calcurateMaxRowWidth(II)I
    .registers 11
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "maxRowWidth":I
    move v3, p1

    .line 121
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_3
    iget v5, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    if-ge v4, v5, :cond_2e

    .line 122
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v2, v5, v4

    .line 123
    .local v2, "numColumnInRow":I
    const/4 v0, 0x0

    .line 124
    .local v0, "maxKeyWidth":I
    :goto_c
    if-ge v3, p2, :cond_1f

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v5, v5, v3

    if-ne v5, v4, :cond_1f

    .line 125
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 128
    :cond_1f
    mul-int v5, v0, v2

    sget v6, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 131
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
    .line 111
    move v0, p1

    .local v0, "pos":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 112
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_b

    .line 113
    const/4 v1, 0x0

    .line 115
    :goto_a
    return v1

    .line 111
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_e
    const/4 v1, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getColumnNumber(I)I
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    aget v0, v2, p1

    .line 147
    .local v0, "columnOrder":I
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v1

    .line 148
    .local v1, "numColumn":I
    sget-object v2, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    return v2
.end method

.method public getNumColumnInRow(I)I
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getWidth(I)I
    .registers 6
    .param p1, "pos"    # I

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v0

    .line 163
    .local v0, "numColumnInRow":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    sget v2, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

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
    .line 152
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 153
    .local v0, "columnNumber":I
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v1

    sget v2, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    return v1
.end method

.method public getY(I)I
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v0, v1, p1

    .line 158
    .local v0, "row":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mTopPadding:I

    add-int/2addr v1, v2

    return v1
.end method

.method public layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIILcom/pantech/inputmethod/keyboard/KeyboardView;)I
    .registers 21
    .param p1, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "fromPos"    # I
    .param p3, "maxWidth"    # I
    .param p4, "minWidth"    # I
    .param p5, "maxRow"    # I
    .param p6, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->clearKeys()V

    .line 62
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    invoke-virtual/range {p6 .. p6}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 65
    .local v6, "res":Landroid/content/res/Resources;
    const v12, 0x7f020049

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sput v12, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

    .line 69
    const v12, 0x7f0a001d

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v3, v12

    .line 72
    .local v3, "padding":I
    const/4 v7, 0x0

    .line 73
    .local v7, "row":I
    const/4 v5, 0x0

    .local v5, "pos":I
    const/4 v8, 0x0

    .line 74
    .local v8, "rowStartPos":I
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v12

    const/16 v13, 0x48

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 75
    .local v9, "size":I
    const/4 v10, 0x0

    .line 76
    .local v10, "widthSum":I
    :goto_3b
    if-ge v5, v9, :cond_74

    .line 77
    invoke-virtual {p1, v5}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 79
    .local v11, "word":Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v13, v3

    aput v13, v12, v5

    .line 80
    sub-int v12, v5, v8

    add-int/lit8 v2, v12, 0x1

    .line 82
    .local v2, "numColumn":I
    sget v12, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

    add-int/lit8 v13, v2, -0x1

    mul-int/2addr v12, v13

    sub-int v12, p3, v12

    div-int v1, v12, v2

    .line 85
    .local v1, "columnWidth":I
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v12, v12, v5

    add-int/2addr v10, v12

    .line 86
    const/4 v12, 0x4

    if-gt v2, v12, :cond_6e

    add-int/lit8 v12, v5, 0x1

    invoke-direct {p0, v8, v12, v1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->fitInWidth(III)Z

    move-result v12

    if-eqz v12, :cond_6e

    const/16 v12, 0x2bc

    if-le v10, v12, :cond_a7

    .line 89
    :cond_6e
    add-int/lit8 v12, v7, 0x1

    move/from16 v0, p5

    if-lt v12, v0, :cond_9d

    .line 101
    .end local v1    # "columnWidth":I
    .end local v2    # "numColumn":I
    .end local v11    # "word":Ljava/lang/CharSequence;
    :cond_74
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v13, v5, v8

    aput v13, v12, v7

    .line 102
    add-int/lit8 v12, v7, 0x1

    iput v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    .line 104
    move/from16 v0, p2

    invoke-direct {p0, v0, v5}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->calcurateMaxRowWidth(II)I

    move-result v12

    move/from16 v0, p4

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    iput v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mBaseWidth:I

    .line 106
    iget v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    iget v13, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mVerticalGap:I

    add-int/2addr v12, v13

    iput v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedHeight:I

    iput v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mBaseHeight:I

    .line 107
    sub-int v12, v5, p2

    return v12

    .line 92
    .restart local v1    # "columnWidth":I
    .restart local v2    # "numColumn":I
    .restart local v11    # "word":Ljava/lang/CharSequence;
    :cond_9d
    const/4 v10, 0x0

    .line 93
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v13, v5, v8

    aput v13, v12, v7

    .line 94
    move v8, v5

    .line 95
    add-int/lit8 v7, v7, 0x1

    .line 97
    :cond_a7
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    sub-int v13, v5, v8

    aput v13, v12, v5

    .line 98
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aput v7, v12, v5

    .line 99
    add-int/lit8 v5, v5, 0x1

    .line 100
    goto :goto_3b
.end method

.method public markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V
    .registers 7
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "pos"    # I

    .prologue
    .line 167
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v2, v3, p2

    .line 168
    .local v2, "row":I
    if-nez v2, :cond_9

    .line 169
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 170
    :cond_9
    iget v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_12

    .line 171
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 173
    :cond_12
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v1, v3, v2

    .line 174
    .local v1, "numColumnInRow":I
    invoke-virtual {p0, p2}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 175
    .local v0, "column":I
    if-nez v0, :cond_1f

    .line 176
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 177
    :cond_1f
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_26

    .line 178
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 179
    :cond_26
    return-void
.end method
