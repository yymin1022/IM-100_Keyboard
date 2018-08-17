.class public Lcom/pantech/inputmethod/skyime/DictionaryCollection;
.super Lcom/pantech/inputmethod/skyime/Dictionary;
.source "DictionaryCollection.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected final mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 31
    const-class v0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "dictionaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 31
    const-class v0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method

.method public varargs constructor <init>([Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 4
    .param p1, "dictionaries"    # [Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 31
    const-class v0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->TAG:Ljava/lang/String;

    .line 39
    if-nez p1, :cond_15

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    :goto_14
    return-void

    .line 42
    :cond_15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_14
.end method


# virtual methods
.method public addDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 5
    .param p1, "newDict"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 97
    if-nez p1, :cond_3

    .line 102
    :goto_2
    return-void

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 99
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This collection already contains this dictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_23
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public close()V
    .registers 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 92
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    goto :goto_6

    .line 93
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_16
    return-void
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 7
    .param p1, "composer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 63
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/Dictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_6

    .line 64
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_16
    return-void
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .registers 6
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    const/4 v1, -0x1

    .line 76
    .local v1, "maxFreq":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1d

    .line 77
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/Dictionary;

    invoke-virtual {v3, p1}, Lcom/pantech/inputmethod/skyime/Dictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v2

    .line 78
    .local v2, "tempFreq":I
    if-lt v2, v1, :cond_1a

    .line 79
    move v1, v2

    .line 76
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 82
    .end local v2    # "tempFreq":I
    :cond_1d
    return v1
.end method

.method public getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 8
    .param p1, "composer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 56
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/Dictionary;->getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_6

    .line 57
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_16
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 69
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/Dictionary;

    invoke-virtual {v1, p1}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 70
    :goto_19
    return v1

    .line 68
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 70
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public removeDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 5
    .param p1, "dict"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->mDictionaries:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    :goto_d
    return-void

    .line 109
    :cond_e
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This collection does not contain this dictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
