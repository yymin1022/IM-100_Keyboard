.class public abstract Lcom/android/inputmethodcommon/InputMethodSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "InputMethodSettingsFragment.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field private final mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-direct {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 36
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z

    .line 37
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 94
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(I)V

    .line 45
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(I)V

    .line 77
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(I)V

    .line 61
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
