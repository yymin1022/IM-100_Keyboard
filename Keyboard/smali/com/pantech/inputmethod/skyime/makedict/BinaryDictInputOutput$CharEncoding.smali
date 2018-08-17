.class Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;
.super Ljava/lang/Object;
.source "BinaryDictInputOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharEncoding"
.end annotation


# static fields
.field private static final MAXIMAL_ONE_BYTE_CHARACTER_VALUE:I = 0xff

.field private static final MINIMAL_ONE_BYTE_CHARACTER_VALUE:I = 0x20


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([I)I
    .registers 2
    .param p0, "x0"    # [I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharArraySize([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([I[BI)I
    .registers 4
    .param p0, "x0"    # [I
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 191
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->writeCharArray([I[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([BILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->writeString([BILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/io/RandomAccessFile;)I
    .registers 2
    .param p0, "x0"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Ljava/io/RandomAccessFile;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fitsOnOneByte(I)Z
    .registers 2
    .param p0, "character"    # I

    .prologue
    .line 200
    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static getCharArraySize([I)I
    .registers 7
    .param p0, "chars"    # [I

    .prologue
    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, "size":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_10

    aget v1, v0, v2

    .local v1, "character":I
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    .end local v1    # "character":I
    :cond_10
    return v4
.end method

.method private static getCharSize(I)I
    .registers 3
    .param p0, "character"    # I

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->fitsOnOneByte(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 225
    :cond_7
    :goto_7
    return v0

    .line 224
    :cond_8
    const/4 v1, -0x1

    if-eq v1, p0, :cond_7

    .line 225
    const/4 v0, 0x3

    goto :goto_7
.end method

.method private static readChar(Ljava/io/RandomAccessFile;)I
    .registers 3
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    .line 332
    .local v0, "character":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->fitsOnOneByte(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 333
    const/16 v1, 0x1f

    if-ne v1, v0, :cond_10

    .line 334
    const/4 v1, -0x1

    .line 338
    :goto_f
    return v1

    .line 335
    :cond_10
    shl-int/lit8 v0, v0, 0x10

    .line 336
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    move v1, v0

    .line 338
    goto :goto_f
.end method

.method private static readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v1, "s":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 315
    .local v0, "character":I
    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->readChar(Ljava/io/RandomAccessFile;)I

    move-result v0

    goto :goto_9

    .line 319
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static writeCharArray([I[BI)I
    .registers 10
    .param p0, "codePoints"    # [I
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, p2

    .end local p2    # "index":I
    .local v3, "index":I
    :goto_4
    if-ge v2, v4, :cond_32

    aget v1, v0, v2

    .line 247
    .local v1, "codePoint":I
    const/4 v5, 0x1

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v6

    if-ne v5, v6, :cond_18

    .line 248
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "index":I
    .restart local p2    # "index":I
    int-to-byte v5, v1

    aput-byte v5, p1, v3

    .line 246
    :goto_14
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "index":I
    .restart local v3    # "index":I
    goto :goto_4

    .line 250
    :cond_18
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "index":I
    .restart local p2    # "index":I
    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 251
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "index":I
    .restart local v3    # "index":I
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 252
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "index":I
    .restart local p2    # "index":I
    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    goto :goto_14

    .line 255
    .end local v1    # "codePoint":I
    .end local p2    # "index":I
    .restart local v3    # "index":I
    :cond_32
    return v3
.end method

.method private static writeString([BILjava/lang/String;)I
    .registers 10
    .param p0, "buffer"    # [B
    .param p1, "origin"    # I
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 270
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 271
    .local v4, "length":I
    move v2, p1

    .line 272
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_8
    if-ge v1, v4, :cond_39

    .line 273
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 274
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v5

    if-ne v6, v5, :cond_1f

    .line 275
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    int-to-byte v5, v0

    aput-byte v5, p0, v3

    .line 272
    :goto_19
    invoke-virtual {p2, v1, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_8

    .line 277
    :cond_1f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    .line 278
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v2

    .line 279
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    goto :goto_19

    .line 282
    .end local v0    # "codePoint":I
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_39
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/16 v5, 0x1f

    aput-byte v5, p0, v3

    .line 283
    sub-int v5, v2, p1

    return v5
.end method

.method private static writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 7
    .param p0, "buffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_32

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 298
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->getCharSize(I)I

    move-result v3

    if-ne v4, v3, :cond_1b

    .line 299
    int-to-byte v3, v0

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    :goto_16
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_6

    .line 301
    :cond_1b
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 302
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 303
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_16

    .line 306
    .end local v0    # "codePoint":I
    :cond_32
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    return-void
.end method
