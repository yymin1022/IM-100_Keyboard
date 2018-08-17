.class Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharGroupComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$1;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I
    .registers 6
    .param p1, "c1"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .param p2, "c2"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .prologue
    const/4 v0, 0x0

    .line 474
    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v1, v1, v0

    iget-object v2, p2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_c

    .line 475
    :goto_b
    return v0

    :cond_c
    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v1, v1, v0

    iget-object v2, p2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v0, v2, v0

    if-ge v1, v0, :cond_18

    const/4 v0, -0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 471
    check-cast p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;->compare(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I

    move-result v0

    return v0
.end method
