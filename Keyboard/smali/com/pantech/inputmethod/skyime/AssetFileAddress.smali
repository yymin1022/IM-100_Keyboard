.class Lcom/pantech/inputmethod/skyime/AssetFileAddress;
.super Ljava/lang/Object;
.source "AssetFileAddress.java"


# instance fields
.field public final mFilename:Ljava/lang/String;

.field public final mLength:J

.field public final mOffset:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mFilename:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mOffset:J

    .line 35
    iput-wide p4, p0, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mLength:J

    .line 36
    return-void
.end method

.method public static makeFromFileName(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_4

    .line 42
    :cond_3
    :goto_3
    return-object v0

    .line 40
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    new-instance v0, Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/AssetFileAddress;-><init>(Ljava/lang/String;JJ)V

    goto :goto_3
.end method

.method public static makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .registers 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p0, :cond_4

    .line 50
    :cond_3
    :goto_3
    return-object v0

    .line 48
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    new-instance v0, Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/AssetFileAddress;-><init>(Ljava/lang/String;JJ)V

    goto :goto_3
.end method
