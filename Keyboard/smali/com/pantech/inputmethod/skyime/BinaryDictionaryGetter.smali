.class Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;,
        Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;
    }
.end annotation


# static fields
.field private static final COMMON_PREFERENCES_NAME:Ljava/lang/String; = "LatinImeDictPrefs"

.field private static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final ID_CATEGORY_SEPARATOR:Ljava/lang/String; = ":"

.field private static final MAIN_DICTIONARY_CATEGORY:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "relativeDirectoryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "absoluteDirectoryName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_48

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_48

    .line 133
    sget-object v3, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create the directory for locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_48
    return-object v0
.end method

.method public static getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;
    .registers 25
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v10

    .line 272
    .local v10, "directoryList":[Ljava/io/File;
    if-nez v10, :cond_9

    sget-object v19, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 298
    :cond_8
    :goto_8
    return-object v19

    .line 273
    :cond_9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v5, "cacheFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;>;"
    move-object v3, v10

    .local v3, "arr$":[Ljava/io/File;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v3    # "arr$":[Ljava/io/File;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .local v13, "i$":I
    :goto_14
    move/from16 v0, v16

    if-ge v13, v0, :cond_77

    aget-object v9, v3, v13

    .line 276
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_24

    .line 275
    .end local v13    # "i$":I
    :cond_20
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_14

    .line 277
    :cond_24
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "dirLocale":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 279
    .local v18, "matchLevel":I
    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->isMatch(I)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 280
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 281
    .local v21, "wordLists":[Ljava/io/File;
    if-eqz v21, :cond_20

    .line 282
    move-object/from16 v4, v21

    .local v4, "arr$":[Ljava/io/File;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_44
    move/from16 v0, v17

    if-ge v12, v0, :cond_20

    aget-object v20, v4, v12

    .line 283
    .local v20, "wordList":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getCategoryFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "category":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;

    .line 285
    .local v7, "currentBestMatch":Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;
    if-eqz v7, :cond_64

    iget v0, v7, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;->mMatchLevel:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_74

    .line 286
    :cond_64
    new-instance v22, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_74
    add-int/lit8 v12, v12, 0x1

    goto :goto_44

    .line 292
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v6    # "category":Ljava/lang/String;
    .end local v7    # "currentBestMatch":Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;
    .end local v8    # "dirLocale":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v12    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "matchLevel":I
    .end local v20    # "wordList":Ljava/io/File;
    .end local v21    # "wordLists":[Ljava/io/File;
    .restart local v13    # "i$":I
    :cond_77
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_80

    sget-object v19, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_8

    .line 293
    :cond_80
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v19, v0

    .line 294
    .local v19, "result":[Ljava/io/File;
    const/4 v14, 0x0

    .line 295
    .local v14, "index":I
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :goto_93
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;

    .line 296
    .local v11, "entry":Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .local v15, "index":I
    iget-object v0, v11, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$FileAndMatchLevel;->mFile:Ljava/io/File;

    move-object/from16 v22, v0

    aput-object v22, v19, v14

    move v14, v15

    .line 297
    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_93
.end method

.method private static getCategoryFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "id":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "idArray":[Ljava/lang/String;
    const/4 v2, 0x2

    array-length v3, v1

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    .line 240
    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_f
.end method

.method public static getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p1, p0}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v6

    .line 375
    .local v6, "hasDefaultWordList":Z
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getMainDictId(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, "mainDictId":Ljava/lang/String;
    new-instance v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;

    invoke-direct {v0, p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "dictPackSettings":Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;
    const/4 v5, 0x0

    .line 378
    .local v5, "foundMainDict":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v4, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/AssetFileAddress;>;"
    if-nez v5, :cond_2c

    invoke-virtual {v0, v7}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->getMainDictionaryResourceId(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v3

    .line 405
    .local v3, "fallbackResId":I
    :try_start_23
    invoke-static {p1, v3}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->loadFallbackResource(Landroid/content/Context;I)Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    move-result-object v2

    .line 406
    .local v2, "fallbackAsset":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    if-eqz v2, :cond_2c

    .line 407
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 414
    .end local v2    # "fallbackAsset":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .end local v3    # "fallbackResId":I
    :cond_2c
    :goto_2c
    return-object v4

    .line 409
    .restart local v3    # "fallbackResId":I
    :catch_2d
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    const-string v9, "loadFallbackResource:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method private static getMainDictId(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "main:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dicts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 103
    .local v2, "fnameLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_31

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 105
    .local v0, "codePoint":I
    const/16 v5, 0x25

    if-eq v5, v0, :cond_1d

    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 103
    :goto_17
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_a

    .line 108
    :cond_1d
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "encodedCodePoint":I
    add-int/lit8 v3, v3, 0x6

    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 113
    .end local v0    # "codePoint":I
    .end local v1    # "encodedCodePoint":I
    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static isFileNameCharacter(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    .line 66
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 69
    :cond_9
    :goto_9
    return v0

    .line 67
    :cond_a
    const/16 v1, 0x41

    if-lt p0, v1, :cond_12

    const/16 v1, 0x5a

    if-le p0, v1, :cond_9

    .line 68
    :cond_12
    const/16 v1, 0x61

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x7a

    if-le p0, v1, :cond_9

    .line 69
    :cond_1a
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isMainWordListId(Ljava/lang/String;)Z
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 350
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "idArray":[Ljava/lang/String;
    const/4 v2, 0x2

    array-length v3, v0

    if-eq v2, v3, :cond_c

    .line 352
    :goto_b
    return v1

    :cond_c
    const-string v2, "main"

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method private static loadFallbackResource(Landroid/content/Context;I)Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fallbackResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 166
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_24

    .line 167
    sget-object v2, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .line 175
    :goto_23
    return-object v1

    .line 171
    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    move-result-object v1

    .line 174
    .local v1, "asset":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_23
.end method

.method public static removeFilesWithIdExcept(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "fileToKeep"    # Ljava/io/File;

    .prologue
    .line 311
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 312
    .local v3, "canonicalFileToKeep":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v5

    .line 313
    .local v5, "directoryList":[Ljava/io/File;
    if-nez v5, :cond_b

    .line 331
    .end local v3    # "canonicalFileToKeep":Ljava/io/File;
    .end local v5    # "directoryList":[Ljava/io/File;
    :cond_a
    :goto_a
    return-void

    .line 314
    .restart local v3    # "canonicalFileToKeep":Ljava/io/File;
    .restart local v5    # "directoryList":[Ljava/io/File;
    :cond_b
    move-object v1, v5

    .local v1, "arr$":[Ljava/io/File;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v1    # "arr$":[Ljava/io/File;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_f
    if-ge v9, v10, :cond_a

    aget-object v4, v1, v9

    .line 316
    .local v4, "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_1d

    .line 314
    .end local v9    # "i$":I
    :cond_19
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_f

    .line 317
    :cond_1d
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 318
    .local v13, "wordLists":[Ljava/io/File;
    if-eqz v13, :cond_19

    .line 319
    move-object v2, v13

    .local v2, "arr$":[Ljava/io/File;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_26
    if-ge v8, v11, :cond_19

    aget-object v12, v2, v8

    .line 320
    .local v12, "wordList":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "fileId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_47

    .line 322
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_47

    .line 323
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_4a

    .line 319
    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 328
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "canonicalFileToKeep":Ljava/io/File;
    .end local v4    # "directory":Ljava/io/File;
    .end local v5    # "directoryList":[Ljava/io/File;
    .end local v7    # "fileId":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "wordList":Ljava/io/File;
    .end local v13    # "wordLists":[Ljava/io/File;
    :catch_4a
    move-exception v6

    .line 329
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException trying to cleanup files : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private static replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    .local v2, "nameLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_35

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 87
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->isFileNameCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 85
    :goto_1a
    invoke-virtual {p0, v1, v9}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_b

    .line 91
    :cond_1f
    const/4 v4, 0x0

    check-cast v4, Ljava/util/Locale;

    const-string v5, "%%%1$06x"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 94
    .end local v0    # "codePoint":I
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
