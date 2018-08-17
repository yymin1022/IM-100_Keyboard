.class public Lcom/pantech/inputmethod/skyime/UserDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.source "UserDictionary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field private static final PROJECTION_QUERY:[Ljava/lang/String;

.field static final SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAlsoUseMoreRestrictiveLocales:Z

.field private final mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "alsoUseMoreRestrictiveLocales"    # Z

    .prologue
    .line 63
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 64
    if-nez p2, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 65
    :cond_c
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mLocale:Ljava/lang/String;

    .line 66
    iput-boolean p3, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, "cres":Landroid/content/ContentResolver;
    new-instance v1, Lcom/pantech/inputmethod/skyime/UserDictionary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/inputmethod/skyime/UserDictionary$1;-><init>(Lcom/pantech/inputmethod/skyime/UserDictionary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 77
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->loadDictionary()V

    .line 80
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->clearDictionary()V

    .line 223
    if-nez p1, :cond_6

    .line 244
    :cond_5
    return-void

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getMaxWordLength()I

    move-result v4

    .line 225
    .local v4, "maxWordLength":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    const-string v7, "word"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 227
    .local v3, "indexWord":I
    const-string v7, "shortcut"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, "indexShortcut":I
    const-string v7, "frequency"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 229
    .local v1, "indexFrequency":I
    :goto_22
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_5

    .line 230
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "word":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "shortcut":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 235
    .local v0, "frequency":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_3e

    .line 236
    const/4 v7, 0x0

    invoke-super {p0, v6, v7, v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    :cond_3e
    if-eqz v5, :cond_49

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v4, :cond_49

    .line 239
    invoke-super {p0, v5, v6, v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    :cond_49
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_22
.end method


# virtual methods
.method public declared-synchronized addWordToUserDictionary(Ljava/lang/String;I)V
    .registers 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getRequiresReload()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->loadDictionaryAsync()V

    .line 197
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getMaxWordLength()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_36

    move-result v2

    if-lt v1, v2, :cond_16

    .line 207
    :goto_14
    monitor-exit p0

    return-void

    .line 200
    :cond_16
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "locale"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_36

    goto :goto_14

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 85
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 88
    :cond_15
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->close()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 89
    monitor-exit p0

    return-void

    .line 84
    :catchall_1a
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
    .line 213
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 170
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 171
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_15

    .line 172
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    const/4 v2, 0x1

    .line 175
    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/UserDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_13
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/skyime/UserDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    .line 163
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_1b
    return-void

    .line 163
    :catchall_1c
    move-exception v0

    if-eqz v6, :cond_22

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v0
.end method
