.class Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;
.super Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreSuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 89
    return-void
.end method

.method public onCodeInput(III)V
    .registers 6
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 80
    add-int/lit16 v0, p1, -0x400

    .line 81
    .local v0, "index":I
    if-ltz v0, :cond_11

    const/16 v1, 0x48

    if-ge v0, v1, :cond_11

    .line 82
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    .line 84
    :cond_11
    return-void
.end method

.method public onPress(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 71
    return-void
.end method

.method public onRelease(IZ)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 76
    return-void
.end method
