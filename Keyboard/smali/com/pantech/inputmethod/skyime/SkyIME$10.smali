.class Lcom/pantech/inputmethod/skyime/SkyIME$10;
.super Ljava/lang/Object;
.source "SkyIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 4943
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$10;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4945
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$10;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4946
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_28

    .line 4947
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4948
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$10;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4949
    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4950
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$10;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2700(Lcom/pantech/inputmethod/skyime/SkyIME;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4951
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4953
    :cond_28
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4954
    return-void
.end method
