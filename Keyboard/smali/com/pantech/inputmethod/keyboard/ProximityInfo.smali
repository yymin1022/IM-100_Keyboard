.class public Lcom/pantech/inputmethod/keyboard/ProximityInfo;
.super Ljava/lang/Object;
.source "ProximityInfo.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_KEY_ARRAY:[Lcom/pantech/inputmethod/keyboard/Key;

.field public static final MAX_PROXIMITY_CHARS_SIZE:I = 0x10

.field private static SEARCH_DISTANCE:F


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mGridHeight:I

.field private final mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

.field private final mGridNeighborsOld:[[I

.field private final mGridSize:I

.field private final mGridWidth:I

.field private final mKeyHeight:I

.field private final mKeyboardHeight:I

.field private final mKeyboardMinWidth:I

.field private final mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

.field private final mLocaleStr:Ljava/lang/String;

.field private final mMostCommonKeyWidth:I

.field private mNativeProximityInfo:J

.field private final mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    .line 33
    new-array v0, v1, [Lcom/pantech/inputmethod/keyboard/Key;

    sput-object v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 34
    new-array v0, v1, [I

    sput-object v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 4
    .param p1, "o"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    .line 86
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    .line 87
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    .line 88
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    .line 89
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    .line 90
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    .line 91
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    .line 92
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 93
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    .line 94
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    .line 95
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 96
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    .line 97
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    .line 98
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighborsOld:[[I

    .line 99
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->computeNearestNeighbors()V

    .line 100
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->createNativeProximityInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIII[Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;)V
    .registers 12
    .param p1, "localeStr"    # Ljava/lang/String;
    .param p2, "gridWidth"    # I
    .param p3, "gridHeight"    # I
    .param p4, "minWidth"    # I
    .param p5, "height"    # I
    .param p6, "mostCommonKeyWidth"    # I
    .param p7, "mostCommonKeyHeight"    # I
    .param p8, "keys"    # [Lcom/pantech/inputmethod/keyboard/Key;
    .param p9, "touchPositionCorrection"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    .line 60
    :goto_d
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    .line 61
    iput p3, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    .line 62
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    .line 63
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    .line 64
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    add-int/2addr v0, p5

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    .line 65
    iput p4, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    .line 66
    iput p5, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 67
    iput p7, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    .line 68
    iput p6, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    .line 69
    iput-object p8, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 70
    iput-object p9, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    .line 71
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighborsOld:[[I

    .line 73
    if-eqz p4, :cond_48

    if-nez p5, :cond_4c

    .line 79
    :cond_48
    :goto_48
    return-void

    .line 58
    :cond_49
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mLocaleStr:Ljava/lang/String;

    goto :goto_d

    .line 77
    :cond_4c
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->computeNearestNeighbors()V

    .line 78
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->createNativeProximityInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    goto :goto_48
.end method

.method private computeNearestNeighbors()V
    .registers 30

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mMostCommonKeyWidth:I

    .line 215
    .local v11, "defaultWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    move-object/from16 v19, v0

    .line 216
    .local v19, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v18, "keyCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/pantech/inputmethod/keyboard/Key;>;"
    move-object/from16 v3, v19

    .local v3, "arr$":[Lcom/pantech/inputmethod/keyboard/Key;
    array-length v0, v3

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_15
    move/from16 v0, v20

    if-ge v15, v0, :cond_31

    aget-object v17, v3, v15

    .line 218
    .local v17, "key":Lcom/pantech/inputmethod/keyboard/Key;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 220
    .end local v17    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_31
    int-to-float v0, v11

    move/from16 v26, v0

    sget v27, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 221
    .local v23, "thresholdBase":I
    mul-int v22, v23, v23

    .line 222
    .local v22, "threshold":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 224
    .local v16, "indices":[I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Lcom/pantech/inputmethod/keyboard/Key;

    move-object/from16 v21, v0

    .line 225
    .local v21, "neighborKeys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v27, v0

    mul-int v13, v26, v27

    .line 226
    .local v13, "gridWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v27, v0

    mul-int v12, v26, v27

    .line 227
    .local v12, "gridHeight":I
    const/16 v24, 0x0

    .local v24, "x":I
    :goto_73
    move/from16 v0, v24

    if-ge v0, v13, :cond_139

    .line 228
    const/16 v25, 0x0

    .local v25, "y":I
    :goto_79
    move/from16 v0, v25

    if-ge v0, v12, :cond_12f

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v5, v24, v26

    .line 230
    .local v5, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v6, v25, v26

    .line 231
    .local v6, "centerY":I
    const/4 v7, 0x0

    .line 232
    .local v7, "count":I
    const/4 v9, 0x0

    .line 233
    .local v9, "count2":I
    const/4 v14, -0x1

    .line 234
    .local v14, "i":I
    move-object/from16 v3, v19

    array-length v0, v3

    move/from16 v20, v0

    const/4 v15, 0x0

    move v10, v9

    .end local v9    # "count2":I
    .local v10, "count2":I
    move v8, v7

    .end local v7    # "count":I
    .local v8, "count":I
    :goto_9c
    move/from16 v0, v20

    if-ge v15, v0, :cond_c6

    aget-object v17, v3, v15

    .line 235
    .restart local v17    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    add-int/lit8 v14, v14, 0x1

    .line 236
    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v26

    if-eqz v26, :cond_b1

    move v9, v10

    .end local v10    # "count2":I
    .restart local v9    # "count2":I
    move v7, v8

    .line 234
    .end local v8    # "count":I
    .restart local v7    # "count":I
    :goto_ac
    add-int/lit8 v15, v15, 0x1

    move v10, v9

    .end local v9    # "count2":I
    .restart local v10    # "count2":I
    move v8, v7

    .end local v7    # "count":I
    .restart local v8    # "count":I
    goto :goto_9c

    .line 237
    :cond_b1
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/pantech/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_13a

    .line 238
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "count":I
    .restart local v7    # "count":I
    aput-object v17, v21, v8

    .line 239
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "count2":I
    .restart local v9    # "count2":I
    aput v14, v16, v10

    goto :goto_ac

    .line 242
    .end local v7    # "count":I
    .end local v9    # "count2":I
    .end local v17    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v8    # "count":I
    .restart local v10    # "count2":I
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v26, v0

    div-int v26, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move/from16 v28, v0

    mul-int v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v28, v0

    div-int v28, v24, v28

    add-int v28, v28, v26

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/pantech/inputmethod/keyboard/Key;

    aput-object v26, v27, v28

    .line 244
    new-array v4, v8, [I

    .line 245
    .local v4, "cell":[I
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v4, v2, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighborsOld:[[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v27, v0

    div-int v27, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v28, v0

    div-int v28, v24, v28

    add-int v27, v27, v28

    aput-object v4, v26, v27

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    goto/16 :goto_79

    .line 227
    .end local v4    # "cell":[I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v8    # "count":I
    .end local v10    # "count2":I
    .end local v14    # "i":I
    :cond_12f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    move/from16 v26, v0

    add-int v24, v24, v26

    goto/16 :goto_73

    .line 250
    .end local v25    # "y":I
    :cond_139
    return-void

    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v8    # "count":I
    .restart local v10    # "count2":I
    .restart local v14    # "i":I
    .restart local v17    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v25    # "y":I
    :cond_13a
    move v9, v10

    .end local v10    # "count2":I
    .restart local v9    # "count2":I
    move v7, v8

    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto/16 :goto_ac
.end method

.method public static createDummyProximityInfo()Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 104
    new-instance v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    const-string v1, ""

    sget-object v8, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/pantech/inputmethod/keyboard/Key;

    const/4 v9, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;-><init>(Ljava/lang/String;IIIIII[Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;)V

    return-object v0
.end method

.method private final createNativeProximityInfo()J
    .registers 31

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    .line 134
    .local v2, "gridNeighborKeys":[[Lcom/pantech/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    move/from16 v16, v0

    .line 135
    .local v16, "keyboardWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 136
    .local v15, "keyboardHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    move-object/from16 v17, v0

    .line 137
    .local v17, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    move-object/from16 v25, v0

    .line 138
    .local v25, "touchPositionCorrection":Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x10

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 139
    .local v18, "proximityCharsArray":[I
    const/16 v28, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 140
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v6, v0, :cond_5e

    .line 141
    aget-object v28, v2, v6

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v19, v0

    .line 142
    .local v19, "proximityCharsLength":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_44
    move/from16 v0, v19

    if-ge v7, v0, :cond_5b

    .line 143
    mul-int/lit8 v28, v6, 0x10

    add-int v28, v28, v7

    aget-object v29, v2, v6

    aget-object v29, v29, v7

    move-object/from16 v0, v29

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    move/from16 v29, v0

    aput v29, v18, v28

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 140
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 147
    .end local v7    # "j":I
    .end local v19    # "proximityCharsLength":I
    :cond_5e
    move-object/from16 v0, v17

    array-length v10, v0

    .line 148
    .local v10, "keyCount":I
    new-array v13, v10, [I

    .line 149
    .local v13, "keyXCoordinates":[I
    new-array v14, v10, [I

    .line 150
    .local v14, "keyYCoordinates":[I
    new-array v12, v10, [I

    .line 151
    .local v12, "keyWidths":[I
    new-array v11, v10, [I

    .line 152
    .local v11, "keyHeights":[I
    new-array v9, v10, [I

    .line 157
    .local v9, "keyCharCodes":[I
    const/4 v6, 0x0

    :goto_6c
    if-ge v6, v10, :cond_91

    .line 158
    aget-object v8, v17, v6

    .line 159
    .local v8, "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget v0, v8, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    move/from16 v28, v0

    aput v28, v13, v6

    .line 160
    iget v0, v8, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    move/from16 v28, v0

    aput v28, v14, v6

    .line 161
    iget v0, v8, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v28, v0

    aput v28, v12, v6

    .line 162
    iget v0, v8, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v28, v0

    aput v28, v11, v6

    .line 163
    iget v0, v8, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    move/from16 v28, v0

    aput v28, v9, v6

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 166
    .end local v8    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_91
    if-eqz v25, :cond_11e

    invoke-virtual/range {v25 .. v25}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->isValid()Z

    move-result v28

    if-eqz v28, :cond_11e

    .line 167
    new-array v0, v10, [F

    move-object/from16 v22, v0

    .line 168
    .local v22, "sweetSpotCenterXs":[F
    new-array v0, v10, [F

    move-object/from16 v23, v0

    .line 169
    .local v23, "sweetSpotCenterYs":[F
    new-array v0, v10, [F

    move-object/from16 v24, v0

    .line 170
    .local v24, "sweetSpotRadii":[F
    const/4 v6, 0x0

    :goto_a6
    if-ge v6, v10, :cond_124

    .line 171
    aget-object v8, v17, v6

    .line 172
    .restart local v8    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget-object v3, v8, Lcom/pantech/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 173
    .local v3, "hitBox":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    move/from16 v29, v0

    div-int v21, v28, v29

    .line 174
    .local v21, "row":I
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_11b

    .line 175
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 176
    .local v5, "hitBoxWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 177
    .local v4, "hitBoxHeight":I
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    move-object/from16 v28, v0

    aget v26, v28, v21

    .line 178
    .local v26, "x":F
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    move-object/from16 v28, v0

    aget v27, v28, v21

    .line 179
    .local v27, "y":F
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    move-object/from16 v28, v0

    aget v20, v28, v21

    .line 180
    .local v20, "radius":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v28

    int-to-float v0, v5

    move/from16 v29, v0

    mul-float v29, v29, v26

    add-float v28, v28, v29

    aput v28, v22, v6

    .line 181
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v28

    int-to-float v0, v4

    move/from16 v29, v0

    mul-float v29, v29, v27

    add-float v28, v28, v29

    aput v28, v23, v6

    .line 182
    mul-int v28, v5, v5

    mul-int v29, v4, v4

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v20

    aput v28, v24, v6

    .line 170
    .end local v4    # "hitBoxHeight":I
    .end local v5    # "hitBoxWidth":I
    .end local v20    # "radius":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_11b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    .line 187
    .end local v3    # "hitBox":Landroid/graphics/Rect;
    .end local v8    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v21    # "row":I
    .end local v22    # "sweetSpotCenterXs":[F
    .end local v23    # "sweetSpotCenterYs":[F
    .end local v24    # "sweetSpotRadii":[F
    :cond_11e
    const/16 v24, 0x0

    .restart local v24    # "sweetSpotRadii":[F
    move-object/from16 v23, v24

    .local v23, "sweetSpotCenterYs":Ljava/lang/Object;
    move-object/from16 v22, v24

    .line 190
    .end local v23    # "sweetSpotCenterYs":Ljava/lang/Object;
    :cond_124
    const-wide/16 v28, 0x0

    return-wide v28
.end method

.method public static createSpellCheckerProximityInfo([IIII)Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    .registers 22
    .param p0, "proximity"    # [I
    .param p1, "rowSize"    # I
    .param p2, "gridWidth"    # I
    .param p3, "gridHeight"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->createDummyProximityInfo()Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    move-result-object v0

    .line 110
    .local v0, "spellCheckerProximityInfo":Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    const-string v1, ""

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v17}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(Ljava/lang/String;IIIIII[II[I[I[I[I[I[F[F[F)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    .line 114
    return-object v0
.end method

.method private native releaseProximityInfoNative(J)V
.end method

.method private native setProximityInfoNative(Ljava/lang/String;IIIIII[II[I[I[I[I[I[F[F[F)J
.end method


# virtual methods
.method public fillArrayWithNearestKeyCodes(III[I)V
    .registers 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "primaryKeyCode"    # I
    .param p4, "dest"    # [I

    .prologue
    const/16 v10, 0x20

    .line 253
    array-length v2, p4

    .line 254
    .local v2, "destLength":I
    const/4 v9, 0x1

    if-ge v2, v9, :cond_7

    .line 275
    :cond_6
    :goto_6
    return-void

    .line 257
    :cond_7
    const/4 v4, 0x0

    .line 258
    .local v4, "index":I
    if-le p3, v10, :cond_f

    .line 259
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput p3, p4, v4

    move v4, v5

    .line 261
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v8

    .line 262
    .local v8, "nearestKeys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object v0, v8

    .local v0, "arr$":[Lcom/pantech/inputmethod/keyboard/Key;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :goto_17
    if-ge v3, v7, :cond_1d

    aget-object v6, v0, v3

    .line 263
    .local v6, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-lt v5, v2, :cond_23

    .line 272
    .end local v6    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_1d
    if-ge v5, v2, :cond_6

    .line 273
    const/4 v9, -0x1

    aput v9, p4, v5

    goto :goto_6

    .line 266
    .restart local v6    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_23
    iget v1, v6, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 267
    .local v1, "code":I
    if-le v1, v10, :cond_1d

    .line 270
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput v1, p4, v5

    .line 262
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_17
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 204
    :try_start_2
    iget-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 205
    iget-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->releaseProximityInfoNative(J)V

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 209
    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    return-void

    .line 209
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeProximityInfo()J
    .registers 3

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:J

    return-wide v0
.end method

.method public getNearestKeys(II)[Lcom/pantech/inputmethod/keyboard/Key;
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 278
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    if-nez v1, :cond_7

    .line 279
    sget-object v1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 287
    :goto_6
    return-object v1

    .line 281
    :cond_7
    if-ltz p1, :cond_29

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    if-ge p1, v1, :cond_29

    if-ltz p2, :cond_29

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    if-ge p2, v1, :cond_29

    .line 282
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 283
    .local v0, "index":I
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    if-ge v0, v1, :cond_29

    .line 284
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    aget-object v1, v1, v0

    goto :goto_6

    .line 287
    .end local v0    # "index":I
    :cond_29
    sget-object v1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_KEY_ARRAY:[Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_6
.end method

.method public getNearestKeysOld(II)[I
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 291
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[Lcom/pantech/inputmethod/keyboard/Key;

    if-nez v1, :cond_7

    .line 292
    sget-object v1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 300
    :goto_6
    return-object v1

    .line 294
    :cond_7
    if-ltz p1, :cond_29

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    if-ge p1, v1, :cond_29

    if-ltz p2, :cond_29

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    if-ge p2, v1, :cond_29

    .line 295
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 296
    .local v0, "index":I
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    if-ge v0, v1, :cond_29

    .line 297
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->mGridNeighborsOld:[[I

    aget-object v1, v1, v0

    goto :goto_6

    .line 300
    .end local v0    # "index":I
    :cond_29
    sget-object v1, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    goto :goto_6
.end method
