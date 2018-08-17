.class Lcom/pantech/inputmethod/skyime/HelpGesture$3$2;
.super Ljava/lang/Object;
.source "HelpGesture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/HelpGesture$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/inputmethod/skyime/HelpGesture$3;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/HelpGesture$3;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3$2;->this$1:Lcom/pantech/inputmethod/skyime/HelpGesture$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-static {}, Lcom/pantech/inputmethod/skyime/HelpGesture;->access$108()I

    .line 142
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$3$2;->this$1:Lcom/pantech/inputmethod/skyime/HelpGesture$3;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/HelpGesture$3;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->setPages()V

    .line 143
    return-void
.end method
