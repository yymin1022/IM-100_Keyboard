.class public Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;
.source "SynchronouslyLoadedUserBinaryDictionary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "alsoUseMoreRestrictiveLocales"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 6
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;->getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    .line 44
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
