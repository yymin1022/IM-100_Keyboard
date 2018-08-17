.class Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;)I
    .registers 7
    .param p1, "imi1"    # Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .param p2, "imi2"    # Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .prologue
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v3}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->access$000(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "imiId1":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v3}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->access$000(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "imiId2":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;->compare(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;)I

    move-result v0

    return v0
.end method
