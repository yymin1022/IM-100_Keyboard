.class public Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
.source "ContactsBinaryDictionary.java"


# static fields
.field private static DEBUG:Z = false

.field private static final FREQUENCY_FOR_CONTACTS:I = 0xcd

.field private static final FREQUENCY_FOR_CONTACTS_BIGRAM:I = 0xb4

.field private static final INDEX_NAME:I = 0x1

.field private static final MAX_CONTACT_COUNT:I = 0x2710

.field private static final NAME:Ljava/lang/String; = "contacts"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_ID_ONLY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sContactCountAtLastRebuild:I


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field private final mUseFirstLastBigrams:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->PROJECTION_ID_ONLY:[Ljava/lang/String;

    .line 36
    const-class v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    .line 39
    sput-boolean v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->DEBUG:Z

    .line 53
    sput v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Locale;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 63
    const-string v0, "contacts"

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 64
    invoke-direct {p0, p3}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->useFirstLastBigramsForLocale(Ljava/util/Locale;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->registerObserver(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->loadDictionary()V

    .line 70
    return-void
.end method

.method private addName(Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 167
    .local v2, "len":I
    const/4 v3, 0x0

    .line 169
    .local v3, "prevWord":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_49

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 171
    invoke-static {p1, v2, v1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->getWordEndPosition(Ljava/lang/String;II)I

    move-result v0

    .line 172
    .local v0, "end":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "word":Ljava/lang/String;
    add-int/lit8 v1, v0, -0x1

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    .line 177
    .local v5, "wordLen":I
    const/16 v6, 0x30

    if-ge v5, v6, :cond_46

    const/4 v6, 0x1

    if-le v5, v6, :cond_46

    .line 178
    const/4 v6, 0x0

    const/16 v7, 0xcd

    invoke-super {p0, v4, v6, v7}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 180
    iget-boolean v6, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    if-eqz v6, :cond_45

    .line 181
    const/16 v6, 0xb4

    invoke-super {p0, v3, v4, v6}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    :cond_45
    move-object v3, v4

    .line 169
    .end local v0    # "end":I
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "wordLen":I
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 188
    :cond_49
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->clearFusionDictionary()V

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "count":I
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_22

    .line 137
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 139
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->addName(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_1e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 144
    .end local v1    # "name":Ljava/lang/String;
    :cond_22
    return-void
.end method

.method private getContactCount()I
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->PROJECTION_ID_ONLY:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_20

    .line 153
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    move-result v0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :goto_1a
    return v0

    .line 155
    :catchall_1b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 158
    :cond_20
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static getWordEndPosition(Ljava/lang/String;II)I
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "startIndex"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "cp":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "end":I
    :goto_3
    if-ge v1, p1, :cond_17

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 198
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_18

    const/16 v2, 0x27

    if-eq v0, v2, :cond_18

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 203
    :cond_17
    return v1

    .line 196
    :cond_18
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method private isNameInDictionary(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 266
    .local v2, "len":I
    const/4 v3, 0x0

    .line 267
    .local v3, "prevWord":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_4b

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 269
    invoke-static {p1, v2, v1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->getWordEndPosition(Ljava/lang/String;II)I

    move-result v0

    .line 270
    .local v0, "end":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "word":Ljava/lang/String;
    add-int/lit8 v1, v0, -0x1

    .line 272
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    .line 273
    .local v5, "wordLen":I
    const/16 v8, 0x30

    if-ge v5, v8, :cond_48

    if-le v5, v7, :cond_48

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_41

    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mUseFirstLastBigrams:Z

    if-eqz v8, :cond_41

    .line 275
    invoke-super {p0, v3, v4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isValidBigramLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 287
    .end local v0    # "end":I
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "wordLen":I
    :cond_40
    :goto_40
    return v6

    .line 279
    .restart local v0    # "end":I
    .restart local v4    # "word":Ljava/lang/String;
    .restart local v5    # "wordLen":I
    :cond_41
    invoke-super {p0, v4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isValidWordLocked(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 283
    :cond_47
    move-object v3, v4

    .line 267
    .end local v0    # "end":I
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "wordLen":I
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_4b
    move v6, v7

    .line 287
    goto :goto_40
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p0, :cond_d

    const/4 v0, -0x1

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized registerObserver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v1, :cond_7

    .line 84
    :goto_5
    monitor-exit p0

    return-void

    .line 76
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "cres":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary$1;-><init>(Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 75
    .end local v0    # "cres":Landroid/content/ContentResolver;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private useFirstLastBigramsForLocale(Ljava/util/Locale;)Z
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 127
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 96
    :cond_13
    invoke-super {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 97
    monitor-exit p0

    return-void

    .line 92
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 4
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 123
    return-void
.end method

.method protected hasContentChanged()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 209
    .local v10, "startTime":J
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->getContactCount()I

    move-result v6

    .line 210
    .local v6, "contactCount":I
    const/16 v0, 0x2710

    if-le v6, v0, :cond_11

    move v0, v9

    .line 251
    :goto_10
    return v0

    .line 216
    :cond_11
    sget v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    if-eq v6, v0, :cond_3f

    .line 217
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_3d

    .line 218
    sget-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact count changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v0, v12

    .line 221
    goto :goto_10

    .line 226
    :cond_3f
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 228
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_b1

    .line 230
    :try_start_51
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 231
    :goto_57
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 232
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-direct {p0, v8}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->isNameInDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 234
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_9f

    .line 235
    sget-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact name missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (runtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_51 .. :try_end_9f} :catchall_a9

    .line 244
    :cond_9f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto/16 :goto_10

    .line 240
    :cond_a5
    :try_start_a5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_57

    .line 244
    .end local v8    # "name":Ljava/lang/String;
    :catchall_a9
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_ae
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_b1
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_d8

    .line 248
    sget-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contacts changed. (runtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    move v0, v9

    .line 251
    goto/16 :goto_10
.end method

.method public loadDictionaryAsync()V
    .registers 9

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_2b

    move-result-object v6

    .line 104
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_25

    .line 106
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 107
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->getContactCount()I

    move-result v0

    sput v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->sContactCountAtLastRebuild:I

    .line 108
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_26

    .line 111
    :cond_22
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_25
    :goto_25
    return-void

    .line 111
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_2b} :catch_2b

    .line 114
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2b
    move-exception v7

    .line 115
    .local v7, "e":Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->TAG:Ljava/lang/String;

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public reopen(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->registerObserver(Landroid/content/Context;)V

    .line 88
    return-void
.end method
