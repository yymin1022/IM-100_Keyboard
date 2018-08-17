.class public Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/keyboard/KeyboardView;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_KEY_PREVIEW:I = 0x2

.field private static final MSG_SHOW_KEY_PREVIEW:I = 0x1


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 127
    return-void
.end method


# virtual methods
.method public cancelAllDismissKeyPreviews()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 182
    return-void
.end method

.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 186
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllDismissKeyPreviews()V

    .line 187
    return-void
.end method

.method public cancelAllShowKeyPreviews()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 170
    return-void
.end method

.method public cancelDismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method public dismissKeyPreview(JLcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .line 132
    .local v0, "keyboardView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_a

    .line 142
    :goto_9
    return-void

    .line 133
    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 134
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_2a

    goto :goto_9

    .line 136
    :pswitch_14
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1e

    :goto_1a
    invoke-static {v0, v3, v2, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/KeyboardView;IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a

    .line 139
    :pswitch_20
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 134
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method

.method public showKeyPreview(JIZLcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 15
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "longPress"    # Z
    .param p5, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 145
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 146
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .line 147
    .local v1, "keyboardView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-nez v1, :cond_e

    .line 162
    :cond_d
    :goto_d
    return-void

    .line 149
    :cond_e
    invoke-virtual {p5, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 151
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v5

    iget-object v5, v5, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isPreviewEnabledKeyboard()Z

    move-result v5

    if-eqz v5, :cond_41

    move v2, v4

    .line 153
    .local v2, "qwertyNormal":Z
    :goto_25
    if-nez v2, :cond_2d

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 155
    :cond_2d
    invoke-virtual {p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3d

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_43

    .line 157
    :cond_3d
    invoke-static {v1, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/KeyboardView;IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_d

    .end local v2    # "qwertyNormal":Z
    :cond_41
    move v2, v3

    .line 151
    goto :goto_25

    .line 159
    .restart local v2    # "qwertyNormal":Z
    :cond_43
    if-eqz p4, :cond_46

    move v3, v4

    :cond_46
    invoke-virtual {p0, v4, p3, v3, p5}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d
.end method
