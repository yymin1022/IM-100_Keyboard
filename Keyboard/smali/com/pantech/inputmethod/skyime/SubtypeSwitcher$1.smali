.class Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;
.super Landroid/os/AsyncTask;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

.field final synthetic val$imiId:Ljava/lang/String;

.field final synthetic val$subtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 5

    .prologue
    .line 303
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->this$0:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$subtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->this$0:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->access$000(Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;)Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->val$subtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method
