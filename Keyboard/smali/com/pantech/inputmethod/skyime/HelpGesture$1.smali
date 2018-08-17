.class Lcom/pantech/inputmethod/skyime/HelpGesture$1;
.super Ljava/lang/Object;
.source "HelpGesture.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/HelpGesture;->settings()V
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
    .line 89
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$1;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$1;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/HelpGesture;->showDialog(I)V

    .line 95
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$1;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$200(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$1;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$000(Lcom/pantech/inputmethod/skyime/HelpGesture;)[I

    move-result-object v1

    invoke-static {}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$100()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 96
    invoke-static {p3}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$102(I)I

    .line 97
    return-void
.end method
