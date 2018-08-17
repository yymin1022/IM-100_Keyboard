.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/pantech/inputmethod/skyime/makedict/Word;",
        ">;"
    }
.end annotation


# instance fields
.field final mCurrentString:Ljava/lang/StringBuilder;

.field final mPositions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "root":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    .line 709
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    .line 710
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    invoke-direct {v0, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;-><init>(Ljava/util/ArrayList;)V

    .line 711
    .local v0, "rootPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 712
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .line 716
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 717
    .local v1, "p":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v2, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 718
    const/4 v2, 0x1

    .line 721
    .end local v1    # "p":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public next()Lcom/pantech/inputmethod/skyime/makedict/Word;
    .registers 12

    .prologue
    .line 726
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 727
    .local v2, "currentPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget v8, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 730
    :cond_16
    :goto_16
    iget-object v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 731
    iget-object v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->pos:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 732
    .local v1, "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v6, v6

    iput v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    .line 733
    iget-object v0, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2f
    if-ge v4, v5, :cond_3f

    aget v3, v0, v4

    .line 734
    .local v3, "i":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 733
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 735
    .end local v3    # "i":I
    :cond_3f
    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v6, :cond_51

    .line 736
    new-instance v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    .end local v2    # "currentPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    iget-object v6, v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;-><init>(Ljava/util/ArrayList;)V

    .line 737
    .restart local v2    # "currentPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 739
    :cond_51
    iget v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-ltz v6, :cond_16

    .line 740
    new-instance v6, Lcom/pantech/inputmethod/skyime/makedict/Word;

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    iget-object v9, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/pantech/inputmethod/skyime/makedict/Word;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v6

    .line 743
    .end local v0    # "arr$":[I
    .end local v1    # "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_67
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 744
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    check-cast v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    .line 745
    .restart local v2    # "currentPos":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mCurrentString:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->mPositions:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;

    iget v6, v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator$Position;->length:I

    sub-int v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_16
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;->next()Lcom/pantech/inputmethod/skyime/makedict/Word;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 752
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
