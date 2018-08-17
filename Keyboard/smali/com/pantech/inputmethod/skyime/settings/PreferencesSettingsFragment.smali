.class public final Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesSettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateKeyEffectPreference()V
    .registers 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    .line 115
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEnabled(Z)V

    .line 120
    :goto_13
    const/4 v1, 0x0

    .line 122
    .local v1, "index":I
    :try_start_14
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "index_of_keyboard_feedback_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_14 .. :try_end_1d} :catch_2b

    move-result v1

    .line 128
    :goto_1e
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-virtual {v2, v1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValueIndex(I)V

    .line 129
    return-void

    .line 117
    .end local v1    # "index":I
    :cond_24
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEnabled(Z)V

    goto :goto_13

    .line 124
    .restart local v1    # "index":I
    :catch_2b
    move-exception v0

    .line 125
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1e
.end method

.method private updateSoundTypeSummary()V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    move-object v0, p0

    .line 59
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f05005b

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->addPreferencesFromResource(I)V

    .line 62
    const-string v2, "sound_type"

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    .line 64
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    if-eqz v2, :cond_37

    .line 65
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setSoundValues(I)V

    .line 66
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-virtual {v2, p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setSoundEffectEnable(Z)V

    .line 70
    :cond_37
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 158
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 146
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->finish()V

    .line 147
    const/4 v0, 0x1

    goto :goto_b

    .line 144
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    if-ne p1, v1, :cond_13

    .line 133
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "keyboard_sound_index":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "index_of_keyboard_feedback_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    .end local v0    # "keyboard_sound_index":I
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->updateKeyEffectPreference()V

    .line 81
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->updateSoundTypeSummary()V

    .line 82
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v1, "sound_type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 90
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "index":I
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->updateSoundTypeSummary()V

    .line 100
    .end local v0    # "index":I
    :cond_17
    :goto_17
    return-void

    .line 93
    :cond_18
    const-string v1, "silent_mode_on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 94
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_34

    .line 95
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEnabled(Z)V

    goto :goto_17

    .line 97
    :cond_34
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/PreferencesSettingsFragment;->mSoundTypePreference:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEnabled(Z)V

    goto :goto_17
.end method
