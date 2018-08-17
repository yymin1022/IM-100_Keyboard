.class public Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;
.super Ljava/lang/Object;
.source "SkySettingsValues.java"


# static fields
.field private static mOneHand:Z


# instance fields
.field public final mAutoCap:Z

.field public final mAutoCorrectEnabled:Z

.field public final mAutoCorrectionOnOff:Z

.field public final mAutoCorrectionThreshold:F

.field public final mBigramPredictionEnabled:Z

.field public final mBigramSuggestionEnabled:Z

.field public final mDelayUpdateOldSuggestions:I

.field private final mDoubleSpace2Period:Z

.field public final mEnableSuggestionSpanInsertion:Z

.field public mEngKeyboardType:I

.field public final mHintToSaveText:Ljava/lang/CharSequence;

.field public final mKeyPreviewPopupDismissDelay:I

.field public final mKeyPreviewPopupOn:Z

.field public mKorKeyboardType:I

.field public final mMagicSpaceStrippers:Ljava/lang/String;

.field public final mMagicSpaceSwappers:Ljava/lang/String;

.field private final mPhantomSpacePromotingSymbols:Ljava/lang/String;

.field private final mQwertyLongInput:Z

.field public final mShowSuggestionWords:Z

.field public final mSuggestPuncList:Lcom/pantech/inputmethod/skyime/SuggestedWords;

.field private final mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

.field private final mUseAllGesture:Z

.field public final mUseContactsDict:Z

.field private final mUseGestureSplitKeyboard:Z

.field private final mUseGestureSwipeChangeKeyboard:Z

.field private final mUseGestureSwipeDownClose:Z

.field private final mUseGestureSwipeUpChangeEditmode:Z

.field private final mUseSplit:Z

.field public final mWeakSpaceStrippers:Ljava/lang/String;

.field public final mWeakSpaceSwappers:Ljava/lang/String;

.field public final mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .registers 16
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz p3, :cond_75

    .line 79
    invoke-static {p3}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 80
    .local v2, "keyboardLocale":Ljava/util/Locale;
    invoke-static {v3, v2}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 86
    .end local v2    # "keyboardLocale":Ljava/util/Locale;
    .local v4, "savedLocale":Ljava/util/Locale;
    :goto_13
    const v8, 0x7f090001

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mDelayUpdateOldSuggestions:I

    .line 88
    const v8, 0x7f0c00ad

    invoke-virtual {p2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mHintToSaveText:Ljava/lang/CharSequence;

    .line 89
    const v8, 0x7f0c0035

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceStrippers:Ljava/lang/String;

    .line 90
    const v8, 0x7f0c0034

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceSwappers:Ljava/lang/String;

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceStrippers:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceSwappers:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v11, 0x7f0c0036

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "wordSeparators":Ljava/lang/String;
    const v8, 0x7f0c0037

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "symbolsExcludedFromWordSeparators":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_64
    if-ltz v1, :cond_77

    .line 96
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v11, ""

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 95
    add-int/lit8 v1, v1, -0x1

    goto :goto_64

    .line 82
    .end local v1    # "i":I
    .end local v4    # "savedLocale":Ljava/util/Locale;
    .end local v6    # "symbolsExcludedFromWordSeparators":Ljava/lang/String;
    .end local v7    # "wordSeparators":Ljava/lang/String;
    :cond_75
    const/4 v4, 0x0

    .restart local v4    # "savedLocale":Ljava/util/Locale;
    goto :goto_13

    .line 99
    .restart local v1    # "i":I
    .restart local v6    # "symbolsExcludedFromWordSeparators":Ljava/lang/String;
    .restart local v7    # "wordSeparators":Ljava/lang/String;
    :cond_77
    iput-object v6, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    .line 100
    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWordSeparators:Ljava/lang/String;

    .line 102
    const v8, 0x7f0c0030

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->parseCsvString(Ljava/lang/String;Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "suggestPuncsSpec":[Ljava/lang/String;
    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->createSuggestPuncList([Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mSuggestPuncList:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 107
    iput-boolean v9, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionOnOff:Z

    .line 109
    iput-boolean v9, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mShowSuggestionWords:Z

    .line 113
    invoke-static {p1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mKeyPreviewPopupOn:Z

    .line 114
    invoke-static {p1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mKeyPreviewPopupDismissDelay:I

    .line 116
    const-string v8, "auto_cap"

    invoke-interface {p1, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCap:Z

    .line 120
    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mShowSuggestionWords:Z

    if-eqz v8, :cond_182

    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionOnOff:Z

    :goto_ab
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    .line 123
    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v8, :cond_185

    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    invoke-static {p1, v3, v8}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z

    move-result v8

    if-eqz v8, :cond_185

    move v8, v10

    :goto_ba
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramSuggestionEnabled:Z

    .line 125
    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramSuggestionEnabled:Z

    if-eqz v8, :cond_c7

    invoke-static {p1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_c7

    move v9, v10

    :cond_c7
    iput-boolean v9, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramPredictionEnabled:Z

    .line 128
    const-string v8, "pref_key_use_contacts_dict"

    const v9, 0x7f07000f

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseContactsDict:Z

    .line 130
    const-string v8, "enable_span_insert"

    const v9, 0x7f07000e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mEnableSuggestionSpanInsertion:Z

    .line 133
    iget-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionOnOff:Z

    invoke-static {v3, v8}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getAutoCorrectionThreshold(Landroid/content/res/Resources;Z)F

    move-result v8

    iput v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionThreshold:F

    .line 137
    const v8, 0x7f070016

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 139
    .local v0, "defaultDoubleSpace2Period":Z
    const-string v8, "double_spaces_turn_into_period"

    invoke-interface {p1, v8, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mDoubleSpace2Period:Z

    .line 142
    const-string v8, "show_qwerty_long_input"

    const v9, 0x7f07001d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mQwertyLongInput:Z

    .line 145
    iput-boolean v10, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseAllGesture:Z

    .line 152
    const-string v8, "kbd_use_gesture_down"

    const v9, 0x7f070011

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeDownClose:Z

    .line 154
    const-string v8, "kbd_use_gesture_leftright"

    const v9, 0x7f070013

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeChangeKeyboard:Z

    .line 157
    const-string v8, "kbd_use_gesture_up_editmode"

    const v9, 0x7f070012

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeUpChangeEditmode:Z

    .line 160
    const-string v8, "kbd_use_gesture_split"

    const v9, 0x7f070014

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSplitKeyboard:Z

    .line 164
    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 166
    const v8, 0x7f0c0032

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    .line 167
    const v8, 0x7f0c0031

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWeakSpaceSwappers:Ljava/lang/String;

    .line 168
    const v8, 0x7f0c0033

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mPhantomSpacePromotingSymbols:Ljava/lang/String;

    .line 171
    const-string v8, "one_hand_layout"

    const v9, 0x7f070018

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mOneHand:Z

    .line 174
    const v8, 0x7f070019

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseSplit:Z

    .line 175
    return-void

    .end local v0    # "defaultDoubleSpace2Period":Z
    :cond_182
    move v8, v9

    .line 120
    goto/16 :goto_ab

    :cond_185
    move v8, v9

    .line 123
    goto/16 :goto_ba
.end method

.method private static createSuggestPuncList([Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .registers 13
    .param p0, "puncs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "puncList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    if-eqz p0, :cond_23

    .line 323
    move-object v8, p0

    .local v8, "arr$":[Ljava/lang/String;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_b
    if-ge v9, v10, :cond_23

    aget-object v11, v8, v9

    .line 324
    .local v11, "puncSpec":Ljava/lang/String;
    if-eqz v11, :cond_20

    .line 325
    new-instance v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-static {v11}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-direct {v0, v3, v4}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 330
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "puncSpec":Ljava/lang/String;
    :cond_23
    new-instance v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    const/4 v5, 0x1

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    return-object v0
.end method

.method private static getAutoCorrectionThreshold(Landroid/content/res/Resources;Z)F
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "enable"    # Z

    .prologue
    .line 312
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 313
    .local v0, "autoCorrectionThreshold":F
    if-eqz p1, :cond_6

    .line 314
    const/4 v0, 0x0

    .line 316
    :cond_6
    return v0
.end method

.method public static getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 261
    const-string v0, "edittext_preference"

    const v1, 0x7f0c005a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEngKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 282
    const-string v0, "eng_keyboard_type_key"

    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 3
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 220
    const/16 v0, 0x46

    return v0
.end method

.method public static getKeyboardHeightType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 269
    const-string v0, "height_type"

    const v1, 0x7f090011

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 5
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 246
    const-string v1, "theme_type"

    const v2, 0x7f090010

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "themeIndex":I
    if-ltz v0, :cond_21

    sget-object v1, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->ICONTYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 250
    sget-object v1, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->ICONTYPE:[I

    aget v1, v1, v0

    .line 253
    :goto_20
    return v1

    .line 252
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "check !! Do not excute this code!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 253
    const/4 v1, -0x1

    goto :goto_20
.end method

.method public static getKeyboardThemeType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 225
    const-string v0, "theme_type"

    const v1, 0x7f090010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKorKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 276
    const-string v0, "kor_keyboard_type_key"

    const v1, 0x7f090013

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .registers 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string v2, "last_user_dictionary_write_time"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 444
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 445
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 447
    :goto_1c
    return-wide v2

    :cond_1d
    const-wide/16 v2, 0x0

    goto :goto_1c
.end method

.method public static getMultitapTimeout(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 287
    const-string v0, "kbd_settings_multitap_time_key"

    const v1, 0x7f0c0059

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRepeatKeyInterval(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 292
    const-string v0, "kbd_settings_repeat_time_key"

    const v1, 0x7f0c0058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUseGesture(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 341
    const-string v0, "kbd_use_gesture_key"

    const v1, 0x7f070015

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 304
    const-string v0, "next_word_prediction"

    const v1, 0x7f070009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "autoCorrectEnabled"    # Z

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public static isDoubleKorQwerty(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 406
    const-string v0, "kor_qwerty_doubletap"

    const v1, 0x7f070017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 5
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v2, 0x7f070007

    .line 208
    const v1, 0x7f070002

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 210
    .local v0, "showPopupOption":Z
    if-nez v0, :cond_11

    .line 211
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 213
    :goto_10
    return v1

    :cond_11
    const-string v1, "popup_on"

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_10
.end method

.method public static isNumberKeysOnTopAdded(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 411
    const-string v0, "add_number_keys_on_top"

    const v1, 0x7f07001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOneHandLayout()Z
    .registers 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mOneHand:Z

    return v0
.end method

.method public static isVibrateOn(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 417
    const-string v0, "vibrate_on"

    const v1, 0x7f07001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setKorKeyboardType(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kor_keyboard_type_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    return-void
.end method

.method public static setLastUserHistoryWriteTime(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 452
    const-string v3, "last_user_dictionary_write_time"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "oldStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/utils/Utils;->localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 454
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->localeAndTimeHashMapToStr(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "newStr":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_user_dictionary_write_time"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    return-void
.end method

.method public static useGestureSplitKeyboard(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 375
    const-string v0, "kbd_use_gesture_split"

    const v1, 0x7f070014

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static usePortraitFloatingMode(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 346
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isDoubleSpace2Perid()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mDoubleSpace2Period:Z

    return v0
.end method

.method public isFullscreenModeAllowed(Landroid/content/res/Resources;)Z
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 437
    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMagicSpaceStripper(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceStrippers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMagicSpaceSwapper(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mMagicSpaceSwappers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPhantomSpacePromotingSymbol(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mPhantomSpacePromotingSymbols:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isQwertyLongInput()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mQwertyLongInput:Z

    return v0
.end method

.method public isSymbolExcludedFromWordSeparators(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v1

    .line 384
    .local v1, "shortcutImeEnabled":Z
    if-eqz p1, :cond_17

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 386
    .local v0, "inputType":I
    :goto_d
    if-eqz v1, :cond_16

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    .end local v0    # "inputType":I
    :cond_17
    move v0, v2

    .line 384
    goto :goto_d
.end method

.method public isWeakSpaceStripper(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWeakSpaceStrippers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isWeakSpaceSwapper(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWeakSpaceSwappers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isWordSeparator(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public useGestureSplitKeyboard()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseAllGesture:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSplitKeyboard:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public useGestureSwipeChangeKeyboard()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseAllGesture:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeChangeKeyboard:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public useGestureSwipeDownClose()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseAllGesture:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeDownClose:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public useGestureSwipeUpChangeEditMode()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseAllGesture:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseGestureSwipeUpChangeEditmode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public useSplitLayout()Z
    .registers 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseSplit:Z

    return v0
.end method
