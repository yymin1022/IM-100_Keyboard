.class public Lcom/pantech/inputmethod/skyime/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# static fields
.field private static final N:I = 0x30

.field public static final NOT_A_CODE:I = -0x1

.field public static final NOT_A_COORDINATE:I = -0x1


# instance fields
.field private mAutoCapitalized:Z

.field private mAutoCorrection:Ljava/lang/CharSequence;

.field private mAutomataComposingCount:I

.field private mCapsCount:I

.field private mCodePointSize:I

.field private mIsComposing:Z

.field private mIsFirstCharCapitalized:Z

.field private mIsResumed:Z

.field private mPrimaryKeyCodes:[I

.field private mTrailingSingleQuotesCount:I

.field private mTypedWord:Ljava/lang/StringBuilder;

.field private mXCoordinates:[I

.field private mYCoordinates:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 61
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 64
    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    .line 65
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 66
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 67
    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    .line 68
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/skyime/WordComposer;)V
    .registers 2
    .param p1, "source"    # Lcom/pantech/inputmethod/skyime/WordComposer;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->init(Lcom/pantech/inputmethod/skyime/WordComposer;)V

    .line 73
    return-void
.end method

.method private add(III)V
    .registers 7
    .param p1, "primaryCode"    # I
    .param p2, "keyX"    # I
    .param p3, "keyY"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v0

    .line 190
    .local v0, "newIndex":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 192
    const/16 v1, 0x30

    if-ge v0, v1, :cond_24

    .line 193
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    const/16 v1, 0x20

    if-lt p1, v1, :cond_46

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    :goto_1a
    aput v1, v2, v0

    .line 195
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    aput p2, v1, v0

    .line 196
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    aput p3, v1, v0

    .line 198
    :cond_24
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    invoke-static {v0, p1, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isFirstCharCapitalized(IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    .line 200
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    .line 201
    :cond_38
    const/16 v1, 0x27

    if-ne v1, p1, :cond_48

    .line 202
    iget v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    .line 206
    :goto_42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 207
    return-void

    :cond_46
    move v1, p1

    .line 193
    goto :goto_1a

    .line 204
    :cond_48
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    goto :goto_42
.end method

.method private addKeyInfo(ILcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 9
    .param p1, "codePoint"    # I
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v5, -0x1

    .line 213
    if-eqz p2, :cond_2d

    .line 214
    iget-object v4, p2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 215
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-ne v4, p1, :cond_9

    .line 216
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    iget v5, v1, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 217
    .local v2, "x":I
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    iget v5, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 218
    .local v3, "y":I
    invoke-direct {p0, p1, v2, v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(III)V

    .line 224
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_2c
    return-void

    .line 223
    :cond_2d
    invoke-direct {p0, p1, v5, v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(III)V

    goto :goto_2c
.end method

.method private static isFirstCharCapitalized(IIZ)Z
    .registers 4
    .param p0, "index"    # I
    .param p1, "codePoint"    # I
    .param p2, "previous"    # Z

    .prologue
    .line 163
    if-nez p0, :cond_7

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    .line 164
    :goto_6
    return v0

    :cond_7
    if-eqz p2, :cond_11

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V
    .registers 9
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "keyDetector"    # Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 171
    if-eqz p4, :cond_c

    if-eq p2, v2, :cond_c

    if-eq p3, v2, :cond_c

    if-eq p2, v3, :cond_c

    if-ne p3, v3, :cond_12

    .line 176
    :cond_c
    move v0, p2

    .line 177
    .local v0, "keyX":I
    move v1, p3

    .line 182
    .local v1, "keyY":I
    :goto_e
    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(III)V

    .line 183
    return-void

    .line 179
    .end local v0    # "keyX":I
    .end local v1    # "keyY":I
    :cond_12
    invoke-virtual {p4, p2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getTouchX(I)I

    move-result v0

    .line 180
    .restart local v0    # "keyX":I
    invoke-virtual {p4, p3}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getTouchY(I)I

    move-result v1

    .restart local v1    # "keyY":I
    goto :goto_e
.end method

.method public commitWord(ILjava/lang/String;ILjava/lang/CharSequence;)Lcom/pantech/inputmethod/skyime/LastComposedWord;
    .registers 15
    .param p1, "type"    # I
    .param p2, "committedWord"    # Ljava/lang/String;
    .param p3, "separatorCode"    # I
    .param p4, "prevWord"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x2

    const/16 v5, 0x30

    const/4 v8, 0x0

    .line 357
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    .line 358
    .local v1, "primaryKeyCodes":[I
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    .line 359
    .local v2, "xCoordinates":[I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    .line 360
    .local v3, "yCoordinates":[I
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    .line 361
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    .line 362
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    .line 363
    new-instance v0, Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/LastComposedWord;-><init>([I[I[ILjava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 366
    .local v0, "lastComposedWord":Lcom/pantech/inputmethod/skyime/LastComposedWord;
    if-eq p1, v9, :cond_2c

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2c

    .line 368
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->deactivate()V

    .line 372
    :cond_2c
    if-ne p1, v9, :cond_37

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->didCommitTypedWord()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 374
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->deactivate()V

    .line 377
    :cond_37
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 378
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 379
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 380
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 382
    iput v8, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    .line 383
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->finishComposingWord()V

    .line 384
    return-object v0
.end method

.method public deleteLast()V
    .registers 7

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v2

    .line 245
    .local v2, "size":I
    if-lez v2, :cond_38

    .line 247
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 248
    .local v3, "stringBuilderLength":I
    if-ge v3, v2, :cond_16

    .line 249
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "In WordComposer: mCodes and mTypedWords have non-matching lengths"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    :cond_16
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v1

    .line 253
    .local v1, "lastChar":I
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 254
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 258
    :goto_29
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v4

    if-eqz v4, :cond_35

    iget v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    .line 259
    :cond_35
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 262
    .end local v1    # "lastChar":I
    .end local v3    # "stringBuilderLength":I
    :cond_38
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v4

    if-nez v4, :cond_41

    .line 263
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    .line 265
    :cond_41
    iget v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    if-lez v4, :cond_57

    .line 266
    iget v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    .line 275
    :cond_4b
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 276
    return-void

    .line 256
    .restart local v1    # "lastChar":I
    .restart local v3    # "stringBuilderLength":I
    :cond_4f
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 268
    .end local v1    # "lastChar":I
    .end local v3    # "stringBuilderLength":I
    :cond_57
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 269
    .local v0, "i":I
    :goto_5d
    if-lez v0, :cond_4b

    .line 270
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    .line 271
    const/16 v4, 0x27

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v5

    if-ne v4, v5, :cond_4b

    .line 272
    iget v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    goto :goto_5d
.end method

.method public declared-synchronized finishComposingWord()V
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z

    if-eqz v0, :cond_8

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 132
    :cond_8
    monitor-exit p0

    return-void

    .line 129
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAutoCorrectionOrNull()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutomataComposingCount()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    return v0
.end method

.method public getCodeAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 140
    const/16 v0, 0x30

    if-lt p1, v0, :cond_6

    .line 141
    const/4 v0, -0x1

    .line 143
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    aget v0, v0, p1

    goto :goto_5
.end method

.method public getTypedWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXCoordinates()[I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    return-object v0
.end method

.method public getYCoordinates()[I
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    return-object v0
.end method

.method public init(Lcom/pantech/inputmethod/skyime/WordComposer;)V
    .registers 5
    .param p1, "source"    # Lcom/pantech/inputmethod/skyime/WordComposer;

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 78
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    .line 79
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    .line 80
    iget v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    .line 81
    iget-boolean v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    .line 82
    iget-boolean v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCapitalized:Z

    .line 83
    iget v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    .line 84
    iget-boolean v0, p1, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 85
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 86
    iput v2, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    .line 87
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z

    .line 88
    return-void
.end method

.method public isAllUpperCase()Z
    .registers 3

    .prologue
    .line 303
    iget v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAutoCapitalized()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isComposing()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z

    return v0
.end method

.method public final isComposingWord()Z
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFirstCharCapitalized()Z
    .registers 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 310
    iget v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isResumed()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    return v0
.end method

.method public final refreshSize()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->codePointCount(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCodePointSize:I

    .line 107
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 96
    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCapsCount:I

    .line 97
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsFirstCharCapitalized:Z

    .line 98
    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    .line 99
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 100
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 101
    iput v1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    .line 102
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->finishComposingWord()V

    .line 103
    return-void
.end method

.method public resumeSuggestionOnLastComposedWord(Lcom/pantech/inputmethod/skyime/LastComposedWord;)V
    .registers 4
    .param p1, "lastComposedWord"    # Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .prologue
    .line 388
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mPrimaryKeyCodes:[I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mPrimaryKeyCodes:[I

    .line 389
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mXCoordinates:[I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mXCoordinates:[I

    .line 390
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mYCoordinates:[I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mYCoordinates:[I

    .line 391
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mTypedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->refreshSize()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 396
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .registers 2
    .param p1, "auto"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCapitalized:Z

    .line 320
    return-void
.end method

.method public setAutoCorrection(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "correction"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutoCorrection:Ljava/lang/CharSequence;

    .line 335
    return-void
.end method

.method public setAutomataComposingCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mAutomataComposingCount:I

    .line 156
    return-void
.end method

.method public setComposingWord(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 7
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v3, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->reset()V

    .line 232
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 233
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_17

    .line 234
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 235
    .local v0, "codePoint":I
    invoke-direct {p0, v0, p2}, Lcom/pantech/inputmethod/skyime/WordComposer;->addKeyInfo(ILcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 233
    invoke-static {p1, v1, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_9

    .line 237
    .end local v0    # "codePoint":I
    :cond_17
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsResumed:Z

    .line 238
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mCodePointSize:I

    return v0
.end method

.method public declared-synchronized startComposingWord()V
    .registers 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z

    if-nez v0, :cond_8

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mIsComposing:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 126
    :cond_8
    monitor-exit p0

    return-void

    .line 123
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trailingSingleQuotesCount()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/pantech/inputmethod/skyime/WordComposer;->mTrailingSingleQuotesCount:I

    return v0
.end method
