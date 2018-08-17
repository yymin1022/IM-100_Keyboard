.class Lcom/pantech/inputmethod/style/StyleSettingActivity$2;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callGalleryActivity()V
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setImageSizeBoundary(I)V

    .line 424
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    const/16 v1, 0x438

    const/16 v2, 0x307

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setCropOption(II)V

    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->startSelectImage()V

    .line 428
    return-void
.end method

.method private replaceKeyboardBGFile()V
    .registers 19

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/io/File;

    move-result-object v14

    .line 353
    .local v14, "image":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2300(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/io/File;

    move-result-object v15

    .line 355
    .local v15, "imageNewForCrop":Ljava/io/File;
    const/4 v10, 0x0

    .line 356
    .local v10, "fiNew":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 357
    .local v12, "fo":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 358
    .local v3, "fcNew":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 360
    .local v8, "fcOut":Ljava/nio/channels/FileChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 362
    :try_start_1e
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_66

    .line 367
    :goto_21
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-eqz v4, :cond_65

    .line 370
    :try_start_31
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_72
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_a3
    .catchall {:try_start_31 .. :try_end_36} :catchall_c1

    .line 371
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .local v13, "fo":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_f4
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_ed
    .catchall {:try_start_36 .. :try_end_3b} :catchall_e6

    .line 373
    .end local v10    # "fiNew":Ljava/io/FileInputStream;
    .local v11, "fiNew":Ljava/io/FileInputStream;
    :try_start_3b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 374
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 377
    .local v6, "size":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_4c} :catch_f8
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4c} :catch_f0
    .catchall {:try_start_3b .. :try_end_4c} :catchall_e9

    .line 389
    if-eqz v8, :cond_51

    .line 390
    :try_start_4e
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 393
    :cond_51
    if-eqz v3, :cond_56

    .line 394
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 398
    :cond_56
    if-eqz v11, :cond_5b

    .line 399
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 402
    :cond_5b
    if-eqz v13, :cond_60

    .line 403
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_60} :catch_6b

    :cond_60
    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 410
    .end local v6    # "size":J
    .end local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v10    # "fiNew":Ljava/io/FileInputStream;
    :cond_62
    :goto_62
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 418
    :cond_65
    :goto_65
    return-void

    .line 363
    :catch_66
    move-exception v9

    .line 364
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 406
    .end local v9    # "e1":Ljava/io/IOException;
    .end local v10    # "fiNew":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v6    # "size":J
    .restart local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catch_6b
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 409
    .end local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v10    # "fiNew":Ljava/io/FileInputStream;
    goto :goto_62

    .line 379
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "size":J
    :catch_72
    move-exception v2

    .line 380
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 381
    invoke-static {}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file not found there?"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_86
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_c1

    .line 389
    if-eqz v8, :cond_8e

    .line 390
    :try_start_8b
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 393
    :cond_8e
    if-eqz v3, :cond_93

    .line 394
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 398
    :cond_93
    if-eqz v10, :cond_98

    .line 399
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 402
    :cond_98
    if-eqz v12, :cond_62

    .line 403
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9d} :catch_9e

    goto :goto_62

    .line 406
    :catch_9e
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 384
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a3
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_a4
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_c1

    .line 389
    if-eqz v8, :cond_ac

    .line 390
    :try_start_a9
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 393
    :cond_ac
    if-eqz v3, :cond_b1

    .line 394
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 398
    :cond_b1
    if-eqz v10, :cond_b6

    .line 399
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 402
    :cond_b6
    if-eqz v12, :cond_62

    .line 403
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_bb} :catch_bc

    goto :goto_62

    .line 406
    :catch_bc
    move-exception v2

    .line 407
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 387
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_c1
    move-exception v4

    .line 389
    :goto_c2
    if-eqz v8, :cond_c7

    .line 390
    :try_start_c4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 393
    :cond_c7
    if-eqz v3, :cond_cc

    .line 394
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 398
    :cond_cc
    if-eqz v10, :cond_d1

    .line 399
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 402
    :cond_d1
    if-eqz v12, :cond_d6

    .line 403
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d6} :catch_d7

    .line 408
    :cond_d6
    :goto_d6
    throw v4

    .line 406
    :catch_d7
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d6

    .line 414
    .end local v2    # "e":Ljava/io/IOException;
    :cond_dc
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 415
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_65

    .line 387
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catchall_e6
    move-exception v4

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    goto :goto_c2

    .end local v10    # "fiNew":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catchall_e9
    move-exception v4

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v10    # "fiNew":Ljava/io/FileInputStream;
    goto :goto_c2

    .line 384
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catch_ed
    move-exception v2

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    goto :goto_a4

    .end local v10    # "fiNew":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catch_f0
    move-exception v2

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v10    # "fiNew":Ljava/io/FileInputStream;
    goto :goto_a4

    .line 379
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catch_f4
    move-exception v2

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    goto/16 :goto_73

    .end local v10    # "fiNew":Ljava/io/FileInputStream;
    .end local v12    # "fo":Ljava/io/FileOutputStream;
    .restart local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v13    # "fo":Ljava/io/FileOutputStream;
    :catch_f8
    move-exception v2

    move-object v12, v13

    .end local v13    # "fo":Ljava/io/FileOutputStream;
    .restart local v12    # "fo":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fiNew":Ljava/io/FileInputStream;
    .restart local v10    # "fiNew":Ljava/io/FileInputStream;
    goto/16 :goto_73
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 260
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;

    move-result-object v6

    if-ne p1, v6, :cond_e6

    .line 262
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$600(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 265
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "theme_type"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v6, "opacity_text"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    const-string v6, "opacity_key_background"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$900(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v6, "opacitiy_outline"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v6, "keyboard_background_image_selected"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v5, "row":Landroid/content/ContentValues;
    const-string v6, "_value"

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    :try_start_78
    const-string v6, "content://com.pantech.inputmethods.SkyIME.SkyIMEProvider/data/KeyboardThemeIndex"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_83} :catch_e1

    .line 288
    :goto_83
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->replaceKeyboardBGFile()V

    .line 290
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 291
    invoke-static {}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHasDeleteImage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v8}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_ae
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 294
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/io/File;

    move-result-object v3

    .line 295
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 296
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1402(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)Z

    .line 298
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1600(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    .line 301
    .end local v3    # "file":Ljava/io/File;
    :cond_c9
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 304
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/inputmethod/style/KeyDrawable;->loadDrawableFromFile(Landroid/content/Context;)V

    .line 307
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->finish()V

    .line 348
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "row":Landroid/content/ContentValues;
    :cond_e0
    :goto_e0
    return-void

    .line 282
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "row":Landroid/content/ContentValues;
    :catch_e1
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_83

    .line 308
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "row":Landroid/content/ContentValues;
    :cond_e6
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$600(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;

    move-result-object v6

    if-ne p1, v6, :cond_102

    .line 310
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 314
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->finish()V

    goto :goto_e0

    .line 315
    :cond_102
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/Button;

    move-result-object v6

    if-ne p1, v6, :cond_131

    .line 317
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 319
    .local v4, "h":Landroid/os/Handler;
    new-instance v6, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {v6, v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1900(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 324
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_e0

    .line 326
    .end local v4    # "h":Landroid/os/Handler;
    :cond_131
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    if-ne p1, v6, :cond_167

    .line 328
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 329
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 330
    .restart local v4    # "h":Landroid/os/Handler;
    new-instance v6, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;

    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {v6, v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->callGalleryActivity()V

    .line 334
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1402(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)Z

    .line 336
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    const v7, 0x7f02008a

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_e0

    .line 338
    .end local v4    # "h":Landroid/os/Handler;
    :cond_167
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    if-ne p1, v6, :cond_e0

    .line 339
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const v7, 0x7f02018e

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 340
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    const v7, 0x7f020089

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 341
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 342
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1600(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    .line 345
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v8}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1402(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)Z

    .line 346
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v6, v8}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$300(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    goto/16 :goto_e0
.end method
