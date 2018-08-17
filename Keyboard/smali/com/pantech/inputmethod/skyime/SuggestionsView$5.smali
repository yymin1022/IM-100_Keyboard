.class Lcom/pantech/inputmethod/skyime/SuggestionsView$5;
.super Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V
    .registers 2

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z

    .line 1028
    return-void
.end method

.method public onCustomRequest(I)Z
    .registers 7
    .param p1, "requestCode"    # I

    .prologue
    const/4 v4, -0x1

    .line 1014
    move v0, p1

    .line 1015
    .local v0, "index":I
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1016
    .local v1, "word":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->playKeyEffect(I)V

    .line 1019
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1, v4, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;II)V

    .line 1021
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z

    .line 1022
    const/4 v2, 0x1

    return v2
.end method
