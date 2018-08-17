.class public Lcom/pantech/inputmethod/skyime/ContactsDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.source "ContactsDictionary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FREQUENCY_FOR_CONTACTS:I = 0x28

.field private static final FREQUENCY_FOR_CONTACTS_BIGRAM:I = 0xb4

.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactsDictionary"


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->loadDictionary()V

    .line 63
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->clearDictionary()V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->getMaxWordLength()I

    move-result v5

    .line 128
    .local v5, "maxWordLength":I
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 129
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7f

    .line 130
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_72

    const/4 v10, -0x1

    const/16 v11, 0x40

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v10, v11, :cond_72

    .line 133
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 134
    .local v4, "len":I
    const/4 v7, 0x0

    .line 137
    .local v7, "prevWord":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v4, :cond_72

    .line 138
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 140
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_38
    if-ge v3, v4, :cond_4c

    .line 141
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .local v0, "c":C
    const/16 v10, 0x2d

    if-eq v0, v10, :cond_6f

    const/16 v10, 0x27

    if-eq v0, v10, :cond_6f

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-nez v10, :cond_6f

    .line 150
    .end local v0    # "c":C
    :cond_4c
    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "word":Ljava/lang/String;
    add-int/lit8 v2, v3, -0x1

    .line 157
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 158
    .local v9, "wordLen":I
    if-ge v9, v5, :cond_6c

    if-le v9, v12, :cond_6c

    .line 159
    const/4 v10, 0x0

    const/16 v11, 0x28

    invoke-super {p0, v8, v10, v11}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6b

    .line 162
    const/16 v10, 0xb4

    invoke-super {p0, v7, v8, v10}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;I)I

    .line 165
    :cond_6b
    move-object v7, v8

    .line 137
    .end local v3    # "j":I
    .end local v8    # "word":Ljava/lang/String;
    .end local v9    # "wordLen":I
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 140
    .restart local v0    # "c":C
    .restart local v3    # "j":I
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 170
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "len":I
    .end local v7    # "prevWord":Ljava/lang/String;
    :cond_72
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_75} :catch_76

    goto :goto_e

    .line 174
    .end local v6    # "name":Ljava/lang/String;
    :catch_76
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v10, "ContactsDictionary"

    const-string v11, "Contacts DB is having problems"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_7e
    return-void

    .line 173
    :cond_7f
    :try_start_7f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Ljava/lang/IllegalStateException; {:try_start_7f .. :try_end_82} :catch_76

    goto :goto_7e
.end method

.method private declared-synchronized registerObserver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v1, :cond_7

    .line 77
    :goto_5
    monitor-exit p0

    return-void

    .line 69
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "cres":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/pantech/inputmethod/skyime/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/pantech/inputmethod/skyime/ContactsDictionary$1;-><init>(Lcom/pantech/inputmethod/skyime/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 68
    .end local v0    # "cres":Landroid/content/ContentResolver;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 86
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 89
    :cond_15
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->close()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 90
    monitor-exit p0

    return-void

    .line 85
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 5
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 121
    :goto_6
    return-void

    .line 120
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_6
.end method

.method public loadDictionaryAsync()V
    .registers 9

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_18

    .line 107
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_18} :catch_1f

    .line 112
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mLastLoadedContacts:J

    .line 113
    return-void

    .line 109
    :catch_1f
    move-exception v7

    .line 110
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "ContactsDictionary"

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public reopen(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->registerObserver(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public startDictionaryLoadingTaskLocked()V
    .registers 7

    .prologue
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "now":J
    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    .line 97
    :cond_17
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 99
    :cond_1a
    return-void
.end method
