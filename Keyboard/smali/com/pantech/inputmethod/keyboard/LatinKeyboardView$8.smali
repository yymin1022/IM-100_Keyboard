.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;
.super Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 1

    .prologue
    .line 1497
    return-void
.end method

.method public onCodeInput(III)V
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1300(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 1503
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1200(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Z

    .line 1504
    return-void
.end method

.method public onCustomRequest(I)Z
    .registers 5
    .param p1, "requestCode"    # I

    .prologue
    .line 1486
    move v0, p1

    .line 1487
    .local v0, "index":I
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v2, v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget-object v1, v2, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    .line 1488
    .local v1, "word":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1300(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 1489
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1200(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Z

    .line 1490
    const/4 v2, 0x1

    return v2
.end method

.method public onPress(IZ)V
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1300(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->playKeyEffect(I)V

    .line 1510
    return-void
.end method
