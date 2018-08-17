.class public Lcom/pantech/inputmethod/skyime/BinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field public static final DICTIONARY_PACK_AUTHORITY:Ljava/lang/String; = "com.pantech.inputmethod.skyime.dictionarypack"

.field private static final MAX_BIGRAMS:I = 0x3c

.field public static final MAX_WORDS:I = 0x24

.field public static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BinaryDictionary"

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private final mBigramScores:[I

.field private mDicTypeId:I

.field private final mInputCodes:[I

.field private mNativeDict:J

.field private final mOutputChars:[C

.field private final mOutputChars_bigrams:[C

.field private final mScores:[I

.field private final mUseFullEditDistance:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "useFullEditDistance"    # Z
    .param p8, "locale"    # Ljava/util/Locale;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 53
    const/16 v0, 0x30

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    .line 54
    const/16 v0, 0x6c0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars:[C

    .line 55
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 56
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mScores:[I

    .line 57
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mBigramScores:[I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mDicTypeId:I

    .line 78
    iput-boolean p7, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mUseFullEditDistance:Z

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 80
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F
    .registers 7
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScoreNative([CI[CII)F

    move-result v0

    return v0
.end method

.method private static native calcNormalizedScoreNative([CI[CII)F
.end method

.method private closeInternal()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 246
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 247
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->closeNative(J)V

    .line 248
    iput-wide v2, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    .line 250
    :cond_f
    return-void
.end method

.method private native closeNative(J)V
.end method

.method public static editDistance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->editDistanceNative([CI[CI)I

    move-result v0

    return v0
.end method

.method private static native editDistanceNative([CI[CI)I
.end method

.method private native getBigramsNative(J[II[II[C[III)I
.end method

.method private native getFrequencyNative(J[II)I
.end method

.method private native getSuggestionsNative(JJ[I[I[II[IZ[C[I)I
.end method

.method private isInPrivateUseArea(C)Z
    .registers 3
    .param p1, "code"    # C

    .prologue
    .line 144
    const v0, 0xe000

    if-lt p1, v0, :cond_c

    const v0, 0xf8ff

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    .line 145
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private native isValidBigramNative(J[I[I)Z
.end method

.method private final loadDictionary(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J

    .prologue
    .line 105
    return-void
.end method

.method private native openNative(Ljava/lang/String;JJIIII)J
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->closeInternal()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->closeInternal()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    return-void

    .line 257
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 22
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-nez v3, :cond_b

    .line 140
    :cond_a
    return-void

    .line 112
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 113
    .local v6, "codePoints":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars_bigrams:[C

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mBigramScores:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v9

    .line 117
    .local v9, "codesSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 118
    if-lez v9, :cond_3f

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->getCodeAt(I)I

    move-result v5

    aput v5, v3, v4

    .line 122
    :cond_3f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    array-length v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mBigramScores:[I

    const/16 v12, 0x30

    const/16 v13, 0x3c

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getBigramsNative(J[II[II[C[III)I

    move-result v2

    .line 124
    .local v2, "count":I
    const/16 v3, 0x3c

    if-le v2, v3, :cond_60

    .line 125
    const/16 v2, 0x3c

    .line 128
    :cond_60
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_62
    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    .line 129
    if-lez v9, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mBigramScores:[I

    aget v3, v3, v17

    const/4 v4, 0x1

    if-lt v3, v4, :cond_a

    .line 130
    :cond_71
    mul-int/lit8 v12, v17, 0x30

    .line 131
    .local v12, "start":I
    const/4 v13, 0x0

    .line 132
    .local v13, "len":I
    :goto_74
    const/16 v3, 0x30

    if-ge v13, v3, :cond_85

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars_bigrams:[C

    add-int v4, v12, v13

    aget-char v3, v3, v4

    if-eqz v3, :cond_85

    .line 133
    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    .line 135
    :cond_85
    if-lez v13, :cond_9c

    .line 136
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mBigramScores:[I

    aget v14, v3, v17

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mDicTypeId:I

    const/16 v16, 0x1

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v16}, Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;->addWord([CIIIII)Z

    .line 128
    :cond_9c
    add-int/lit8 v17, v17, 0x1

    goto :goto_62
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .registers 6
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 226
    if-nez p1, :cond_4

    const/4 v1, -0x1

    .line 228
    :goto_3
    return v1

    .line 227
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 228
    .local v0, "chars":[I
    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    array-length v1, v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getFrequencyNative(J[II)I

    move-result v1

    goto :goto_3
.end method

.method getSuggestions(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/ProximityInfo;[C[I)I
    .registers 22
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    .param p4, "outputChars"    # [C
    .param p5, "scores"    # [I

    .prologue
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidDictionary()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, -0x1

    .line 203
    :goto_7
    return v3

    .line 188
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v11

    .line 190
    .local v11, "codesSize":I
    const/16 v3, 0x2f

    if-le v11, v3, :cond_12

    const/4 v3, -0x1

    goto :goto_7

    .line 192
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v11, :cond_2c

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->getCodeAt(I)I

    move-result v4

    aput v4, v3, v2

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 196
    :cond_2c
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 199
    if-nez p2, :cond_5e

    const/4 v12, 0x0

    .line 203
    .local v12, "prevWordCodePointArray":[I
    :goto_3b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->getNativeProximityInfo()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->getXCoordinates()[I

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->getYCoordinates()[I

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mUseFullEditDistance:Z

    move-object/from16 v3, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v3 .. v15}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getSuggestionsNative(JJ[I[I[II[IZ[C[I)I

    move-result v3

    goto :goto_7

    .line 199
    .end local v12    # "prevWordCodePointArray":[I
    :cond_5e
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v12

    goto :goto_3b
.end method

.method public getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 15
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 153
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars:[C

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mScores:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getSuggestions(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/ProximityInfo;[C[I)I

    move-result v7

    .line 156
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_d
    if-ge v9, v7, :cond_16

    .line 157
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mScores:[I

    aget v0, v0, v9

    const/4 v1, 0x1

    if-ge v0, v1, :cond_17

    .line 176
    :cond_16
    return-void

    .line 158
    :cond_17
    mul-int/lit8 v2, v9, 0x30

    .line 159
    .local v2, "start":I
    const/4 v3, 0x0

    .line 161
    .local v3, "len":I
    const/4 v8, 0x0

    .line 162
    .local v8, "isInPrivateUseArea":Z
    :goto_1b
    const/16 v0, 0x30

    if-ge v3, v0, :cond_36

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars:[C

    add-int v1, v2, v3

    aget-char v0, v0, v1

    if-eqz v0, :cond_36

    if-nez v8, :cond_36

    .line 164
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars:[C

    add-int v1, v2, v3

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isInPrivateUseArea(C)Z

    move-result v8

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 169
    :cond_36
    if-lez v3, :cond_47

    if-nez v8, :cond_47

    .line 172
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mOutputChars:[C

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mScores:[I

    aget v4, v0, v9

    iget v5, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mDicTypeId:I

    const/4 v6, 0x0

    move-object v0, p3

    invoke-interface/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;->addWord([CIIIII)Z

    .line 156
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_d
.end method

.method public isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "word1"    # Ljava/lang/CharSequence;
    .param p2, "word2"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    const/4 v2, 0x0

    .line 237
    :goto_d
    return v2

    .line 235
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 236
    .local v0, "chars1":[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toCodePointArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 237
    .local v1, "chars2":[I
    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidBigramNative(J[I[I)Z

    move-result v2

    goto :goto_d
.end method

.method isValidDictionary()Z
    .registers 5

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->mNativeDict:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
