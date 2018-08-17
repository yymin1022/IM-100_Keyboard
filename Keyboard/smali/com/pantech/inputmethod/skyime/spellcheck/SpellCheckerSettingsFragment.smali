.class public Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SpellCheckerSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f05005c

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerSettingsFragment;->addPreferencesFromResource(I)V

    .line 38
    return-void
.end method
