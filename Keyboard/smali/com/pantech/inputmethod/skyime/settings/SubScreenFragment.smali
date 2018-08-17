.class public abstract Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;
.super Landroid/preference/PreferenceFragment;
.source "SubScreenFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static removePreference(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p0, "prefKey"    # Ljava/lang/String;
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 48
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 49
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    :cond_9
    return-void
.end method

.method static setPreferenceEnabled(Ljava/lang/String;ZLandroid/preference/PreferenceScreen;)V
    .registers 4
    .param p0, "prefKey"    # Ljava/lang/String;
    .param p1, "enabled"    # Z
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 41
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 42
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    :cond_9
    return-void
.end method

.method static updateListPreferenceSummaryToCurrentValue(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .registers 6
    .param p0, "prefKey"    # Ljava/lang/String;
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 58
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 59
    .local v2, "listPreference":Landroid/preference/ListPreference;
    if-nez v2, :cond_9

    .line 65
    :goto_8
    return-void

    .line 62
    :cond_9
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "entryIndex":I
    if-gez v1, :cond_1c

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_1c
    aget-object v3, v0, v1

    goto :goto_18
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .registers 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/TwoStatePreferenceHelper;->replaceCheckBoxPreferencesBySwitchPreferences(Landroid/preference/PreferenceGroup;)V

    .line 98
    return-void
.end method

.method final getApplicationName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 90
    .local v0, "applicationLabelRes":I
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment$1;-><init>(Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 119
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 128
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method final removePreference(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->removePreference(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V

    .line 73
    return-void
.end method

.method final setPreferenceEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->setPreferenceEnabled(Ljava/lang/String;ZLandroid/preference/PreferenceScreen;)V

    .line 69
    return-void
.end method

.method final updateListPreferenceSummaryToCurrentValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->updateListPreferenceSummaryToCurrentValue(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V

    .line 77
    return-void
.end method
