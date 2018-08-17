.class Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;
.super Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 92
    return-void
.end method

.method public onCodeInput(III)V
    .registers 6
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 79
    add-int/lit16 v0, p1, -0x400

    .line 80
    .local v0, "index":I
    if-ltz v0, :cond_11

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_11

    .line 81
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    .line 83
    :cond_11
    if-gez p1, :cond_21

    .line 84
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->dismissMoreKeysPanel()Z

    .line 85
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 87
    :cond_21
    return-void
.end method

.method public onPress(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 70
    return-void
.end method

.method public onRelease(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 75
    return-void
.end method
