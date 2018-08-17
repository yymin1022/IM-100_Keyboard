.class public Lcom/pantech/inputmethod/skyime/FileTransforms;
.super Ljava/lang/Object;
.source "FileTransforms.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCryptedStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 27
    return-object p0
.end method

.method public static getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 32
    return-object p0
.end method

.method public static getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
