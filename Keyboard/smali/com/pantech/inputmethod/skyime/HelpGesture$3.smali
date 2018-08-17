.class Lcom/pantech/inputmethod/skyime/HelpGesture$3;
.super Ljava/lang/Object;
.source "HelpGesture.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/HelpGesture;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/HelpGesture;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$302(Lcom/pantech/inputmethod/skyime/HelpGesture;Landroid/widget/Button;)Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$402(Lcom/pantech/inputmethod/skyime/HelpGesture;Landroid/widget/Button;)Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$300(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/HelpGesture$3$1;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/HelpGesture$3$1;-><init>(Lcom/pantech/inputmethod/skyime/HelpGesture$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$400(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/HelpGesture$3$2;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/HelpGesture$3$2;-><init>(Lcom/pantech/inputmethod/skyime/HelpGesture$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->setPages()V

    .line 146
    return-void
.end method
