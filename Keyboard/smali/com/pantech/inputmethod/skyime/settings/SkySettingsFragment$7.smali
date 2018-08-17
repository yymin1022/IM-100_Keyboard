.class Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;
.super Ljava/lang/Object;
.source "SkySettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 328
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 329
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 331
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->access$000(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 332
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "autoCorrectionOn":Ljava/lang/String;
    const-string v4, "auto_correction_threshold"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    .end local v1    # "autoCorrectionOn":Ljava/lang/String;
    :goto_30
    return v6

    .line 339
    :cond_31
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$7;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "autoCorrectionOff":Ljava/lang/String;
    const-string v4, "auto_correction_threshold"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_30
.end method
