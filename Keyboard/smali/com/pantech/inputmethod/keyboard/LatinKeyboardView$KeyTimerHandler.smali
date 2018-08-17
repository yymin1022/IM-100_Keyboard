.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyTimerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;",
        ">;",
        "Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;"
    }
.end annotation


# static fields
.field private static final MSG_IGNORE_DOUBLE_TAP:I = 0x3

.field private static final MSG_LONGPRESS_KEY:I = 0x2

.field private static final MSG_POPUP_DISMISS:I = 0x4

.field private static final MSG_REPEAT_KEY:I = 0x1


# instance fields
.field private mInKeyRepeat:Z


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 165
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 234
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 200
    return-void
.end method

.method public cancelKeyTimers()V
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 219
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 220
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 221
    return-void
.end method

.method public cancelLongPressTimer()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 215
    return-void
.end method

.method public cancelMoreKeyboardTimer()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 245
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 170
    .local v0, "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 172
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    if-eqz v0, :cond_2e

    .line 173
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5c

    .line 190
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 175
    :pswitch_12
    if-eqz v1, :cond_19

    .line 176
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 177
    :cond_19
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$000(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)I

    move-result v2

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startKeyRepeatTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_11

    .line 180
    :pswitch_24
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    goto :goto_11

    .line 183
    :pswitch_2a
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    goto :goto_11

    .line 187
    :cond_2e
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 188
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyboardView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 173
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_24
        :pswitch_11
        :pswitch_2a
    .end packed-switch
.end method

.method public isIgnoringDoubleTap()Z
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isInKeyRepeat()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public startIgnoringDoubleTap()V
    .registers 5

    .prologue
    .line 224
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 8
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x1

    .line 193
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method

.method public startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 8
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 207
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 208
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLongPressTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_34
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 210
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    return-void
.end method

.method public startMoreKeyboardTimer(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 237
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 238
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMoreKeyboardTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_20
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelMoreKeyboardTimer()V

    .line 240
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 241
    return-void
.end method
