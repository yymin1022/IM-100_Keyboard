.class public Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
.super Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MoreKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;",
        ">;"
    }
.end annotation


# instance fields
.field private mFromPos:I

.field mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

.field mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private final mPaneView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

.field private mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

.field private mToPos:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V
    .registers 4
    .param p1, "paneView"    # Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 52
    invoke-static {}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 211
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mPaneView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .line 212
    return-void
.end method

.method private static getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;
    .registers 3
    .param p0, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p1, "pos"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->build()Lcom/pantech/inputmethod/skyime/MoreKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/pantech/inputmethod/skyime/MoreKeyboard;
    .registers 19

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v2, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    .line 250
    .local v2, "params":Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mFromPos:I

    .local v14, "pos":I
    :goto_a
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mToPos:I

    if-ge v14, v7, :cond_21a

    .line 251
    invoke-virtual {v2, v14}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getX(I)I

    move-result v8

    .line 252
    .local v8, "x":I
    invoke-virtual {v2, v14}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getY(I)I

    move-result v9

    .line 253
    .local v9, "y":I
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 254
    invoke-static {}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 255
    invoke-virtual {v2, v14}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v10

    .line 256
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v7, v14}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-static {v7, v14}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "info":Ljava/lang/String;
    add-int/lit16 v6, v14, 0x400

    .line 259
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const-string v11, "com.pantech.inputmethod.skyime_preferences"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 261
    .local v15, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v16

    .line 263
    .local v16, "themeType":I
    const/4 v5, 0x0

    .line 264
    .local v5, "temp":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x2

    move/from16 v0, v16

    if-eq v0, v7, :cond_6f

    const/4 v7, 0x3

    move/from16 v0, v16

    if-eq v0, v7, :cond_6f

    const/16 v7, 0xc

    move/from16 v0, v16

    if-eq v0, v7, :cond_6f

    const/4 v7, 0x5

    move/from16 v0, v16

    if-ne v0, v7, :cond_d1

    :cond_6f
    const/4 v13, 0x1

    .line 269
    .local v13, "popup_dark_icons":Z
    :goto_70
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0051

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 270
    if-eqz v13, :cond_d3

    .line 271
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f020117

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 278
    :goto_8e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0133

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 279
    const/16 v6, -0x9

    .line 375
    :cond_9f
    :goto_9f
    new-instance v1, Lcom/pantech/inputmethod/keyboard/Key;

    const/4 v7, 0x0

    iget v11, v2, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v17, 0x7f0c005d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIIILjava/lang/String;)V

    .line 379
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/pantech/inputmethod/keyboard/Key;->setBackgroundType(I)V

    .line 382
    if-nez v6, :cond_c7

    .line 383
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Lcom/pantech/inputmethod/keyboard/Key;->setBackgroundType(I)V

    .line 384
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 386
    :cond_c7
    invoke-virtual {v2, v1, v14}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    .line 387
    invoke-virtual {v2, v1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 250
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 264
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v13    # "popup_dark_icons":Z
    :cond_d1
    const/4 v13, 0x0

    goto :goto_70

    .line 274
    .restart local v13    # "popup_dark_icons":Z
    :cond_d3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f020118

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_8e

    .line 281
    :cond_df
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0052

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 282
    if-eqz v13, :cond_10e

    .line 283
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f020138

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 290
    :goto_fd
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0135

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    const/4 v6, -0x7

    goto :goto_9f

    .line 286
    :cond_10e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f020139

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_fd

    .line 292
    :cond_11a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0053

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    .line 293
    if-eqz v13, :cond_14a

    .line 294
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200e0

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 301
    :goto_138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0139

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    const/4 v6, -0x8

    goto/16 :goto_9f

    .line 297
    :cond_14a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200e1

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_138

    .line 303
    :cond_156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0054

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_193

    .line 304
    if-eqz v13, :cond_187

    .line 305
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200de

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 312
    :goto_174
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c013a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    const/16 v6, -0x7a

    goto/16 :goto_9f

    .line 308
    :cond_187
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200df

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_174

    .line 329
    :cond_193
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0055

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 333
    if-eqz v13, :cond_1c4

    .line 334
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200e2

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 341
    :goto_1b1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0136

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    const/16 v6, -0x7b

    goto/16 :goto_9f

    .line 337
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200e3

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1b1

    .line 347
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0c0056

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20d

    .line 350
    if-eqz v13, :cond_201

    .line 351
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200f8

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 356
    :goto_1ee
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0c0150

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 357
    const/16 v6, -0x7c

    goto/16 :goto_9f

    .line 353
    :cond_201
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mContext:Landroid/content/Context;

    const v11, 0x7f0200f9

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1ee

    .line 359
    :cond_20d
    const-string v7, "close"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 369
    const/4 v5, 0x0

    .line 370
    const/4 v6, 0x0

    .line 371
    const/4 v3, 0x0

    goto/16 :goto_9f

    .line 389
    .end local v3    # "word":Ljava/lang/String;
    .end local v4    # "info":Ljava/lang/String;
    .end local v5    # "temp":Landroid/graphics/drawable/Drawable;
    .end local v6    # "index":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    .end local v10    # "width":I
    .end local v13    # "popup_dark_icons":Z
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "themeType":I
    :cond_21a
    new-instance v7, Lcom/pantech/inputmethod/skyime/MoreKeyboard;

    const/4 v11, 0x0

    invoke-direct {v7, v2, v11}, Lcom/pantech/inputmethod/skyime/MoreKeyboard;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;Lcom/pantech/inputmethod/skyime/MoreKeyboard$1;)V

    return-object v7
.end method

.method public layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIIIZ)Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
    .registers 20
    .param p1, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "maxComlumn"    # I
    .param p3, "maxWidth"    # I
    .param p4, "minWidth"    # I
    .param p5, "maxRow"    # I
    .param p6, "btnWidth"    # I
    .param p7, "isSettinsPopup"    # Z

    .prologue
    .line 216
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v10

    .line 217
    .local v10, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    const v11, 0x7f050037

    .line 218
    .local v11, "xmlId":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 220
    const v11, 0x7f050038

    .line 222
    :cond_26
    if-eqz v10, :cond_47

    .line 223
    iget-object v0, v10, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;)V

    .line 224
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v1, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    iget v2, v10, Lcom/pantech/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mTopPadding:I

    iput v2, v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->mVerticalGap:I

    .line 227
    :cond_47
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mPaneView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIIILcom/pantech/inputmethod/keyboard/KeyboardView;Z)I

    move-result v9

    .line 229
    .local v9, "count":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mFromPos:I

    .line 230
    add-int/lit8 v0, v9, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mToPos:I

    .line 231
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 232
    return-object p0
.end method
