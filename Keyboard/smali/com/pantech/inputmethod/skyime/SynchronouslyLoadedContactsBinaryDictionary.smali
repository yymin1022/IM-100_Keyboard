.class public Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;
.source "SynchronouslyLoadedContactsBinaryDictionary.java"


# instance fields
.field private mClosed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 29
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;-><init>(Landroid/content/Context;ILjava/util/Locale;)V

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_7

    .line 54
    :goto_5
    monitor-exit p0

    return-void

    .line 52
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->mClosed:Z

    .line 53
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_5

    .line 51
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
    .line 36
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->syncReloadDictionaryIfRequired()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result v0

    monitor-exit p0

    return v0

    .line 42
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
