.class public Lcom/pantech/inputmethod/skyime/makedict/Word;
.super Ljava/lang/Object;
.source "Word.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/pantech/inputmethod/skyime/makedict/Word;",
        ">;"
    }
.end annotation


# instance fields
.field final mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field final mFrequency:I

.field private mHashCode:I

.field final mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .local p4, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mHashCode:I

    .line 40
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    .line 42
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    .line 43
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private static computeHashCode(Lcom/pantech/inputmethod/skyime/makedict/Word;)I
    .registers 4
    .param p0, "word"    # Lcom/pantech/inputmethod/skyime/makedict/Word;

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/pantech/inputmethod/skyime/makedict/Word;)I
    .registers 4
    .param p1, "w"    # Lcom/pantech/inputmethod/skyime/makedict/Word;

    .prologue
    .line 63
    iget v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    iget v1, p1, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    .line 65
    :goto_7
    return v0

    .line 64
    :cond_8
    iget v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    iget v1, p1, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    if-le v0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_7

    .line 65
    :cond_10
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lcom/pantech/inputmethod/skyime/makedict/Word;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/makedict/Word;->compareTo(Lcom/pantech/inputmethod/skyime/makedict/Word;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p1, p0, :cond_5

    .line 79
    :cond_4
    :goto_4
    return v1

    .line 77
    :cond_5
    instance-of v3, p1, Lcom/pantech/inputmethod/skyime/makedict/Word;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/Word;

    .line 79
    .local v0, "w":Lcom/pantech/inputmethod/skyime/makedict/Word;
    iget v3, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_32
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mHashCode:I

    if-nez v0, :cond_a

    .line 87
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/Word;->computeHashCode(Lcom/pantech/inputmethod/skyime/makedict/Word;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mHashCode:I

    .line 89
    :cond_a
    iget v0, p0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mHashCode:I

    return v0
.end method
