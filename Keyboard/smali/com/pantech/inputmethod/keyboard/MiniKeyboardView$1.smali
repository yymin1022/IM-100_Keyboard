.class Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;
.super Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MiniKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 118
    return-void
.end method

.method public onCodeInput(III)V
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 108
    return-void
.end method

.method public onPress(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 123
    return-void
.end method

.method public onRelease(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 128
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
