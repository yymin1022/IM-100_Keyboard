.class Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserHistoryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

.field private final mDbHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;Landroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "openHelper"    # Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;
    .param p2, "pendingWrites"    # Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "dict"    # Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;
    .param p5, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    .line 372
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mDbHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    .line 374
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    .line 375
    iput-object p5, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mPrefs:Landroid/content/SharedPreferences;

    .line 376
    return-void
.end method

.method private static checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 380
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v1, "frequency"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "pair_id"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 384
    .local v8, "c":Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 386
    .local v13, "totalRowCount":I
    invoke-static {}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$000()I

    move-result v0

    if-le v13, v0, :cond_58

    .line 387
    invoke-static {}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$000()I

    move-result v0

    sub-int v0, v13, v0

    invoke-static {}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$100()I

    move-result v1

    add-int v10, v0, v1

    .line 389
    .local v10, "numDeleteRows":I
    const-string v0, "pair_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 390
    .local v12, "pairIdColumnId":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    const/4 v9, 0x0

    .line 392
    .local v9, "count":I
    :goto_39
    if-ge v9, v10, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_58

    .line 393
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "pairId":Ljava/lang/String;
    const-string v0, "main"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_5c

    .line 399
    add-int/lit8 v9, v9, 0x1

    .line 400
    goto :goto_39

    .line 403
    .end local v9    # "count":I
    .end local v10    # "numDeleteRows":I
    .end local v11    # "pairId":Ljava/lang/String;
    .end local v12    # "pairIdColumnId":I
    :cond_58
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 405
    return-void

    .line 403
    .end local v13    # "totalRowCount":I
    :catchall_5c
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private doLoadTaskLocked(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .registers 34
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 443
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_f1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 444
    .local v20, "now":J
    :goto_8
    const/16 v28, 0x0

    .line 445
    .local v28, "profTotal":I
    const/16 v27, 0x0

    .line 446
    .local v27, "profInsert":I
    const/16 v26, 0x0

    .line 447
    .local v26, "profDelete":I
    const-string v2, "PRAGMA foreign_keys = ON;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->size()I

    move-result v2

    invoke-static {}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$000()I

    move-result v3

    if-gt v2, v3, :cond_f5

    const/4 v10, 0x1

    .line 451
    .local v10, "addLevel0Bigram":Z
    :goto_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_30
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 452
    .local v29, "word1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->getBigrams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v30

    .line 453
    .local v30, "word1Bigrams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 454
    .local v31, "word2":Ljava/lang/String;
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_60

    .line 455
    add-int/lit8 v28, v28, 0x1

    .line 459
    :cond_60
    if-nez v29, :cond_f8

    .line 460
    const/16 v16, 0x2

    .line 461
    .local v16, "freq":I
    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v25

    .line 462
    .local v25, "prevFc":B
    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_4e

    .line 505
    .end local v25    # "prevFc":B
    :goto_73
    const/4 v11, 0x0

    .line 507
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v29, :cond_136

    .line 508
    :try_start_76
    const-string v3, "main"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "word1=? AND word2=? AND locale=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v29, v6, v2

    const/4 v2, 0x1

    aput-object v31, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 521
    :goto_9b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 522
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_a7

    .line 523
    add-int/lit8 v26, v26, 0x1

    .line 526
    :cond_a7
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 527
    .local v23, "pairId":I
    const-string v2, "frequency"

    const-string v3, "pair_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 535
    :goto_c4
    if-lez v16, :cond_ea

    .line 536
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_cc

    .line 537
    add-int/lit8 v27, v27, 0x1

    .line 544
    :cond_cc
    const-string v2, "frequency"

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->getFrequencyContentValues(II)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mBigramList:Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;

    move/from16 v0, v16

    int-to-byte v3, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v1, v3}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionaryBigramList;->updateBigram(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_ea
    .catchall {:try_start_76 .. :try_end_ea} :catchall_179

    .line 551
    :cond_ea
    if-eqz v11, :cond_4e

    .line 552
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4e

    .line 443
    .end local v10    # "addLevel0Bigram":Z
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v16    # "freq":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "now":J
    .end local v23    # "pairId":I
    .end local v26    # "profDelete":I
    .end local v27    # "profInsert":I
    .end local v28    # "profTotal":I
    .end local v29    # "word1":Ljava/lang/String;
    .end local v30    # "word1Bigrams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    .end local v31    # "word2":Ljava/lang/String;
    :cond_f1
    const-wide/16 v20, 0x0

    goto/16 :goto_8

    .line 448
    .restart local v20    # "now":J
    .restart local v26    # "profDelete":I
    .restart local v27    # "profInsert":I
    .restart local v28    # "profTotal":I
    :cond_f5
    const/4 v10, 0x0

    goto/16 :goto_24

    .line 474
    .restart local v10    # "addLevel0Bigram":Z
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v29    # "word1":Ljava/lang/String;
    .restart local v30    # "word1Bigrams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    .restart local v31    # "word2":Ljava/lang/String;
    :cond_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->getBigramWord(Ljava/lang/String;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;

    move-result-object v22

    .line 475
    .local v22, "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    if-eqz v22, :cond_132

    .line 476
    invoke-interface/range {v22 .. v22}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getFcParams()Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    move-result-object v15

    .line 477
    .local v15, "fcp":Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v25

    .line 478
    .restart local v25    # "prevFc":B
    invoke-virtual {v15}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->getFc()B

    move-result v14

    .line 479
    .local v14, "fc":B
    invoke-virtual {v15}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->isValid()Z

    move-result v19

    .line 480
    .local v19, "isValid":Z
    if-lez v25, :cond_122

    move/from16 v0, v25

    if-eq v0, v14, :cond_4e

    .line 492
    :cond_122
    move/from16 v0, v19

    invoke-static {v14, v0, v10}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->needsToSave(BZZ)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 494
    move/from16 v16, v14

    .restart local v16    # "freq":I
    goto/16 :goto_73

    .line 496
    .end local v16    # "freq":I
    :cond_12e
    const/16 v16, -0x1

    .restart local v16    # "freq":I
    goto/16 :goto_73

    .line 499
    .end local v14    # "fc":B
    .end local v15    # "fcp":Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .end local v16    # "freq":I
    .end local v19    # "isValid":Z
    .end local v25    # "prevFc":B
    :cond_132
    const/16 v16, -0x1

    .restart local v16    # "freq":I
    goto/16 :goto_73

    .line 514
    .end local v22    # "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_136
    :try_start_136
    const-string v3, "main"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "word1 IS NULL AND word2=? AND locale=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v31, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_9b

    .line 531
    :cond_15a
    const-string v2, "main"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v4}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 533
    .local v24, "pairIdLong":Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I
    :try_end_176
    .catchall {:try_start_136 .. :try_end_176} :catchall_179

    move-result v23

    .restart local v23    # "pairId":I
    goto/16 :goto_c4

    .line 551
    .end local v23    # "pairId":I
    .end local v24    # "pairIdLong":Ljava/lang/Long;
    :catchall_179
    move-exception v2

    if-eqz v11, :cond_17f

    .line 552
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_17f
    throw v2

    .line 558
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v16    # "freq":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v29    # "word1":Ljava/lang/String;
    .end local v30    # "word1Bigrams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Byte;>;"
    .end local v31    # "word2":Ljava/lang/String;
    :cond_180
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->setLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 561
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->PROFILE_SAVE_RESTORE:Z

    if-eqz v2, :cond_1e2

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v20

    .line 563
    .local v12, "diff":J
    const-string v2, "UserHistoryDictionary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROF: Write User HistoryDictionary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms. Total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v12    # "diff":J
    :cond_1e2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 568
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5
    .param p0, "word1"    # Ljava/lang/String;
    .param p1, "word2"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 572
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 573
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "word1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v1, "word2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "locale"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-object v0
.end method

.method private static getFrequencyContentValues(II)Landroid/content/ContentValues;
    .registers 5
    .param p0, "pairId"    # I
    .param p1, "frequency"    # I

    .prologue
    .line 580
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pair_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v1, "freq"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 361
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$200(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 413
    :try_start_e
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mDbHelper:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_e .. :try_end_13} :catch_4b
    .catchall {:try_start_e .. :try_end_13} :catchall_3b

    move-result-object v0

    .line 418
    :goto_14
    if-nez v0, :cond_25

    .line 425
    if-eqz v0, :cond_1b

    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 428
    :cond_1b
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$200(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 431
    :cond_24
    :goto_24
    return-object v1

    .line 422
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 423
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->doLoadTaskLocked(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3b

    move-result-object v1

    .line 425
    if-eqz v0, :cond_31

    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 428
    :cond_31
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$200(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_24

    .line 425
    :catchall_3b
    move-exception v1

    if-eqz v0, :cond_41

    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 428
    :cond_41
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary$UpdateDbTask;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->access$200(Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 414
    :catch_4b
    move-exception v2

    goto :goto_14
.end method
