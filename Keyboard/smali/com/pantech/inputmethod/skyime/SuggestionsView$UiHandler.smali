.class Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/skyime/SuggestionsView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_HIDE_PREVIEW:J = 0x514L

.field private static final MSG_HIDE_PREVIEW:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 162
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 183
    return-void
.end method

.method public cancelHidePreview()V
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->removeMessages(I)V

    .line 179
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .line 167
    .local v0, "suggestionsView":Lcom/pantech/inputmethod/skyime/SuggestionsView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 172
    :goto_b
    return-void

    .line 169
    :pswitch_c
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    goto :goto_b

    .line 167
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public postHidePreview()V
    .registers 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x514

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    return-void
.end method
