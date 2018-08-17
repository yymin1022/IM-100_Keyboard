.class public final Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SkySettingsActivity.java"


# static fields
.field private static final DEFAULT_FRAGMENT:Ljava/lang/String;

.field public static final EXTRA_SHOW_HOME_AS_UP:Ljava/lang/String; = "show_home_as_up"

.field public static activity:Landroid/app/Activity;


# instance fields
.field private mShowHomeAsUp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->DEFAULT_FRAGMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ":android:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "fragment":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 58
    const-string v2, ":android:show_fragment"

    sget-object v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->DEFAULT_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_13
    const-string v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    return-object v1
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/utils/FragmentUtils;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sput-object p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    .line 44
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_22

    .line 47
    const-string v2, "show_home_as_up"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->mShowHomeAsUp:Z

    .line 48
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->mShowHomeAsUp:Z

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->mShowHomeAsUp:Z

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 51
    :cond_22
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 71
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->finish()V

    .line 72
    const/4 v0, 0x1

    goto :goto_b

    .line 68
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
