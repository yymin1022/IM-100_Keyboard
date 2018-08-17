.class public Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;
.super Lcom/pantech/inputmethod/skyime/UserDictionary;
.source "SynchronouslyLoadedUserDictionary.java"


# instance fields
.field private mClosed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "alsoUseMoreRestrictiveLocales"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_7

    .line 55
    :goto_5
    monitor-exit p0

    return-void

    .line 53
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;->mClosed:Z

    .line 54
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_5

    .line 52
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 6
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;->getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserDictionary;->blockingReloadDictionaryIfRequired()V

    .line 46
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/skyime/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    .line 45
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
