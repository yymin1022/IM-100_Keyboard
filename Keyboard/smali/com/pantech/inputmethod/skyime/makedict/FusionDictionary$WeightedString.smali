.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedString"
.end annotation


# instance fields
.field mFrequency:I

.field final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p1, p0, :cond_5

    .line 81
    :cond_4
    :goto_4
    return v1

    .line 79
    :cond_5
    instance-of v3, p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 81
    .local v0, "w":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-eq v3, v4, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
