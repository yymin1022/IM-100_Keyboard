.class Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment$1;
.super Ljava/lang/Object;
.source "SubScreenFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;

    .line 107
    .local v1, "fragment":Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 109
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "onSharedPreferenceChanged called before activity starts."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v2    # "tag":Ljava/lang/String;
    :goto_1b
    return-void

    .line 115
    :cond_1c
    new-instance v3, Landroid/app/backup/BackupManager;

    invoke-direct {v3, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 116
    invoke-virtual {v1, p1, p2}, Lcom/pantech/inputmethod/skyime/settings/SubScreenFragment;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_1b
.end method
