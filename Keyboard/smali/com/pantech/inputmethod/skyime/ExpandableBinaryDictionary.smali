.class public abstract Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
.super Lcom/pantech/inputmethod/skyime/Dictionary;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;,
        Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;,
        Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field protected static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String;

.field private static final sSharedDictionaryControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

.field protected final mContext:Landroid/content/Context;

.field public final mDicTypeId:I

.field private final mFilename:Ljava/lang/String;

.field private mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

.field private final mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

.field private final mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->DEBUG:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dictType"    # I

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 92
    new-instance v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .line 130
    iput p3, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mDicTypeId:I

    .line 131
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    .line 133
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    .line 134
    invoke-static {p2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->getSharedDictionaryController(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .line 135
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->clearFusionDictionary()V

    .line 136
    return-void
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->syncReloadDictionaryInternal()V

    return-void
.end method

.method private dictionaryFileExists()Z
    .registers 4

    .prologue
    .line 446
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private generateBinaryDictionary()V
    .registers 11

    .prologue
    .line 328
    sget-boolean v6, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v6, :cond_3e

    .line 329
    sget-object v6, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating binary dictionary: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v8}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$100(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " update="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v8}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->loadDictionaryAsync()V

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "tempFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v4, "tempFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 341
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_6f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_8d
    .catch Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException; {:try_start_6f .. :try_end_74} :catch_ae
    .catchall {:try_start_6f .. :try_end_74} :catchall_cf

    .line 342
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_74
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->writeDictionaryBinary(Ljava/io/OutputStream;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;I)V

    .line 344
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 345
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 346
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->clearFusionDictionary()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_83} :catch_de
    .catch Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException; {:try_start_74 .. :try_end_83} :catch_db
    .catchall {:try_start_74 .. :try_end_83} :catchall_d8

    .line 352
    if-eqz v3, :cond_e1

    .line 354
    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_8a

    move-object v2, v3

    .line 360
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_89
    :goto_89
    return-void

    .line 355
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_8a
    move-exception v6

    move-object v2, v3

    .line 357
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_89

    .line 347
    :catch_8d
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    :goto_8e
    :try_start_8e
    sget-object v6, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception while writing file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_cf

    .line 352
    if-eqz v2, :cond_89

    .line 354
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_89

    .line 355
    :catch_ac
    move-exception v6

    goto :goto_89

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ae
    move-exception v0

    .line 350
    .local v0, "e":Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;
    :goto_af
    :try_start_af
    sget-object v6, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_af .. :try_end_c7} :catchall_cf

    .line 352
    if-eqz v2, :cond_89

    .line 354
    :try_start_c9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_89

    .line 355
    :catch_cd
    move-exception v6

    goto :goto_89

    .line 352
    .end local v0    # "e":Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;
    :catchall_cf
    move-exception v6

    :goto_d0
    if-eqz v2, :cond_d5

    .line 354
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    .line 357
    :cond_d5
    :goto_d5
    throw v6

    .line 355
    :catch_d6
    move-exception v7

    goto :goto_d5

    .line 352
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_d8
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_d0

    .line 349
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_db
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_af

    .line 347
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_de
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_8e

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_e1
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_89
.end method

.method protected static getFilenameWithLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "localeStr"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dict"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getSharedDictionaryController(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v2, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .line 113
    .local v0, "controller":Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    if-nez v0, :cond_18

    .line 114
    new-instance v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .end local v0    # "controller":Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;)V

    .line 115
    .restart local v0    # "controller":Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    sget-object v1, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->sSharedDictionaryControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 117
    :cond_18
    monitor-exit v2

    return-object v0

    .line 112
    .end local v0    # "controller":Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isReloadRequired()Z
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$400(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private final syncReloadDictionaryInternal()V
    .registers 9

    .prologue
    .line 412
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 414
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 415
    .local v2, "time":J
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->dictionaryFileExists()Z

    move-result v0

    .line 416
    .local v0, "dictionaryFileExists":Z
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$400(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)Z

    move-result v1

    if-nez v1, :cond_17

    if-nez v0, :cond_48

    .line 419
    :cond_17
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->hasContentChanged()Z

    move-result v1

    if-nez v1, :cond_1f

    if-nez v0, :cond_35

    .line 423
    :cond_1f
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v1, v2, v3}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$202(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 424
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->generateBinaryDictionary()V

    .line 425
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->loadBinaryDictionary()V

    .line 438
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v1, v2, v3}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$202(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_41

    .line 440
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 442
    return-void

    .line 429
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_41

    goto :goto_2a

    .line 440
    .end local v0    # "dictionaryFileExists":Z
    .end local v2    # "time":J
    :catchall_41
    move-exception v1

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v1

    .line 432
    .restart local v0    # "dictionaryFileExists":Z
    .restart local v2    # "time":J
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2a

    .line 436
    :cond_5c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->loadBinaryDictionary()V
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_41

    goto :goto_2a
.end method


# virtual methods
.method protected addWord(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "shortcutTarget"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 176
    if-nez p2, :cond_9

    .line 177
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 184
    :goto_8
    return-void

    .line 180
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    new-instance v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    invoke-direct {v1, p2, p3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    invoke-virtual {v1, p1, p3, v0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_8
.end method

.method asyncReloadDictionaryIfRequired()V
    .registers 4

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isReloadRequired()Z

    move-result v0

    if-nez v0, :cond_7

    .line 388
    :goto_6
    return-void

    .line 384
    :cond_7
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 385
    sget-object v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting AsyncReloadDictionaryTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_25
    new-instance v0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;)V

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->start()V

    goto :goto_6
.end method

.method public clearFusionDictionary()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    new-instance v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;-><init>()V

    new-instance v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3, v4, v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;-><init>(Ljava/util/HashMap;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;-><init>(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    .line 167
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 150
    :try_start_5
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->close()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    .line 155
    :cond_11
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 157
    return-void

    .line 155
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 4
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->getBigramsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 224
    return-void
.end method

.method protected getBigramsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 6
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 230
    :try_start_8
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 234
    :cond_11
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 237
    :cond_16
    return-void

    .line 234
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0
.end method

.method public getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 5
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    .line 201
    return-void
.end method

.method protected final getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 7
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    :try_start_8
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v0, :cond_11

    .line 211
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 214
    :cond_11
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 217
    :cond_16
    return-void

    .line 214
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0
.end method

.method protected abstract hasContentChanged()Z
.end method

.method protected isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "word1"    # Ljava/lang/CharSequence;
    .param p2, "word2"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 263
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5
.end method

.method protected isValidBigramInner(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "word1"    # Ljava/lang/CharSequence;
    .param p2, "word2"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 269
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isValidBigramLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 274
    :goto_11
    return v0

    .line 271
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0

    .line 274
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isValidBigramLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "word1"    # Ljava/lang/CharSequence;
    .param p2, "word2"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 279
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidBigram(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 242
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isValidWordInner(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isValidWordInner(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 248
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isValidWordLocked(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 253
    :goto_11
    return v0

    .line 250
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    throw v0

    .line 253
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isValidWordLocked(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 258
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5
.end method

.method protected loadBinaryDictionary()V
    .registers 12

    .prologue
    .line 296
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 297
    sget-object v2, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading binary dictionary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$100(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3e
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "filename":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 307
    .local v6, "length":J
    new-instance v1, Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;)V

    .line 311
    .local v1, "newBinaryDictionary":Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    if-eqz v2, :cond_74

    .line 314
    iget-object v10, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    .line 315
    .local v10, "oldBinaryDictionary":Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->lock()V

    .line 316
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    .line 317
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->unlock()V

    .line 318
    invoke-virtual {v10}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->close()V

    .line 322
    .end local v10    # "oldBinaryDictionary":Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    :goto_73
    return-void

    .line 320
    :cond_74
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mBinaryDictionary:Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    goto :goto_73
.end method

.method protected loadDictionary()V
    .registers 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 288
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->asyncReloadDictionaryIfRequired()V

    .line 289
    return-void
.end method

.method protected abstract loadDictionaryAsync()V
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "prevWord"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFusionDictionary:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method protected setRequiresReload(Z)V
    .registers 8
    .param p1, "requiresRebuild"    # Z

    .prologue
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 371
    .local v0, "time":J
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mLocalDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v2, v0, v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 372
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v2, v0, v1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$102(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J

    .line 373
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->DEBUG:Z

    if-eqz v2, :cond_46

    .line 374
    sget-object v2, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reload request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->mSharedDictionaryController:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_46
    return-void
.end method

.method protected final syncReloadDictionaryIfRequired()V
    .registers 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->isReloadRequired()Z

    move-result v0

    if-nez v0, :cond_7

    .line 396
    :goto_6
    return-void

    .line 395
    :cond_7
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->syncReloadDictionaryInternal()V

    goto :goto_6
.end method
