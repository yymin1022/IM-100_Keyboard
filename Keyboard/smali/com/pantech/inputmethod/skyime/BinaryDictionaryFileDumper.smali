.class public Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;
.super Ljava/lang/Object;
.source "BinaryDictionaryFileDumper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DICTIONARY_PROJECTION:[Ljava/lang/String;

.field private static final FILE_READ_BUFFER_SIZE:I = 0x400

.field private static final MAGIC_NUMBER_VERSION_1:[B

.field private static final MAGIC_NUMBER_VERSION_2:[B

.field public static final QUERY_PARAMETER_DELETE_RESULT:Ljava/lang/String; = "result"

.field public static final QUERY_PARAMETER_FAILURE:Ljava/lang/String; = "failure"

.field public static final QUERY_PARAMETER_MAY_PROMPT_USER:Ljava/lang/String; = "mayPrompt"

.field public static final QUERY_PARAMETER_SUCCESS:Ljava/lang/String; = "success"

.field public static final QUERY_PARAMETER_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 44
    const-class v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    .line 52
    new-array v0, v1, [B

    fill-array-data v0, :array_22

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_1:[B

    .line 54
    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    return-void

    .line 52
    :array_22
    .array-data 1
        0x78t
        -0x4ft
        0x0t
        0x0t
    .end array-data

    .line 54
    :array_28
    .array-data 1
        -0x65t
        -0x3ft
        0x3at
        -0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .registers 32
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v5, 0x0

    .line 143
    .local v5, "COMPRESSED_CRYPTED_COMPRESSED":I
    const/4 v7, 0x1

    .line 144
    .local v7, "CRYPTED_COMPRESSED":I
    const/4 v4, 0x2

    .line 145
    .local v4, "COMPRESSED_CRYPTED":I
    const/4 v6, 0x3

    .line 146
    .local v6, "COMPRESSED_ONLY":I
    const/4 v8, 0x4

    .line 147
    .local v8, "CRYPTED_ONLY":I
    const/4 v11, 0x5

    .line 148
    .local v11, "NONE":I
    const/4 v10, 0x0

    .line 149
    .local v10, "MODE_MIN":I
    const/4 v9, 0x5

    .line 151
    .local v9, "MODE_MAX":I
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    .line 152
    .local v23, "wordListUriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 154
    .local v19, "outputFileName":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "mode":I
    :goto_17
    const/16 v24, 0x5

    move/from16 v0, v24

    if-gt v15, v0, :cond_1d1

    .line 155
    const/16 v16, 0x0

    .line 156
    .local v16, "originalSourceStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 157
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 158
    .local v17, "outputFile":Ljava/io/File;
    const/16 v20, 0x0

    .line 159
    .local v20, "outputStream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 160
    .local v12, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    .line 163
    .local v22, "wordListUri":Landroid/net/Uri;
    :try_start_29
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_141
    .catchall {:try_start_29 .. :try_end_30} :catchall_18d

    move-result-object v12

    .line 165
    if-nez v12, :cond_78

    const/16 v24, 0x0

    .line 220
    if-eqz v14, :cond_3a

    :try_start_37
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_40

    .line 225
    :cond_3a
    :goto_3a
    if-eqz v20, :cond_3f

    :try_start_3c
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_5c

    .line 242
    .end local v12    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "originalSourceStream":Ljava/io/InputStream;
    .end local v17    # "outputFile":Ljava/io/File;
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .end local v22    # "wordListUri":Landroid/net/Uri;
    :cond_3f
    :goto_3f
    return-object v24

    .line 221
    .restart local v12    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "originalSourceStream":Ljava/io/InputStream;
    .restart local v17    # "outputFile":Ljava/io/File;
    .restart local v20    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v22    # "wordListUri":Landroid/net/Uri;
    :catch_40
    move-exception v13

    .line 222
    .local v13, "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 226
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_5c
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a file : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 166
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_78
    :try_start_78
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 168
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_141
    .catchall {:try_start_78 .. :try_end_81} :catchall_18d

    .line 169
    .end local v17    # "outputFile":Ljava/io/File;
    .local v18, "outputFile":Ljava/io/File;
    :try_start_81
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_20a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_200

    .line 171
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .local v21, "outputStream":Ljava/io/FileOutputStream;
    packed-switch v15, :pswitch_data_216

    .line 196
    :goto_8d
    :try_start_8d
    new-instance v24, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V

    .line 197
    const-string v24, "result"

    const-string v25, "success"

    invoke-virtual/range {v23 .. v25}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    if-gtz v24, :cond_bf

    .line 200
    sget-object v24, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v25, "Could not have the dictionary pack delete a word list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_bf
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;->removeFilesWithIdExcept(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 204
    invoke-static/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_cb} :catch_20f
    .catchall {:try_start_8d .. :try_end_cb} :catchall_204

    move-result-object v24

    .line 220
    if-eqz v14, :cond_d1

    :try_start_ce
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_125

    .line 225
    :cond_d1
    :goto_d1
    if-eqz v21, :cond_3f

    :try_start_d3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_3f

    .line 226
    :catch_d8
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a file : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 173
    .end local v13    # "e":Ljava/lang/Exception;
    :pswitch_f5
    :try_start_f5
    invoke-static/range {v16 .. v16}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 177
    goto :goto_8d

    .line 179
    :pswitch_102
    invoke-static/range {v16 .. v16}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 181
    goto :goto_8d

    .line 183
    :pswitch_10b
    invoke-static/range {v16 .. v16}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 185
    goto/16 :goto_8d

    .line 187
    :pswitch_115
    invoke-static/range {v16 .. v16}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 188
    goto/16 :goto_8d

    .line 190
    :pswitch_11b
    invoke-static/range {v16 .. v16}, Lcom/pantech/inputmethod/skyime/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_11e} :catch_20f
    .catchall {:try_start_f5 .. :try_end_11e} :catchall_204

    move-result-object v14

    .line 191
    goto/16 :goto_8d

    .line 193
    :pswitch_121
    move-object/from16 v14, v16

    goto/16 :goto_8d

    .line 221
    :catch_125
    move-exception v13

    .line 222
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 205
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "outputFile":Ljava/io/File;
    .end local v21    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "outputFile":Ljava/io/File;
    .restart local v20    # "outputStream":Ljava/io/FileOutputStream;
    :catch_141
    move-exception v13

    .line 209
    .restart local v13    # "e":Ljava/lang/Exception;
    :goto_142
    if-eqz v17, :cond_147

    .line 213
    :try_start_144
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_18d

    .line 220
    :cond_147
    if-eqz v14, :cond_14c

    :try_start_149
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14c} :catch_155

    .line 225
    :cond_14c
    :goto_14c
    if-eqz v20, :cond_151

    :try_start_14e
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_171

    .line 154
    :cond_151
    :goto_151
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_17

    .line 221
    :catch_155
    move-exception v13

    .line 222
    sget-object v24, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    .line 226
    :catch_171
    move-exception v13

    .line 227
    sget-object v24, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while closing a file : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 218
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_18d
    move-exception v24

    .line 220
    :goto_18e
    if-eqz v14, :cond_193

    :try_start_190
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_199

    .line 225
    :cond_193
    :goto_193
    if-eqz v20, :cond_198

    :try_start_195
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_1b5

    .line 228
    :cond_198
    :goto_198
    throw v24

    .line 221
    :catch_199
    move-exception v13

    .line 222
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a cross-process file descriptor : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    .line 226
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1b5
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception while closing a file : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    .line 234
    .end local v12    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "originalSourceStream":Ljava/io/InputStream;
    .end local v17    # "outputFile":Ljava/io/File;
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .end local v22    # "wordListUri":Landroid/net/Uri;
    :cond_1d1
    sget-object v24, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v25, "Could not copy a word list. Will not be able to use it."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v24, "result"

    const-string v25, "failure"

    invoke-virtual/range {v23 .. v25}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 239
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    if-gtz v24, :cond_1fc

    .line 240
    sget-object v24, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v25, "In addition, we were unable to delete it."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1fc
    const/16 v24, 0x0

    goto/16 :goto_3f

    .line 218
    .restart local v12    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "originalSourceStream":Ljava/io/InputStream;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v20    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v22    # "wordListUri":Landroid/net/Uri;
    :catchall_200
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "outputFile":Ljava/io/File;
    .restart local v17    # "outputFile":Ljava/io/File;
    goto :goto_18e

    .end local v17    # "outputFile":Ljava/io/File;
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v21    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_204
    move-exception v24

    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "outputStream":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "outputFile":Ljava/io/File;
    .restart local v17    # "outputFile":Ljava/io/File;
    goto :goto_18e

    .line 205
    .end local v17    # "outputFile":Ljava/io/File;
    .restart local v18    # "outputFile":Ljava/io/File;
    :catch_20a
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "outputFile":Ljava/io/File;
    .restart local v17    # "outputFile":Ljava/io/File;
    goto/16 :goto_142

    .end local v17    # "outputFile":Ljava/io/File;
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "outputFile":Ljava/io/File;
    .restart local v21    # "outputStream":Ljava/io/FileOutputStream;
    :catch_20f
    move-exception v13

    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "outputStream":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "outputFile":Ljava/io/File;
    .restart local v17    # "outputFile":Ljava/io/File;
    goto/16 :goto_142

    .line 171
    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_102
        :pswitch_10b
        :pswitch_115
        :pswitch_11b
        :pswitch_121
    .end packed-switch
.end method

.method public static cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;
    .registers 11
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasDefaultWordList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/skyime/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 258
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/WordListInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "fileAddressList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/AssetFileAddress;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/WordListInfo;

    .line 262
    .local v3, "id":Lcom/pantech/inputmethod/skyime/WordListInfo;
    iget-object v6, v3, Lcom/pantech/inputmethod/skyime/WordListInfo;->mId:Ljava/lang/String;

    iget-object v7, v3, Lcom/pantech/inputmethod/skyime/WordListInfo;->mLocale:Ljava/lang/String;

    invoke-static {v6, v7, v5, p1}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/pantech/inputmethod/skyime/AssetFileAddress;

    move-result-object v0

    .line 263
    .local v0, "afd":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    if-eqz v0, :cond_11

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 267
    .end local v0    # "afd":Lcom/pantech/inputmethod/skyime/AssetFileAddress;
    .end local v3    # "id":Lcom/pantech/inputmethod/skyime/WordListInfo;
    :cond_2b
    return-object v1
.end method

.method private static checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V
    .registers 9
    .param p0, "input"    # Ljava/io/BufferedInputStream;
    .param p1, "output"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 283
    sget-object v5, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    array-length v1, v5

    .line 284
    .local v1, "length":I
    new-array v2, v1, [B

    .line 285
    .local v2, "magicNumberBuffer":[B
    invoke-virtual {p0, v2, v6, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 286
    .local v4, "readMagicNumberSize":I
    if-ge v4, v1, :cond_14

    .line 287
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Less bytes to read than the magic number length"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    :cond_14
    sget-object v5, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_2:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 290
    sget-object v5, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->MAGIC_NUMBER_VERSION_1:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 291
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong magic number for downloaded file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_2c
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 298
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, "readBytes":I
    :goto_37
    if-ltz v3, :cond_41

    .line 299
    invoke-virtual {p1, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 298
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    goto :goto_37

    .line 300
    :cond_41
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 301
    return-void
.end method

.method private static getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.pantech.inputmethod.skyime.dictionarypack"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;Z)Ljava/util/List;
    .registers 15
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasDefaultWordList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/skyime/WordListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->getProviderUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 89
    .local v6, "builder":Landroid/net/Uri$Builder;
    if-nez p2, :cond_16

    .line 90
    const-string v2, "mayPrompt"

    const-string v4, "true"

    invoke-virtual {v6, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    :cond_16
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "dictionaryPackUri":Landroid/net/Uri;
    sget-object v2, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 115
    :goto_28
    return-object v9

    .line 96
    :cond_29
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 97
    :cond_35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_28

    .line 102
    :cond_3d
    :try_start_3d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/WordListInfo;>;"
    :cond_42
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, "wordListId":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "wordListLocale":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 108
    :goto_52
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_42

    .line 109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 111
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/WordListInfo;>;"
    .end local v10    # "wordListId":Ljava/lang/String;
    .end local v11    # "wordListLocale":Ljava/lang/String;
    :catch_5c
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception communicating with the dictionary pack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_28

    .line 107
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/WordListInfo;>;"
    .restart local v10    # "wordListId":Ljava/lang/String;
    .restart local v11    # "wordListLocale":Ljava/lang/String;
    :cond_7a
    :try_start_7a
    new-instance v2, Lcom/pantech/inputmethod/skyime/WordListInfo;

    invoke-direct {v2, v10, v11}, Lcom/pantech/inputmethod/skyime/WordListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_82} :catch_5c

    goto :goto_52
.end method

.method private static openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 130
    :goto_6
    return-object v1

    .line 127
    :catch_7
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/pantech/inputmethod/skyime/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v2, "Could not find a word list from the dictionary provider."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_6
.end method
