.class public Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
.source "UserBinaryDictionary.java"


# static fields
.field private static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field private static final NAME:Ljava/lang/String; = "userunigram"

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
    .line 39
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

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "alsoUseMoreRestrictiveLocales"    # Z

    .prologue
    .line 61
    const-string v1, "userunigram"

    invoke-static {v1, p2}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    if-nez p2, :cond_12

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 63
    :cond_12
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mLocale:Ljava/lang/String;

    .line 64
    iput-boolean p3, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mAlsoUseMoreRestrictiveLocales:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, "cres":Landroid/content/ContentResolver;
    new-instance v1, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary$1;-><init>(Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 75
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->loadDictionary()V

    .line 78
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0x30

    .line 203
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->clearFusionDictionary()V

    .line 204
    if-nez p1, :cond_8

    .line 223
    :cond_7
    return-void

    .line 205
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 206
    const-string v6, "word"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, "indexWord":I
    const-string v6, "shortcut"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "indexShortcut":I
    const-string v6, "frequency"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "indexFrequency":I
    :goto_20
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_7

    .line 210
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "word":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "shortcut":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 214
    .local v0, "frequency":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_3c

    .line 215
    const/4 v6, 0x0

    invoke-super {p0, v5, v6, v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    :cond_3c
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_47

    .line 218
    invoke-super {p0, v4, v5, v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    :cond_47
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_20
.end method


# virtual methods
.method public declared-synchronized addWordToUserDictionary(Ljava/lang/String;I)V
    .registers 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_b

    .line 200
    :goto_9
    monitor-exit p0

    return-void

    .line 193
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "locale"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_29

    goto :goto_9

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_13

    .line 83
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 86
    :cond_13
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 87
    monitor-exit p0

    return-void

    .line 82
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected hasContentChanged()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 166
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_13

    .line 167
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 168
    const/4 v2, 0x1

    .line 170
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public loadDictionaryAsync()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->PROJECTION_QUERY:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_11
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 158
    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_19
    return-void

    .line 158
    :catchall_1a
    move-exception v0

    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    throw v0
.end method
