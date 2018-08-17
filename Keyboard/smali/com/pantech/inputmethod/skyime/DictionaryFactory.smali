.class public Lcom/pantech/inputmethod/skyime/DictionaryFactory;
.super Ljava/lang/Object;
.source "DictionaryFactory.java"


# static fields
.field private static final DEFAULT_MAIN_DICT:Ljava/lang/String; = "main"

.field private static final MAIN_DICT_PREFIX:Ljava/lang/String; = "main_"

.field private static final RESOURCE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/pantech/inputmethod/skyime/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/pantech/inputmethod/skyime/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBinaryDictionary(Landroid/content/Context;Ljava/util/Locale;)Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v13, 0x0

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_9} :catch_84
    .catchall {:try_start_2 .. :try_end_9} :catchall_93

    move-result v12

    .line 101
    .local v12, "resId":I
    if-nez v12, :cond_13

    .line 120
    if-eqz v0, :cond_11

    .line 122
    :try_start_e
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_9a

    :cond_11
    :goto_11
    move-object v1, v13

    .line 125
    .end local v12    # "resId":I
    :cond_12
    :goto_12
    return-object v1

    .line 102
    .restart local v12    # "resId":I
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 103
    if-nez v0, :cond_3c

    .line 104
    sget-object v1, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found the resource but it is compressed. resId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_35} :catch_84
    .catchall {:try_start_13 .. :try_end_35} :catchall_93

    .line 120
    if-eqz v0, :cond_3a

    .line 122
    :try_start_37
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_9d

    :cond_3a
    :goto_3a
    move-object v1, v13

    .line 125
    goto :goto_12

    .line 107
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 108
    .local v3, "sourceDir":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v11, "packagePath":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 111
    sget-object v1, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sourceDir is not a file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_65} :catch_84
    .catchall {:try_start_3c .. :try_end_65} :catchall_93

    .line 120
    if-eqz v0, :cond_6a

    .line 122
    :try_start_67
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_9f

    :cond_6a
    :goto_6a
    move-object v1, v13

    .line 125
    goto :goto_12

    .line 114
    :cond_6c
    :try_start_6c
    new-instance v1, Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;)V
    :try_end_7c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6c .. :try_end_7c} :catch_84
    .catchall {:try_start_6c .. :try_end_7c} :catchall_93

    .line 120
    if-eqz v0, :cond_12

    .line 122
    :try_start_7e
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_12

    .line 123
    :catch_82
    move-exception v2

    goto :goto_12

    .line 116
    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v11    # "packagePath":Ljava/io/File;
    .end local v12    # "resId":I
    :catch_84
    move-exception v10

    .line 117
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_85
    sget-object v1, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v2, "Could not find the resource"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_93

    .line 120
    if-eqz v0, :cond_91

    .line 122
    :try_start_8e
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_a1

    :cond_91
    :goto_91
    move-object v1, v13

    .line 125
    goto :goto_12

    .line 120
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_93
    move-exception v1

    if-eqz v0, :cond_99

    .line 122
    :try_start_96
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_a3

    .line 125
    :cond_99
    :goto_99
    throw v1

    .line 123
    .restart local v12    # "resId":I
    :catch_9a
    move-exception v1

    goto/16 :goto_11

    :catch_9d
    move-exception v1

    goto :goto_3a

    .restart local v3    # "sourceDir":Ljava/lang/String;
    .restart local v11    # "packagePath":Ljava/io/File;
    :catch_9f
    move-exception v1

    goto :goto_6a

    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v11    # "packagePath":Ljava/io/File;
    .end local v12    # "resId":I
    .restart local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_a1
    move-exception v1

    goto :goto_91

    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_a3
    move-exception v2

    goto :goto_99
.end method

.method public static createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJZLjava/util/Locale;)Lcom/pantech/inputmethod/skyime/Dictionary;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dictionary"    # Ljava/io/File;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J
    .param p6, "useFullEditDistance"    # Z
    .param p7, "locale"    # Ljava/util/Locale;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 142
    new-instance v1, Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;)V

    .line 146
    :goto_16
    return-object v1

    .line 145
    :cond_17
    sget-object v0, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file. path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;)Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    move-result-object v0

    return-object v0
.end method

.method public static createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "useFullEditDistance"    # Z

    .prologue
    .line 50
    if-nez p1, :cond_19

    .line 51
    sget-object v2, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v3, "No locale defined for dictionary"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v2, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/pantech/inputmethod/skyime/Dictionary;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->createBinaryDictionary(Landroid/content/Context;Ljava/util/Locale;)Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;-><init>([Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 72
    :goto_18
    return-object v2

    .line 55
    :cond_19
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v10, "dictList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    invoke-static {p1, p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    .local v0, "assetFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/AssetFileAddress;>;"
    if-eqz v0, :cond_4c

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    .line 60
    .local v11, "f":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    new-instance v1, Lcom/pantech/inputmethod/skyime/BinaryDictionary;

    iget-object v3, v11, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mFilename:Ljava/lang/String;

    iget-wide v4, v11, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mOffset:J

    iget-wide v6, v11, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->mLength:J

    move-object v2, p0

    move v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJZLjava/util/Locale;)V

    .line 63
    .local v1, "binaryDictionary":Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->isValidDictionary()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 64
    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 72
    .end local v1    # "binaryDictionary":Lcom/pantech/inputmethod/skyime/BinaryDictionary;
    .end local v11    # "f":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4c
    new-instance v2, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    invoke-direct {v2, v10}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;-><init>(Ljava/util/Collection;)V

    goto :goto_18
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;Ljava/util/Locale;)I
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v0

    .line 198
    .local v0, "resourceId":I
    if-eqz v0, :cond_7

    .line 199
    .end local v0    # "resourceId":I
    :goto_6
    return v0

    .restart local v0    # "resourceId":I
    :cond_7
    const-string v1, "main"

    const-string v2, "raw"

    sget-object v3, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_6
.end method

.method private static getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "dictLanguageCountry":Ljava/lang/String;
    const-string v3, "raw"

    sget-object v4, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "resId":I
    if-eqz v2, :cond_35

    move v3, v2

    .line 188
    .end local v1    # "dictLanguageCountry":Ljava/lang/String;
    :goto_34
    return v3

    .line 182
    .end local v2    # "resId":I
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "dictLanguage":Ljava/lang/String;
    const-string v3, "raw"

    sget-object v4, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->RESOURCE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "resId":I
    if-eqz v2, :cond_58

    move v3, v2

    .line 184
    goto :goto_34

    .line 188
    :cond_58
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public static isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->getMainDictionaryResourceIdIfAvailableForLocale(Landroid/content/res/Resources;Ljava/util/Locale;)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method
