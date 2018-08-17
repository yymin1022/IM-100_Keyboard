.class Lcom/pantech/widget/SkyEditText$1;
.super Ljava/lang/Object;
.source "SkyEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyEditText;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyEditText;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyEditText;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pantech/widget/SkyEditText$1;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText$1;->this$0:Lcom/pantech/widget/SkyEditText;

    iget-object v1, v1, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFocusChange : arg1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p2, :cond_3a

    iget-object v1, p0, Lcom/pantech/widget/SkyEditText$1;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-static {v1}, Lcom/pantech/widget/SkyEditText;->-wrap0(Lcom/pantech/widget/SkyEditText;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 141
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText$1;->this$0:Lcom/pantech/widget/SkyEditText;

    iget-object v1, v1, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 142
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText$1;->this$0:Lcom/pantech/widget/SkyEditText;

    iget-object v1, v1, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 137
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3a
    return-void
.end method
