.class Lcom/pantech/inputmethod/skyime/SkyIME$8;
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
    .line 4548
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4551
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2300(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/skyime/SuggestionsView;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4553
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2300(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/skyime/SuggestionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->handleBack()Z

    .line 4554
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4555
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$8;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 4559
    :cond_3a
    return-void
.end method
