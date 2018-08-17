.class Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileAndMatchLevel"
.end annotation


# instance fields
.field final mFile:Ljava/io/File;

.field final mMatchLevel:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "matchLevel"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;->mFile:Ljava/io/File;

    .line 251
    iput p2, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;->mMatchLevel:I

    .line 252
    return-void
.end method
