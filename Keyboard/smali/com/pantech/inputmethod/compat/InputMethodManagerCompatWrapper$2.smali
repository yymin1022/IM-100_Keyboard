.class Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$2;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$2;->this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$2;->this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v1}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->access$100(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
