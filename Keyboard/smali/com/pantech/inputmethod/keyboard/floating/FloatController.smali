.class public Lcom/pantech/inputmethod/keyboard/floating/FloatController;
.super Ljava/lang/Object;
.source "FloatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/keyboard/floating/FloatController;


# instance fields
.field private mActive:Z

.field private mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnable:Z

.field private mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

.field private mFloatingKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field public final mHandler:Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;

.field private mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private mPackageName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

.field private mSplitLKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mSplitRKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mVoiceKeyEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->DEBUG:Z

    .line 54
    new-instance v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->sInstance:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    .line 50
    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    .line 56
    new-instance v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;-><init>(Lcom/pantech/inputmethod/keyboard/floating/FloatController;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mHandler:Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/floating/FloatController;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateFloating()V

    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/keyboard/floating/FloatController;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->sInstance:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    return-object v0
.end method

.method private getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZIZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 32
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "page"    # I
    .param p3, "isShift"    # Z
    .param p4, "language"    # I
    .param p5, "isLonginputKeyboard"    # Z
    .param p6, "inputMode"    # I

    .prologue
    .line 240
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v7

    .line 241
    .local v7, "mode":I
    const/4 v3, 0x0

    .line 242
    .local v3, "xmlId":I
    move/from16 v15, p4

    .line 243
    .local v15, "languageId":I
    const/16 v19, 0x1

    .line 245
    .local v19, "floatType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPackageName:Ljava/lang/String;

    const-string v2, "noSettingsKey"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "com.google.android.inputmethod.latin"

    const-string v2, "forceAscii"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_ba

    :cond_23
    const/4 v12, 0x1

    .line 250
    .local v12, "noSettingsKey":Z
    :goto_24
    const/4 v9, 0x0

    .line 251
    .local v9, "hasSettingsKey":Z
    const/4 v1, 0x0

    invoke-static {v1, v12}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(ZZ)I

    move-result v11

    .line 252
    .local v11, "f2KeyMode":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mVoiceKeyEnabled:Z

    .line 253
    .local v14, "hasShortcutKey":Z
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 254
    .local v4, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    .line 255
    .local v17, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .line 256
    .local v18, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v18

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 257
    .local v6, "keyboardWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_bd

    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->isPortraitOrientation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_bd

    const/16 v20, 0x1

    .line 259
    .local v20, "isPortrait":Z
    :goto_58
    packed-switch v7, :pswitch_data_232

    .line 312
    const/4 v1, 0x1

    if-ne v15, v1, :cond_14a

    .line 313
    packed-switch p2, :pswitch_data_23a

    .line 430
    :goto_61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getKeyboardView(I)Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v24

    .line 432
    .local v24, "view":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v24, :cond_88

    .line 433
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_1ec

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {v24 .. v24}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {v24 .. v24}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingRight()I

    move-result v2

    sub-int v6, v1, v2

    .line 455
    :cond_88
    :goto_88
    new-instance v22, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v1, v2, v5}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    .local v22, "settingsValues":Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;
    invoke-virtual/range {v22 .. v22}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isQwertyLongInput()Z

    move-result v10

    .line 458
    .local v10, "qwertyLongInput":Z
    new-instance v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move/from16 v16, p6

    invoke-direct/range {v1 .. v16}, Lcom/pantech/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZZIZZZII)V

    return-object v1

    .line 245
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v6    # "keyboardWidth":I
    .end local v9    # "hasSettingsKey":Z
    .end local v10    # "qwertyLongInput":Z
    .end local v11    # "f2KeyMode":I
    .end local v12    # "noSettingsKey":Z
    .end local v14    # "hasShortcutKey":Z
    .end local v17    # "config":Landroid/content/res/Configuration;
    .end local v18    # "dm":Landroid/util/DisplayMetrics;
    .end local v20    # "isPortrait":Z
    .end local v22    # "settingsValues":Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;
    .end local v24    # "view":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    :cond_ba
    const/4 v12, 0x0

    goto/16 :goto_24

    .line 257
    .restart local v4    # "locale":Ljava/util/Locale;
    .restart local v6    # "keyboardWidth":I
    .restart local v9    # "hasSettingsKey":Z
    .restart local v11    # "f2KeyMode":I
    .restart local v12    # "noSettingsKey":Z
    .restart local v14    # "hasShortcutKey":Z
    .restart local v17    # "config":Landroid/content/res/Configuration;
    .restart local v18    # "dm":Landroid/util/DisplayMetrics;
    :cond_bd
    const/16 v20, 0x0

    goto :goto_58

    .line 261
    .restart local v20    # "isPortrait":Z
    :pswitch_c0
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 262
    .local v21, "model":Ljava/lang/String;
    if-eqz v21, :cond_df

    const-string v1, "K"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 263
    packed-switch p2, :pswitch_data_244

    .line 291
    :goto_d1
    const/4 v15, 0x3

    .line 292
    goto :goto_61

    .line 265
    :pswitch_d3
    const v3, 0x7f050048

    .line 266
    goto :goto_d1

    .line 268
    :pswitch_d7
    const v3, 0x7f050049

    .line 269
    goto :goto_d1

    .line 271
    :pswitch_db
    const v3, 0x7f05004a

    goto :goto_d1

    .line 275
    :cond_df
    packed-switch p2, :pswitch_data_24e

    goto :goto_d1

    .line 278
    :pswitch_e3
    const v3, 0x7f05004c

    .line 282
    goto :goto_d1

    .line 284
    :pswitch_e7
    const v3, 0x7f05004d

    .line 285
    goto :goto_d1

    .line 287
    :pswitch_eb
    const v3, 0x7f05004e

    goto :goto_d1

    .line 294
    .end local v21    # "model":Ljava/lang/String;
    :pswitch_ef
    packed-switch p2, :pswitch_data_258

    .line 309
    :goto_f2
    const/4 v15, 0x3

    .line 310
    goto/16 :goto_61

    .line 297
    :pswitch_f5
    const v3, 0x7f05003a

    .line 301
    goto :goto_f2

    .line 303
    :pswitch_f9
    const v3, 0x7f05003b

    .line 304
    goto :goto_f2

    .line 306
    :pswitch_fd
    const v3, 0x7f05003c

    goto :goto_f2

    .line 315
    :pswitch_101
    const/16 v23, 0x2

    .line 316
    .local v23, "type":I
    if-eqz v20, :cond_111

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKorKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v23

    .line 319
    :cond_111
    packed-switch v23, :pswitch_data_262

    .line 336
    :pswitch_114
    const v3, 0x7f05002f

    .line 337
    sget-object v1, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 321
    :pswitch_123
    const v3, 0x7f050035

    .line 322
    goto/16 :goto_61

    .line 324
    :pswitch_128
    const v3, 0x7f050025

    .line 325
    goto/16 :goto_61

    .line 327
    :pswitch_12d
    const v3, 0x7f050028

    .line 328
    goto/16 :goto_61

    .line 330
    :pswitch_132
    const v3, 0x7f05002f

    .line 331
    goto/16 :goto_61

    .line 333
    :pswitch_137
    const v3, 0x7f05002b

    .line 334
    goto/16 :goto_61

    .line 342
    .end local v23    # "type":I
    :pswitch_13c
    const v3, 0x7f050030

    .line 343
    const/16 v19, 0x2

    .line 344
    goto/16 :goto_61

    .line 346
    :pswitch_143
    const v3, 0x7f050031

    .line 347
    const/16 v19, 0x2

    goto/16 :goto_61

    .line 350
    :cond_14a
    const/4 v1, 0x2

    if-ne v15, v1, :cond_18c

    .line 351
    packed-switch p2, :pswitch_data_272

    goto/16 :goto_61

    .line 353
    :pswitch_152
    const/16 v23, 0x2

    .line 354
    .restart local v23    # "type":I
    if-eqz v20, :cond_162

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getEngKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v23

    .line 357
    :cond_162
    packed-switch v23, :pswitch_data_27c

    .line 365
    :pswitch_165
    const v3, 0x7f05001e

    .line 366
    sget-object v1, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 359
    :pswitch_174
    const v3, 0x7f05001e

    .line 360
    goto/16 :goto_61

    .line 362
    :pswitch_179
    const v3, 0x7f050019

    .line 363
    goto/16 :goto_61

    .line 371
    .end local v23    # "type":I
    :pswitch_17e
    const v3, 0x7f05001f

    .line 372
    const/16 v19, 0x2

    .line 373
    goto/16 :goto_61

    .line 375
    :pswitch_185
    const v3, 0x7f050020

    .line 376
    const/16 v19, 0x2

    goto/16 :goto_61

    .line 379
    :cond_18c
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1a7

    .line 380
    packed-switch p2, :pswitch_data_286

    goto/16 :goto_61

    .line 382
    :pswitch_194
    const v3, 0x7f050041

    .line 383
    goto/16 :goto_61

    .line 385
    :pswitch_199
    const v3, 0x7f050042

    .line 386
    const/16 v19, 0x2

    .line 387
    goto/16 :goto_61

    .line 389
    :pswitch_1a0
    const v3, 0x7f050043

    .line 390
    const/16 v19, 0x2

    goto/16 :goto_61

    .line 393
    :cond_1a7
    const/4 v1, 0x4

    if-ne v15, v1, :cond_1c2

    .line 394
    packed-switch p2, :pswitch_data_290

    goto/16 :goto_61

    .line 396
    :pswitch_1af
    const v3, 0x7f050013

    .line 397
    goto/16 :goto_61

    .line 399
    :pswitch_1b4
    const v3, 0x7f050014

    .line 400
    const/16 v19, 0x2

    .line 401
    goto/16 :goto_61

    .line 403
    :pswitch_1bb
    const v3, 0x7f050015

    .line 404
    const/16 v19, 0x2

    goto/16 :goto_61

    .line 407
    :cond_1c2
    const/4 v1, 0x6

    if-ne v15, v1, :cond_1dd

    .line 409
    packed-switch p2, :pswitch_data_29a

    goto/16 :goto_61

    .line 411
    :pswitch_1ca
    const v3, 0x7f05000d

    .line 412
    goto/16 :goto_61

    .line 414
    :pswitch_1cf
    const v3, 0x7f05000e

    .line 415
    const/16 v19, 0x2

    .line 416
    goto/16 :goto_61

    .line 418
    :pswitch_1d6
    const v3, 0x7f05000f

    .line 419
    const/16 v19, 0x2

    goto/16 :goto_61

    .line 423
    :cond_1dd
    const v3, 0x7f050008

    .line 424
    sget-object v1, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 436
    .restart local v24    # "view":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    :cond_1ec
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_88

    .line 437
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_221

    .line 439
    const/4 v1, 0x6

    if-eq v15, v1, :cond_1fc

    const/4 v1, 0x4

    if-ne v15, v1, :cond_215

    .line 440
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 450
    :cond_207
    :goto_207
    invoke-virtual/range {v24 .. v24}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual/range {v24 .. v24}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingRight()I

    move-result v2

    sub-int v6, v1, v2

    goto/16 :goto_88

    .line 443
    :cond_215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_207

    .line 446
    :cond_221
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_207

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_207

    .line 259
    :pswitch_data_232
    .packed-switch 0x4
        :pswitch_c0
        :pswitch_ef
    .end packed-switch

    .line 313
    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_101
        :pswitch_13c
        :pswitch_143
    .end packed-switch

    .line 263
    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d7
        :pswitch_db
    .end packed-switch

    .line 275
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_e7
        :pswitch_eb
    .end packed-switch

    .line 294
    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_f9
        :pswitch_fd
    .end packed-switch

    .line 319
    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_123
        :pswitch_114
        :pswitch_132
        :pswitch_128
        :pswitch_12d
        :pswitch_137
    .end packed-switch

    .line 351
    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_152
        :pswitch_17e
        :pswitch_185
    .end packed-switch

    .line 357
    :pswitch_data_27c
    .packed-switch 0x0
        :pswitch_179
        :pswitch_165
        :pswitch_174
    .end packed-switch

    .line 380
    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_194
        :pswitch_199
        :pswitch_1a0
    .end packed-switch

    .line 394
    :pswitch_data_290
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_1b4
        :pswitch_1bb
    .end packed-switch

    .line 409
    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_1ca
        :pswitch_1cf
        :pswitch_1d6
    .end packed-switch
.end method

.method private isPortraitOrientation()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 530
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 531
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private makeKeyboard(I)V
    .registers 12
    .param p1, "language"    # I

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v6, 0x4

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZIZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatingKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 231
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v5, 0x1

    const/4 v9, 0x5

    move-object v3, p0

    move v6, v2

    move v7, p1

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZIZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSplitLKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 233
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v5, 0x2

    const/4 v9, 0x6

    move-object v3, p0

    move v6, v2

    move v7, p1

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZIZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSplitRKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 235
    return-void
.end method

.method private updateFloating()V
    .registers 4

    .prologue
    .line 157
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    if-nez v1, :cond_5

    .line 175
    :cond_4
    :goto_4
    return-void

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->isPortraitOrientation()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 169
    :cond_14
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "inputView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_25

    .line 171
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_25
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setType(I)V

    .line 174
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->startFloatPanel(I)V

    goto :goto_4
.end method


# virtual methods
.method public closeResource()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    .line 198
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->stopFloatPanel()V

    .line 199
    return-void
.end method

.method public createInputView(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 9
    .param p1, "switcher"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p2, "ims"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p3, "themeContext"    # Landroid/content/Context;
    .param p4, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 84
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 85
    iput-object p4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mResources:Landroid/content/res/Resources;

    .line 87
    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPackageName:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .line 89
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->init(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/view/View;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    .line 91
    return-void
.end method

.method public dimKeyboard(Z)V
    .registers 3
    .param p1, "dim"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_9

    .line 525
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->dimKeyboard(Z)V

    .line 527
    :cond_9
    return-void
.end method

.method public getCurrentInputView()Lcom/pantech/inputmethod/skyime/InputView;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentInputView()Lcom/pantech/inputmethod/skyime/InputView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyboardID()Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method public getCurrentPopupWindow()Landroid/widget/PopupWindow;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getFloatingMoveLastX()F
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_b

    .line 511
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionX()F

    move-result v0

    .line 513
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloatingMoveLastY()F
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_b

    .line 518
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v0

    .line 520
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getKeyboardView(I)Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-nez v0, :cond_6

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    goto :goto_5
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    return v0
.end method

.method public initFloatingPositionForVITA()V
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_9

    .line 565
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->initFloatingPositionForVITA()V

    .line 567
    :cond_9
    return-void
.end method

.method public isFloatingMoveMode()Z
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_b

    .line 537
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isFloatingMoveMode()Z

    move-result v0

    .line 539
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    return v0
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "voiceKeyEnabled"    # Z

    .prologue
    .line 224
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 225
    iput-boolean p2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mVoiceKeyEnabled:Z

    .line 226
    return-void
.end method

.method public loadRecentKeys(Landroid/content/SharedPreferences;)V
    .registers 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_f

    .line 485
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->loadRecentKeys(ILandroid/content/SharedPreferences;)V

    .line 487
    :cond_f
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    .line 204
    return-void
.end method

.method public setAutomaticTemporaryUpperCase()V
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setAutomaticTemporaryUpperCase()V

    .line 501
    return-void
.end method

.method public setFloatViewMoving(Z)V
    .registers 3
    .param p1, "isShowing"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setFloatViewMoving(Z)V

    .line 559
    :cond_9
    return-void
.end method

.method public setLandscapePrevType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setLandscapePrevType(I)V

    .line 183
    return-void
.end method

.method public setManualEnglishShifteMode()V
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualEnglishShifteMode()V

    .line 493
    return-void
.end method

.method public setManualTemporaryUpperCase(Z)V
    .registers 3
    .param p1, "shifted"    # Z

    .prologue
    .line 496
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualTemporaryUpperCase(Z)V

    .line 497
    return-void
.end method

.method public setShiftLocked(Z)V
    .registers 3
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setShiftLocked(Z)V

    .line 505
    return-void
.end method

.method public setType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setType(I)V

    .line 179
    return-void
.end method

.method public startFloatMode(IIZ)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "language"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v10, 0x1

    .line 98
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 99
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFloatMode() type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1d
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    if-nez v0, :cond_22

    .line 153
    :goto_21
    return-void

    .line 106
    :cond_22
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->makeKeyboard(I)V

    .line 108
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Landroid/view/View;

    move-result-object v6

    .line 109
    .local v6, "inputView":Landroid/view/View;
    if-nez p1, :cond_4a

    .line 110
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->backupType()V

    .line 111
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->stopFloatMode()V

    .line 112
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 113
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setType(I)V

    .line 152
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateShiftState()V

    goto :goto_21

    .line 116
    :cond_4a
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatingKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v7

    .line 117
    .local v7, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSplitLKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v8

    .line 118
    .local v8, "keyboardLeft":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mSplitRKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v9

    .line 120
    .local v9, "keyboardRight":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0, p1, v7, v8, v9}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setKeyboard(ILcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 121
    iget-object v0, v7, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 124
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7d

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_af

    .line 127
    :cond_7d
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumSymlist()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getPageNum()I

    move-result v3

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumPerPage()I

    move-result v4

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->isPortraitOrientation()Z

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateSymbolEmoticonKeys(ILjava/util/ArrayList;IIZ)V

    .line 146
    :cond_99
    :goto_99
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    if-ne v0, p1, :cond_a7

    if-ne p3, v10, :cond_3f

    .line 147
    :cond_a7
    iput-boolean v10, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    .line 148
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mHandler:Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;->postUpdateFloatView()V

    goto :goto_3f

    .line 134
    :cond_af
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_99

    .line 136
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getEmojiMode()I

    move-result v0

    if-nez v0, :cond_c8

    .line 137
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->loadRecentKeys(ILandroid/content/SharedPreferences;)V

    goto :goto_99

    .line 139
    :cond_c8
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getEmojiMode()I

    move-result v2

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getEmojiArray()[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getPageNum()I

    move-result v4

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumPerPage()I

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateEmojiKeys(II[Ljava/lang/String;II)V

    goto :goto_99
.end method

.method public stopFloatMode()V
    .registers 3

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mActive:Z

    .line 217
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 219
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->stopFloatPanel()V

    .line 221
    :cond_11
    return-void
.end method

.method public updateEmojiKeys(I[Ljava/lang/String;II)V
    .registers 11
    .param p1, "mode"    # I
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "pageNum"    # I
    .param p4, "numPerPage"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_13

    .line 479
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateEmojiKeys(II[Ljava/lang/String;II)V

    .line 481
    :cond_13
    return-void
.end method

.method public updateFloatingWindows()V
    .registers 4

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getLanguage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->startFloatMode(IIZ)V

    .line 573
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateFloatingPopup()V

    .line 574
    return-void
.end method

.method public updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V
    .registers 11
    .param p2, "pageNum"    # I
    .param p3, "numPerPage"    # I
    .param p4, "portrait"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-eqz v0, :cond_13

    .line 468
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->mFloatView:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->updateSymbolEmoticonKeys(ILjava/util/ArrayList;IIZ)V

    .line 474
    :cond_13
    return-void
.end method
