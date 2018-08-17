.class public Lcom/pantech/inputmethod/skyime/StringBuilderPool;
.super Ljava/lang/Object;
.source "StringBuilderPool.java"


# static fields
.field private static final DEBUG:Z

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;


# instance fields
.field private final mPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/StringBuilderPool;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static ensureCapacity(II)V
    .registers 5
    .param p0, "capacity"    # I
    .param p1, "initialSize"    # I

    .prologue
    .line 61
    sget-object v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_8
    if-ge v0, p0, :cond_19

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 65
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_19
    return-void
.end method

.method public static getSize()I
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getStringBuilder(I)Ljava/lang/StringBuilder;
    .registers 5
    .param p0, "initialSize"    # I

    .prologue
    .line 43
    sget-object v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    .local v0, "poolSize":I
    if-lez v0, :cond_1c

    sget-object v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    move-object v1, v2

    .line 46
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_17
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    return-object v1

    .line 44
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_17
.end method

.method public static recycle(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "garbage"    # Ljava/lang/StringBuilder;

    .prologue
    .line 57
    sget-object v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->sInstance:Lcom/pantech/inputmethod/skyime/StringBuilderPool;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->mPool:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
