.class public Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;
.super Ljava/lang/Object;
.source "UserHistoryDictionaryBigramList.java"


# static fields
.field private static final EMPTY_BIGRAM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORGETTING_CURVE_INITIAL_VALUE:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBigramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->EMPTY_BIGRAM_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    return-void
.end method


# virtual methods
.method public addBigram(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 47
    return-void
.end method

.method public addBigram(Ljava/lang/String;Ljava/lang/String;B)V
    .registers 6
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "fcValue"    # B

    .prologue
    .line 57
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 58
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 63
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :goto_10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 64
    iget v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    .line 65
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_23
    return-void

    .line 60
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method public evictAll()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    .line 39
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 40
    return-void
.end method

.method public getBigrams(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p1, "word1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->EMPTY_BIGRAM_MAP:Ljava/util/HashMap;

    .line 104
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 110
    .local v0, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 118
    :cond_b
    :goto_b
    return v1

    .line 113
    :cond_c
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 114
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    .line 116
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public size()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mSize:I

    return v0
.end method

.method public updateBigram(Ljava/lang/String;Ljava/lang/String;B)V
    .registers 6
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "fcValue"    # B

    .prologue
    .line 77
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 78
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->mBigramMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 82
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 86
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_16
    :goto_16
    return-void

    .line 85
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    :cond_17
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method
