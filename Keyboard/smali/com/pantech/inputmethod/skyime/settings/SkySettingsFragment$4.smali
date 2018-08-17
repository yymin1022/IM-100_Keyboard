.class Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 194
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment$4;->this$0:Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    const/4 v1, 0x1

    return v1
.end method
