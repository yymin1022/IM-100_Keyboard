.class Lcom/pantech/inputmethod/keyboard/floating/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/floating/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$1;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 425
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$1;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$000(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Lcom/pantech/inputmethod/skyime/SkyIME;

    move-result-object v0

    const/16 v1, -0x190

    invoke-virtual {v0, v1, v2, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->onCodeInput(III)V

    .line 426
    return-void
.end method
