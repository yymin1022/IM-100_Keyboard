.class public Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/inputmethodservice/InputMethodService;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mUsabilityStudy:Z

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 199
    new-instance v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnabled:Z

    .line 205
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 206
    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    .line 207
    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    .line 208
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    .line 209
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mXBuf:[I

    .line 210
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mYBuf:[I

    .line 214
    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;
    .registers 5
    .param p0, "context"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "enabled"    # Z
    .param p2, "usabilityStudy"    # Z

    .prologue
    .line 222
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    iput-object p0, v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    .line 223
    sget-object v1, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    if-nez p1, :cond_a

    if-eqz p2, :cond_1b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnabled:Z

    .line 224
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    iput-boolean p2, v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 225
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 226
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    return-object v0

    .line 223
    :cond_1b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private normalize(I)I
    .registers 3
    .param p1, "in"    # I

    .prologue
    .line 230
    rem-int/lit8 v0, p1, 0x14

    .line 231
    .local v0, "ret":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x14

    .end local v0    # "ret":I
    :cond_6
    return v0
.end method


# virtual methods
.method public getBackwardNthChar(I)C
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 260
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    if-le v0, p1, :cond_6

    if-gez p1, :cond_a

    .line 261
    :cond_6
    const v0, 0xfffc

    .line 263
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_9
.end method

.method public getLastWord(I)Ljava/lang/String;
    .registers 7
    .param p1, "ignoreCharCount"    # I

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .line 290
    .local v1, "i":I
    :goto_6
    iget v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_21

    .line 291
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 292
    .local v0, "c":C
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_42

    .line 296
    .end local v0    # "c":C
    :cond_21
    :goto_21
    iget v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_45

    .line 297
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 298
    .restart local v0    # "c":C
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_45

    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 290
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 304
    .end local v0    # "c":C
    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPreviousX(CI)I
    .registers 6
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 268
    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 269
    .local v0, "index":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1b

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 271
    :cond_1b
    const/4 v1, -0x2

    .line 273
    :goto_1c
    return v1

    :cond_1d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_1c
.end method

.method public getPreviousY(CI)I
    .registers 6
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 278
    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 279
    .local v0, "index":I
    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1b

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 281
    :cond_1b
    const/4 v1, -0x2

    .line 283
    :goto_1c
    return v1

    :cond_1d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_1c
.end method

.method public pop()C
    .registers 3

    .prologue
    .line 250
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 251
    const v0, 0xfffc

    .line 255
    :goto_8
    return v0

    .line 253
    :cond_9
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    .line 254
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    .line 255
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_8
.end method

.method public push(CII)V
    .registers 6
    .param p1, "c"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_5

    .line 247
    :cond_4
    :goto_4
    return-void

    .line 237
    :cond_5
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mUsabilityStudy:Z

    if-eqz v0, :cond_10

    .line 238
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->writeChar(CII)V

    .line 240
    :cond_10
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 241
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 243
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mEnd:I

    .line 244
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 245
    iget v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    goto :goto_4
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->mLength:I

    .line 309
    return-void
.end method
