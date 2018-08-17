.class public final Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SkySettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCorrectionOnOffPreference:Landroid/preference/SwitchPreference;

.field private mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

.field private mBigramPrediction:Landroid/preference/SwitchPreference;

.field private mBigramSuggestion:Landroid/preference/SwitchPreference;

.field private mCustomPopup:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field mEntryValues:[Ljava/lang/String;

.field private mHelpGesture:Landroid/preference/Preference;

.field private mHelpHwrGesture:Landroid/preference/Preference;

.field private mKeypressSoundVolumeSettingsTextView:Landroid/widget/TextView;

.field private mKeypressVibrationDurationSettingsTextView:Landroid/widget/TextView;

.field private mKeypress_settings:Landroid/preference/PreferenceScreen;

.field private mNumberPreference:Landroid/preference/SwitchPreference;

.field private mOkClicked:Z

.field private mShowEngKeyboardTypePreference:Landroid/preference/Preference;

.field private mShowKeyboardHeightControlPreference:Landroid/preference/Preference;

.field private mShowKorKeyboardTypePreference:Landroid/preference/Preference;

.field private mShowSuggestionWordsPreference:Landroid/preference/SwitchPreference;

.field private mThemeTypePreference:Landroid/preference/Preference;

.field private mVibratePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;)Landroid/preference/SwitchPreference;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionOnOffPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "currentSetting":Z
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramSuggestion:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramPrediction:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_10

    .line 102
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramPrediction:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 104
    :cond_10
    return-void
.end method

.method private updateKeyboardThemeTypeSummary()V
    .registers 7

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 510
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 511
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    .line 512
    const-string v3, "theme_type"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "themeIndex":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mThemeTypePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method private updateShowEngKeyboardTypeSummary()V
    .registers 7

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 549
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 550
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "eng_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "engKeyboardTypeIndex":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowEngKeyboardTypePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findIndexOfListView(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method

.method private updateShowKorKeyboardTypeSummary()V
    .registers 7

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 497
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 498
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    .line 499
    const-string v3, "kor_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "korKeyboardTypeIndex":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKorKeyboardTypePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findIndexOfListView(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method


# virtual methods
.method public findIndexOfListView(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 531
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 532
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 533
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 538
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 532
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 538
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getActivityInternal()Landroid/app/Activity;
    .registers 3

    .prologue
    .line 107
    move-object v0, p0

    .line 108
    .local v0, "thisObject":Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 109
    check-cast v0, Landroid/app/Activity;

    .line 113
    .end local v0    # "thisObject":Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
    :goto_7
    return-object v0

    .line 110
    .restart local v0    # "thisObject":Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
    :cond_8
    instance-of v1, v0, Landroid/app/Fragment;

    if-eqz v1, :cond_13

    .line 111
    check-cast v0, Landroid/app/Fragment;

    .end local v0    # "thisObject":Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_7

    .line 113
    .restart local v0    # "thisObject":Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;
    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 123
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivityInternal()Landroid/app/Activity;

    move-result-object v3

    .line 125
    .local v3, "context":Landroid/content/Context;
    const-string v16, "audio"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    const v16, 0x7f05005a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->addPreferencesFromResource(I)V

    .line 130
    const-string v16, "theme_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mThemeTypePreference:Landroid/preference/Preference;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mThemeTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4f

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mThemeTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$1;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    :cond_4f
    const-string v16, "kor_keyboard_type_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKorKeyboardTypePreference:Landroid/preference/Preference;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKorKeyboardTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_79

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKorKeyboardTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$2;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    :cond_79
    const-string v16, "eng_keyboard_type_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowEngKeyboardTypePreference:Landroid/preference/Preference;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowEngKeyboardTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowEngKeyboardTypePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$3;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    :cond_a3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "default_input_method"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "strIM":Ljava/lang/String;
    const-string v16, "keyboard_height_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKeyboardHeightControlPreference:Landroid/preference/Preference;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKeyboardHeightControlPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_106

    .line 189
    const-string v16, "com.pantech.inputmethod.skyime/.SkyIME"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f4

    .line 191
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKeyboardHeightControlPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowKeyboardHeightControlPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    :cond_106
    const-string v16, "keypress_setting_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mKeypress_settings:Landroid/preference/PreferenceScreen;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mKeypress_settings:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    if-eqz v16, :cond_132

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mKeypress_settings:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$5;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 254
    .local v8, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 256
    const-string v16, "auto_correction_threshold"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    .line 259
    const-string v16, "auto_correction_on_off"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionOnOffPreference:Landroid/preference/SwitchPreference;

    .line 260
    const-string v16, "show_suggestion_words"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mShowSuggestionWordsPreference:Landroid/preference/SwitchPreference;

    .line 262
    const-string v16, "next_word_suggestion"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramSuggestion:Landroid/preference/SwitchPreference;

    .line 263
    const-string v16, "next_word_prediction"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramPrediction:Landroid/preference/SwitchPreference;

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 267
    const-string v16, "ime_settings_kbd"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 269
    .local v5, "keyboardSettingsGroup":Landroid/preference/PreferenceGroup;
    const-string v16, "general_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 271
    .local v4, "generalSettings":Landroid/preference/PreferenceGroup;
    const-string v16, "correction_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 273
    .local v15, "textCorrectionGroup":Landroid/preference/PreferenceGroup;
    const-string v16, "misc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 275
    .local v6, "miscSettings":Landroid/preference/PreferenceGroup;
    const-string v16, "pref_advanced_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 282
    .local v2, "advanceSettings":Landroid/preference/PreferenceGroup;
    if-eqz v15, :cond_1ec

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionThresholdPreference:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramPrediction:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_1ec
    const-string v16, "custom_popup_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mCustomPopup:Landroid/preference/Preference;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mCustomPopup:Landroid/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_216

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mCustomPopup:Landroid/preference/Preference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$6;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    :cond_216
    const v16, 0x7f070002

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 305
    .local v11, "showPopupOption":Z
    const v16, 0x7f070003

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 307
    .local v10, "showBigramSuggestionsOption":Z
    if-nez v10, :cond_237

    .line 308
    if-eqz v2, :cond_237

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mBigramSuggestion:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_237
    const v16, 0x7f070004

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 315
    .local v12, "showUsabilityModeStudyOption":Z
    if-eqz v12, :cond_242

    .line 316
    :cond_242
    const-string v16, "usability_study_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 317
    .local v7, "pref":Landroid/preference/Preference;
    if-eqz v7, :cond_253

    .line 318
    if-eqz v6, :cond_253

    .line 319
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    :cond_253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionOnOffPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_269

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mAutoCorrectionOnOffPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;

    invoke-direct/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;-><init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    :cond_269
    if-eqz v6, :cond_270

    .line 370
    if-eqz v2, :cond_270

    .line 371
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_270
    const-string v16, "skyime_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 377
    .local v13, "skyimeSettings":Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_283

    .line 378
    if-eqz v6, :cond_283

    .line 379
    invoke-virtual {v13, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_283
    const-string v16, "vibrate_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mVibratePreference:Landroid/preference/SwitchPreference;

    .line 394
    const-string v16, "add_number_keys_on_top"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->mNumberPreference:Landroid/preference/SwitchPreference;

    .line 395
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 423
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 424
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 400
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 401
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v0

    .line 404
    .local v0, "isShortcutImeEnabled":Z
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateShowKorKeyboardTypeSummary()V

    .line 405
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateShowEngKeyboardTypeSummary()V

    .line 406
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateKeyboardThemeTypeSummary()V

    .line 412
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 12
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivityInternal()Landroid/app/Activity;

    move-result-object v0

    .line 429
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_e

    .line 432
    sget-object v6, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->TAG:Ljava/lang/String;

    const-string v7, "onSharedPreferenceChanged called before activity starts."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_d
    :goto_d
    return-void

    .line 435
    :cond_e
    new-instance v6, Landroid/app/backup/BackupManager;

    invoke-direct {v6, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 437
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 441
    const-string v6, "kor_keyboard_type_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 443
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 444
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v4, "row":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 446
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "kor_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "korKeyboardTypeIndex":Ljava/lang/String;
    const-string v6, "_value"

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->findIndexOfListView(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    :try_start_58
    const-string v6, "content://com.pantech.inputmethods.SkyIME.SkyIMEProvider/data/KeyboardTypeKor"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_63} :catch_67

    .line 458
    :goto_63
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateShowKorKeyboardTypeSummary()V

    goto :goto_d

    .line 454
    :catch_67
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_63

    .line 459
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "korKeyboardTypeIndex":Ljava/lang/String;
    .end local v4    # "row":Landroid/content/ContentValues;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_6c
    const-string v6, "eng_keyboard_type_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 460
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateShowEngKeyboardTypeSummary()V

    goto :goto_d

    .line 461
    :cond_78
    const-string v6, "theme_type"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 462
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->updateKeyboardThemeTypeSummary()V

    goto :goto_d
.end method
