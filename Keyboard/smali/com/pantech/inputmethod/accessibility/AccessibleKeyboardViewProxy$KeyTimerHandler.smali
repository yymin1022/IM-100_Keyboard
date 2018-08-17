.class Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "AccessibleKeyboardViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyTimerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_LONGPRESS_KEY:I = 0x2


# instance fields
.field private mLongPressed:Z


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;)V
    .registers 3
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->mLongPressed:Z

    .line 88
    return-void
.end method


# virtual methods
.method public cancelLongPressTimer()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->mLongPressed:Z

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->removeMessages(I)V

    .line 112
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 102
    :cond_5
    :goto_5
    return-void

    .line 94
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/Key;

    .line 95
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_5

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->mLongPressed:Z

    .line 97
    invoke-virtual {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-static {v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->access$000(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->simulateLongPress(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 98
    invoke-virtual {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->access$100(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;Lcom/pantech/inputmethod/keyboard/Key;I)Z

    goto :goto_5

    .line 92
    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method public isLongPressed()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->mLongPressed:Z

    return v0
.end method

.method public startLongPressTimer(JLcom/pantech/inputmethod/keyboard/Key;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->cancelLongPressTimer()V

    .line 106
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    return-void
.end method
