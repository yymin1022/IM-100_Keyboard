.class public Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;
.super Ljava/lang/Exception;
.source "UnsupportedFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
