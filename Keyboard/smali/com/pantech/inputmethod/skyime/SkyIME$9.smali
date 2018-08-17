.class Lcom/pantech/inputmethod/skyime/SkyIME$9;
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
    .line 4563
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4567
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4568
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2500()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4569
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_24
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4571
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 4572
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 4584
    :cond_49
    :goto_49
    return-void

    .line 4574
    :cond_4a
    const-string v3, "android.intent.action.MOBILE_THEME_SET_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 4576
    const/4 v2, 0x3

    .line 4577
    .local v2, "themeId":I
    const-string v3, "theme_type"

    const/4 v4, 0x3

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4578
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1700(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_49

    sget-object v3, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_49

    .line 4579
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$9;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1700(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4580
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "theme_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4581
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_49
.end method
