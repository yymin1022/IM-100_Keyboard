.class public Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.source "UserHistoryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;,
        Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_FORGETTING_CURVE_VALUE:Ljava/lang/String; = "freq"

.field private static final DATABASE_NAME:Ljava/lang/String; = "userbigram_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DBG_ALWAYS_WRITE:Z = false

.field public static final DBG_SAVE_RESTORE:Z = false

.field public static final DBG_STRESS_TEST:Z = false

.field private static final FREQUENCY_FOR_TYPED:I = 0x2

.field private static final FREQ_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final FREQ_COLUMN_PAIR_ID:Ljava/lang/String; = "pair_id"

.field private static final FREQ_TABLE_NAME:Ljava/lang/String; = "frequency"

.field private static final MAIN_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final MAIN_COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final MAIN_COLUMN_WORD1:Ljava/lang/String; = "word1"

.field private static final MAIN_COLUMN_WORD2:Ljava/lang/String; = "word2"

.field private static final MAIN_TABLE_NAME:Ljava/lang/String; = "main"

.field public static final PROFILE_SAVE_RESTORE:Z

.field private static final TAG:Ljava/lang/String; = "UserHistoryDictionary"

.field private static sDeleteHistoryBigrams:I

.field private static final sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMaxHistoryBigrams:I

.field private static sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;


# instance fields
.field private final mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

.field private final mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLocale:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    .line 53
    const/16 v0, 0x2710

    sput v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sMaxHistoryBigrams:I

    .line 60
    const/16 v0, 0x3e8

    sput v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDeleteHistoryBigrams:I

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word1"

    const-string v2, "word1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word2"

    const-string v2, "word2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "pair_id"

    const-string v2, "pair_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "dicTypeId"    # I
    .param p4, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 139
    invoke-direct {p0, p1, p3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 87
    new-instance v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 140
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    .line 142
    sget-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    if-nez v0, :cond_24

    .line 143
    new-instance v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    .line 145
    :cond_24
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_34

    .line 146
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->loadDictionary()V

    .line 148
    :cond_34
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sMaxHistoryBigrams:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDeleteHistoryBigrams:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private flushPendingWrites()V
    .registers 7

    .prologue
    .line 221
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    :goto_8
    return-void

    .line 225
    :cond_9
    new-instance v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;

    sget-object v1, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;-><init>(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;Landroid/content/SharedPreferences;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "dictTypeId"    # I
    .param p3, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 121
    const-class v3, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 122
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 123
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;>;"
    if-nez v1, :cond_36

    const/4 v0, 0x0

    .line 124
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    :goto_16
    if-eqz v0, :cond_3e

    .line 125
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_34

    .line 126
    const-string v2, "UserHistoryDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use cached UserHistoryDictionary for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4e

    .line 134
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;>;"
    :cond_34
    :goto_34
    monitor-exit v3

    return-object v0

    .line 123
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;>;"
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    move-object v0, v2

    goto :goto_16

    .line 131
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;>;"
    :cond_3e
    new-instance v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 133
    .restart local v0    # "dict":Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sLangDictCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_4e

    goto :goto_34

    .line 121
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private loadDictionaryAsyncLocked()V
    .registers 21

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v6

    .line 249
    .local v6, "last":J
    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-nez v2, :cond_38

    const/4 v12, 0x1

    .line 250
    .local v12, "initializing":Z
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 252
    .local v4, "now":J
    const-string v2, "locale=?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_3a

    .line 290
    :cond_37
    :goto_37
    return-void

    .line 249
    .end local v4    # "now":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "initializing":Z
    :cond_38
    const/4 v12, 0x0

    goto :goto_17

    .line 256
    .restart local v4    # "now":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "initializing":Z
    :cond_3a
    :try_start_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 257
    const-string v2, "word1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 258
    .local v14, "word1Index":I
    const-string v2, "word2"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 259
    .local v16, "word2Index":I
    const-string v2, "freq"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 260
    .local v9, "fcIndex":I
    :goto_52
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_e8

    .line 261
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, "word1":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, "word2":Ljava/lang/String;
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 270
    .local v3, "fc":I
    if-nez v13, :cond_bd

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v15, v2, v3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    int-to-byte v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v13, v15, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;B)V

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7d
    .catchall {:try_start_3a .. :try_end_7d} :catchall_7e

    goto :goto_52

    .line 283
    .end local v3    # "fc":I
    .end local v9    # "fcIndex":I
    .end local v13    # "word1":Ljava/lang/String;
    .end local v14    # "word1Index":I
    .end local v15    # "word2":Ljava/lang/String;
    .end local v16    # "word2Index":I
    :catchall_7e
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    sget-boolean v17, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v17, :cond_bc

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v10, v18, v4

    .line 286
    .local v10, "diff":J
    const-string v17, "UserHistoryDictionary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PROF: Load User HistoryDictionary: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v10    # "diff":J
    :cond_bc
    throw v2

    .line 272
    .restart local v3    # "fc":I
    .restart local v9    # "fcIndex":I
    .restart local v13    # "word1":Ljava/lang/String;
    .restart local v14    # "word1Index":I
    .restart local v15    # "word2":Ljava/lang/String;
    .restart local v16    # "word2Index":I
    :cond_bd
    :try_start_bd
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v2, v0, :cond_6e

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v2, v0, :cond_6e

    .line 274
    if-eqz v12, :cond_e2

    new-instance v2, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(Z)V

    :goto_dc
    move-object/from16 v0, p0

    invoke-super {v0, v13, v15, v2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I

    goto :goto_6e

    :cond_e2
    new-instance v2, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-direct/range {v2 .. v7}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJ)V
    :try_end_e7
    .catchall {:try_start_bd .. :try_end_e7} :catchall_7e

    goto :goto_dc

    .line 283
    .end local v3    # "fc":I
    .end local v9    # "fcIndex":I
    .end local v13    # "word1":Ljava/lang/String;
    .end local v14    # "word1Index":I
    .end local v15    # "word2":Ljava/lang/String;
    .end local v16    # "word2Index":I
    :cond_e8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_37

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v10, v18, v4

    .line 286
    .restart local v10    # "diff":J
    const-string v2, "UserHistoryDictionary"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PROF: Load User HistoryDictionary: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mLocale:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37
.end method

.method private static query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 296
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 299
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "main INNER JOIN frequency ON (main._id=frequency.pair_id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 303
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 307
    :try_start_10
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sOpenHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 308
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "word1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "word2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "freq"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_10 .. :try_end_30} :catch_32

    move-result-object v8

    .line 316
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_31
    return-object v8

    .line 313
    :catch_32
    move-exception v9

    .line 316
    .local v9, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    goto :goto_31
.end method


# virtual methods
.method public addToUserHistory(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "isValid"    # Z

    .prologue
    .line 180
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 182
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_a
    invoke-super {p0, p2, v1, v2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_32

    move-result v1

    if-eqz v1, :cond_1a

    .line 186
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    :goto_19
    return v0

    .line 189
    :cond_1a
    if-nez p1, :cond_28

    .line 190
    const/4 v0, 0x2

    .line 195
    .local v0, "freq":I
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->addBigram(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_32

    .line 198
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_19

    .line 192
    .end local v0    # "freq":I
    :cond_28
    :try_start_28
    new-instance v1, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-direct {v1, p3}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(Z)V

    invoke-super {p0, p1, p2, v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    move-result v0

    .restart local v0    # "freq":I
    goto :goto_1d

    .line 198
    .end local v0    # "freq":I
    :catchall_32
    move-exception v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 201
    :cond_39
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public cancelAddingUserHistory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 207
    :try_start_8
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->removeBigram(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 208
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_21

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    :goto_19
    return v0

    .line 211
    :cond_1a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19

    .line 211
    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->flushPendingWrites()V

    .line 160
    return-void
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public loadDictionaryAsync()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 233
    :try_start_5
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->loadDictionaryAsyncLocked()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 235
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    return-void

    .line 235
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->mBigramListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDatabaseDelete(I)V
    .registers 2
    .param p1, "deleteHistoryBigram"    # I

    .prologue
    .line 115
    sput p1, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sDeleteHistoryBigrams:I

    .line 116
    return-void
.end method

.method public setDatabaseMax(I)V
    .registers 2
    .param p1, "maxHistoryBigram"    # I

    .prologue
    .line 111
    sput p1, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->sMaxHistoryBigrams:I

    .line 112
    return-void
.end method
