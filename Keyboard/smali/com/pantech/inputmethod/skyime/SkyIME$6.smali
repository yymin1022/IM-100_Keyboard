.class Lcom/pantech/inputmethod/skyime/SkyIME$6;
.super Landroid/content/BroadcastReceiver;
.source "SkyIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2

    .prologue
    .line 4049
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$6;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4052
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4053
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4054
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$6;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1500(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->onNetworkStateChanged(Landroid/content/Intent;)V

    .line 4066
    :cond_15
    :goto_15
    return-void

    .line 4055
    :cond_16
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4057
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$6;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1600(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    goto :goto_15

    .line 4059
    :cond_24
    const-string v2, "com.pantech.inputmethod.skyime.SETUP_KOREAN_KEYBOARD_TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4060
    const-string v2, "keyboard_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4061
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$6;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1700(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->setKorKeyboardType(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_15

    .line 4062
    .end local v1    # "type":Ljava/lang/String;
    :cond_3c
    const-string v2, "com.pantech.inputmethod.skyime.IS_SETUPWIZARD_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4063
    const-string v2, "is_setupwizard_finished"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1802(Z)Z

    goto :goto_15
.end method
