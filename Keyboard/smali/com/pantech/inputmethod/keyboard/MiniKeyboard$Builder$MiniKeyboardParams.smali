.class public Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
.super Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniKeyboardParams"
.end annotation


# instance fields
.field public mLeftKeys:I

.field public mNumColumns:I

.field public mNumRows:I

.field public mRightKeys:I

.field mTopRowAdjustment:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(IIIIII)V
    .registers 7
    .param p1, "numKeys"    # I
    .param p2, "maxColumns"    # I
    .param p3, "keyWidth"    # I
    .param p4, "rowHeight"    # I
    .param p5, "coordXInParent"    # I
    .param p6, "parentKeyboardWidth"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;-><init>()V

    .line 54
    invoke-virtual/range {p0 .. p6}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->setParameters(IIIIII)V

    .line 56
    return-void
.end method

.method private getOptimizedColumns(II)I
    .registers 6
    .param p1, "numKeys"    # I
    .param p2, "maxColumns"    # I

    .prologue
    .line 175
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, "numColumns":I
    :goto_4
    invoke-static {p1, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getTopRowEmptySlots(II)I

    move-result v1

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    if-lt v1, v2, :cond_f

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 179
    :cond_f
    return v0
.end method

.method private static getTopRowEmptySlots(II)I
    .registers 4
    .param p0, "numKeys"    # I
    .param p1, "numColumns"    # I

    .prologue
    .line 166
    rem-int v0, p0, p1

    .line 167
    .local v0, "remainingKeys":I
    if-nez v0, :cond_6

    .line 168
    const/4 v1, 0x0

    .line 170
    :goto_5
    return v1

    :cond_6
    sub-int v1, p1, v0

    goto :goto_5
.end method

.method private isTopRow(I)Z
    .registers 3
    .param p1, "rowCount"    # I

    .prologue
    .line 206
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method getColumnPos(I)I
    .registers 8
    .param p1, "n"    # I

    .prologue
    .line 135
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    rem-int v0, p1, v5

    .line 136
    .local v0, "col":I
    if-nez v0, :cond_8

    .line 138
    const/4 v3, 0x0

    .line 162
    :cond_7
    :goto_7
    return v3

    .line 140
    :cond_8
    const/4 v3, 0x0

    .line 141
    .local v3, "pos":I
    const/4 v4, 0x1

    .line 142
    .local v4, "right":I
    const/4 v2, 0x0

    .line 143
    .local v2, "left":I
    const/4 v1, 0x0

    .line 146
    .local v1, "i":I
    :cond_c
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    if-ge v4, v5, :cond_15

    .line 147
    move v3, v4

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 151
    :cond_15
    if-ge v1, v0, :cond_7

    .line 154
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    if-ge v2, v5, :cond_20

    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    neg-int v3, v2

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 159
    :cond_20
    if-lt v1, v0, :cond_c

    goto :goto_7
.end method

.method public getDefaultKeyCoordX()I
    .registers 3

    .prologue
    .line 183
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getX(II)I
    .registers 6
    .param p1, "n"    # I
    .param p2, "row"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getColumnPos(I)I

    move-result v1

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getDefaultKeyCoordX()I

    move-result v2

    add-int v0, v1, v2

    .line 188
    .local v0, "x":I
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->isTopRow(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 189
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 191
    .end local v0    # "x":I
    :cond_1b
    return v0
.end method

.method public getY(I)I
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 195
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V
    .registers 4
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "row"    # I

    .prologue
    .line 199
    if-nez p2, :cond_5

    .line 200
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 201
    :cond_5
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->isTopRow(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 202
    invoke-virtual {p1, p0}, Lcom/pantech/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 203
    :cond_e
    return-void
.end method

.method public setParameters(IIIIII)V
    .registers 19
    .param p1, "numKeys"    # I
    .param p2, "maxColumns"    # I
    .param p3, "keyWidth"    # I
    .param p4, "rowHeight"    # I
    .param p5, "coordXInParent"    # I
    .param p6, "parentKeyboardWidth"    # I

    .prologue
    .line 78
    iput p3, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    .line 79
    move/from16 v0, p4

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    .line 81
    add-int v10, p1, p2

    add-int/lit8 v10, v10, -0x1

    div-int v7, v10, p2

    .line 82
    .local v7, "numRows":I
    iput v7, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getOptimizedColumns(II)I

    move-result v4

    .line 84
    .local v4, "numColumns":I
    iput v4, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    .line 86
    add-int/lit8 v10, v4, -0x1

    div-int/lit8 v5, v10, 0x2

    .line 87
    .local v5, "numLeftKeys":I
    sub-int v6, v4, v5

    .line 88
    .local v6, "numRightKeys":I
    div-int v2, p5, p3

    .line 89
    .local v2, "maxLeftKeys":I
    const/4 v10, 0x1

    sub-int v11, p6, p5

    div-int/2addr v11, p3

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 92
    .local v3, "maxRightKeys":I
    if-le v5, v2, :cond_7a

    .line 93
    move v1, v2

    .line 94
    .local v1, "leftKeys":I
    sub-int v9, v4, v2

    .line 104
    .local v9, "rightKeys":I
    :goto_29
    mul-int v10, v1, p3

    move/from16 v0, p5

    if-lt v10, v0, :cond_35

    if-lez v1, :cond_35

    .line 105
    add-int/lit8 v1, v1, -0x1

    .line 106
    add-int/lit8 v9, v9, 0x1

    .line 110
    :cond_35
    mul-int v10, v9, p3

    add-int v10, v10, p5

    move/from16 v0, p6

    if-lt v10, v0, :cond_44

    const/4 v10, 0x1

    if-le v9, v10, :cond_44

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    add-int/lit8 v9, v9, -0x1

    .line 114
    :cond_44
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    .line 115
    iput v9, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    .line 118
    if-eqz v1, :cond_4d

    const/4 v10, 0x1

    if-ne v9, v10, :cond_83

    :cond_4d
    const/4 v8, 0x1

    .line 119
    .local v8, "onEdge":Z
    :goto_4e
    const/4 v10, 0x2

    if-lt v7, v10, :cond_5b

    if-nez v8, :cond_5b

    invoke-static {p1, v4}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getTopRowEmptySlots(II)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_85

    .line 120
    :cond_5b
    const/4 v10, 0x0

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    .line 127
    :goto_5e
    iget v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v10, v11

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mOccupiedWidth:I

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBaseWidth:I

    .line 129
    iget v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopPadding:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBottomPadding:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mOccupiedHeight:I

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBaseHeight:I

    .line 131
    return-void

    .line 95
    .end local v1    # "leftKeys":I
    .end local v8    # "onEdge":Z
    .end local v9    # "rightKeys":I
    :cond_7a
    if-le v6, v3, :cond_80

    .line 96
    sub-int v1, v4, v3

    .line 97
    .restart local v1    # "leftKeys":I
    move v9, v3

    .restart local v9    # "rightKeys":I
    goto :goto_29

    .line 99
    .end local v1    # "leftKeys":I
    .end local v9    # "rightKeys":I
    :cond_80
    move v1, v5

    .line 100
    .restart local v1    # "leftKeys":I
    move v9, v6

    .restart local v9    # "rightKeys":I
    goto :goto_29

    .line 118
    :cond_83
    const/4 v8, 0x0

    goto :goto_4e

    .line 121
    .restart local v8    # "onEdge":Z
    :cond_85
    iget v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    iget v11, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_91

    .line 122
    const/4 v10, 0x1

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    goto :goto_5e

    .line 124
    :cond_91
    const/4 v10, -0x1

    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    goto :goto_5e
.end method
