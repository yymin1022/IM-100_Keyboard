.class public Lcom/pantech/inputmethod/skyime/AutomataEng;
.super Ljava/lang/Object;
.source "AutomataEng.java"

# interfaces
.implements Lcom/pantech/inputmethod/skyime/Automata;


# static fields
.field private static final DEBUG:Z

.field public static final ENG_TYPE_MULTITAP:I = 0xa

.field private static final IDX_0:I = 0x0

.field private static final IDX_MAX:I = 0x1

.field private static final INITIAL_CODE_TABLE:[C

.field private static final INVALID_INDEX:I = 0x0

.field public static final KEYCODE_BASE:I = 0x7d1

.field public static final KEYCODE_MAX:I = 0x7ea

.field private static final LOCAL_CODE_BACKSPACE:I = -0x5

.field private static final LOCAL_INPUT_FIRST:I = 0x0

.field private static final LOCAL_INPUT_REPEAT:I = 0x1

.field private static final LOCAL_STATE_0:I = 0x0

.field private static final LOCAL_STATE_1:I = 0x1

.field private static final MULTI_ENGLISH_TABLE:[[I

.field private static final NUM_ALPHA_KEYPAD:I = 0x1a

.field private static final TAG:Ljava/lang/String;

.field private static mIsShift:Z


# instance fields
.field private mCodeIdx:[I

.field private mComposingText:Ljava/lang/StringBuilder;

.field private mInputType:I

.field private mMultitapCount:I

.field private mNewTextLength:I

.field private mPrevKeyCode:I

.field private mShiftIdx:[Z

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 10
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    .line 11
    const-class v0, Lcom/pantech/inputmethod/skyime/AutomataEng;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    .line 17
    sput-boolean v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    .line 227
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_68

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_8a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_96

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->MULTI_ENGLISH_TABLE:[[I

    .line 283
    const/16 v0, 0x23

    new-array v0, v0, [C

    fill-array-data v0, :array_d2

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->INITIAL_CODE_TABLE:[C

    return-void

    .line 227
    nop

    :array_68
    .array-data 4
        0x11
        0x1a
        0x1b
    .end array-data

    :array_72
    .array-data 4
        0x1
        0x2
        0x3
        0x1c
    .end array-data

    :array_7e
    .array-data 4
        0x4
        0x5
        0x6
        0x1d
    .end array-data

    :array_8a
    .array-data 4
        0x7
        0x8
        0x9
        0x1e
    .end array-data

    :array_96
    .array-data 4
        0xa
        0xb
        0xc
        0x1f
    .end array-data

    :array_a2
    .array-data 4
        0xd
        0xe
        0xf
        0x20
    .end array-data

    :array_ae
    .array-data 4
        0x10
        0x12
        0x13
        0x21
    .end array-data

    :array_ba
    .array-data 4
        0x14
        0x15
        0x16
        0x22
    .end array-data

    :array_c6
    .array-data 4
        0x17
        0x18
        0x19
        0x23
    .end array-data

    .line 283
    :array_d2
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    .line 36
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    .line 37
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    .line 42
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mInputType:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    .line 45
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mNewTextLength:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    .line 50
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    .line 53
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->init()V

    .line 54
    return-void
.end method

.method private clearComposingText()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mNewTextLength:I

    .line 175
    return-void
.end method

.method private getCharCodeFromIndex(IIIZ)C
    .registers 8
    .param p1, "indexI"    # I
    .param p2, "indexM"    # I
    .param p3, "indexF"    # I
    .param p4, "isShift"    # Z

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "code":I
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    .line 294
    int-to-char v1, v0

    .line 302
    :goto_8
    return v1

    .line 295
    :cond_9
    if-nez p2, :cond_1f

    if-nez p3, :cond_1f

    .line 296
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->INITIAL_CODE_TABLE:[C

    add-int/lit8 v2, p1, -0x1

    aget-char v0, v1, v2

    .line 297
    if-eqz p4, :cond_1d

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 298
    add-int/lit8 v0, v0, -0x20

    .line 299
    :cond_1d
    int-to-char v1, v0

    goto :goto_8

    .line 302
    :cond_1f
    int-to-char v1, v0

    goto :goto_8
.end method

.method private getMultiConsonant(I)I
    .registers 9
    .param p1, "codeIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mInputType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7e

    .line 260
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->MULTI_ENGLISH_TABLE:[[I

    .line 264
    .local v2, "table":[[I
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v4, :cond_31

    .line 265
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiConsonant: codeIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMultitapCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_31
    const/4 v0, 0x0

    .line 268
    .local v0, "consonant":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    array-length v4, v2

    if-ge v1, v4, :cond_7d

    .line 269
    aget-object v4, v2, v1

    aget v4, v4, v3

    if-ne v4, p1, :cond_80

    .line 270
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    aget-object v5, v2, v1

    array-length v5, v5

    if-lt v4, v5, :cond_45

    .line 271
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    .line 272
    :cond_45
    aget-object v3, v2, v1

    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    aget v0, v3, v4

    .line 273
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v3, :cond_7d

    .line 274
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiConsonant: codeIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMultitapCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " consonant="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0    # "consonant":I
    .end local v1    # "i":I
    .end local v2    # "table":[[I
    :cond_7d
    :goto_7d
    return v0

    :cond_7e
    move v0, v3

    .line 262
    goto :goto_7d

    .line 268
    .restart local v0    # "consonant":I
    .restart local v1    # "i":I
    .restart local v2    # "table":[[I
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method

.method private processBackspace()Z
    .registers 5

    .prologue
    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "result":Z
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 180
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackspace: mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1f
    iget v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    packed-switch v1, :pswitch_data_52

    .line 191
    :goto_24
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 192
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackspace: after, mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_42
    iget v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataEng;->setComposingText(I)V

    .line 196
    return v0

    .line 183
    :pswitch_48
    const/4 v0, 0x0

    .line 184
    goto :goto_24

    .line 187
    :pswitch_4a
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    .line 188
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->init()V

    goto :goto_24

    .line 181
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4a
    .end packed-switch
.end method

.method private processState1_I(II)V
    .registers 8
    .param p1, "codeIndex"    # I
    .param p2, "repeatKey"    # I

    .prologue
    const/4 v4, 0x0

    .line 201
    packed-switch p2, :pswitch_data_6c

    .line 221
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processState1_I: invalid type, repeatKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codeIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_26
    :goto_26
    return-void

    .line 203
    :pswitch_27
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    aget-boolean v2, v2, v4

    invoke-direct {p0, v1, v4, v4, v2}, Lcom/pantech/inputmethod/skyime/AutomataEng;->setCompletedText(IIIZ)V

    .line 204
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    aput p1, v1, v4

    .line 205
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    sget-boolean v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    aput-boolean v2, v1, v4

    goto :goto_26

    .line 209
    :pswitch_3d
    const/4 v0, 0x0

    .line 210
    .local v0, "newInitial":I
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataEng;->getMultiConsonant(I)I

    move-result v0

    .line 211
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v1, :cond_5e

    .line 212
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newInitial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5e
    if-lez v0, :cond_26

    .line 214
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    aput v0, v1, v4

    .line 215
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    sget-boolean v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    aput-boolean v2, v1, v4

    goto :goto_26

    .line 201
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_3d
    .end packed-switch
.end method

.method private setCompletedText(IIIZ)V
    .registers 7
    .param p1, "indexI"    # I
    .param p2, "indexM"    # I
    .param p3, "indexF"    # I
    .param p4, "isShift"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/AutomataEng;->getCharCodeFromIndex(IIIZ)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mNewTextLength:I

    .line 309
    return-void
.end method

.method private setComposingText(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 313
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 314
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingText: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1d
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    packed-switch v0, :pswitch_data_38

    .line 324
    :goto_22
    return-void

    .line 317
    :pswitch_23
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->init()V

    goto :goto_22

    .line 321
    :pswitch_27
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    aget v1, v1, v3

    sget-boolean v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/pantech/inputmethod/skyime/AutomataEng;->getCharCodeFromIndex(IIIZ)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 315
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public complete2Composing(C)V
    .registers 2
    .param p1, "lastChar"    # C

    .prologue
    .line 336
    return-void
.end method

.method public destory()V
    .registers 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->init()V

    .line 62
    return-void
.end method

.method public getComposingText()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mComposingText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getNewTextLength()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mNewTextLength:I

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    .line 83
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->clearComposingText()V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->resetMultitap()V

    .line 85
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 86
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 87
    sput-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    .line 88
    return-void
.end method

.method public isBackspace(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 103
    const/4 v0, -0x5

    if-ne p1, v0, :cond_5

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isEqualPrevKey(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    if-nez v0, :cond_a

    .line 77
    :cond_8
    const/4 v0, 0x1

    .line 78
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMultiTapTime()Z
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    if-ltz v0, :cond_6

    .line 71
    const/4 v0, 0x1

    .line 72
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMultitapActive()Z
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValidCode(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 110
    const/16 v0, 0x7d1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7ea

    if-gt p1, v0, :cond_a

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public processKey(I)Z
    .registers 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->clearComposingText()V

    .line 119
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v4, :cond_39

    .line 120
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processKey: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPrevKeyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mInputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mInputType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_39
    const/4 v4, -0x5

    if-ne p1, v4, :cond_41

    .line 124
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataEng;->processBackspace()Z

    move-result v2

    .line 169
    :cond_40
    :goto_40
    return v2

    .line 127
    :cond_41
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataEng;->isValidCode(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 131
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mInputType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_57

    .line 132
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    if-ne v4, p1, :cond_ad

    .line 133
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    .line 139
    :cond_57
    :goto_57
    const/4 v0, 0x0

    .line 140
    .local v0, "codeIndex":I
    const/4 v1, -0x1

    .line 142
    .local v1, "repeatKey":I
    const/4 v1, 0x0

    .line 143
    add-int/lit16 v4, p1, -0x7d1

    add-int/lit8 v0, v4, 0x1

    .line 144
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    if-ne v4, p1, :cond_63

    .line 145
    const/4 v1, 0x1

    .line 147
    :cond_63
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v4, :cond_81

    .line 148
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processKey: mStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_81
    iput p1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    .line 152
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    packed-switch v4, :pswitch_data_c2

    .line 164
    :goto_88
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->DEBUG:Z

    if-eqz v2, :cond_a6

    .line 165
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataEng;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processHangeul: mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_a6
    iget v2, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataEng;->setComposingText(I)V

    move v2, v3

    .line 169
    goto :goto_40

    .line 135
    .end local v0    # "codeIndex":I
    .end local v1    # "repeatKey":I
    :cond_ad
    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    goto :goto_57

    .line 154
    .restart local v0    # "codeIndex":I
    .restart local v1    # "repeatKey":I
    :pswitch_b0
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mStatus:I

    .line 155
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mCodeIdx:[I

    aput v0, v4, v2

    .line 156
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mShiftIdx:[Z

    sget-boolean v5, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    aput-boolean v5, v4, v2

    goto :goto_88

    .line 160
    :pswitch_bd
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataEng;->processState1_I(II)V

    goto :goto_88

    .line 152
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_bd
    .end packed-switch
.end method

.method public reCompose(C)Z
    .registers 3
    .param p1, "lastChar"    # C

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public resetMultitap()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mMultitapCount:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mPrevKeyCode:I

    .line 67
    return-void
.end method

.method public setInputType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/pantech/inputmethod/skyime/AutomataEng;->mInputType:I

    .line 58
    return-void
.end method

.method public setShift(Z)V
    .registers 2
    .param p1, "shift"    # Z

    .prologue
    .line 91
    sput-boolean p1, Lcom/pantech/inputmethod/skyime/AutomataEng;->mIsShift:Z

    .line 92
    return-void
.end method
