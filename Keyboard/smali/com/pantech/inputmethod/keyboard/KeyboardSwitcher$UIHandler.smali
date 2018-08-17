.class public Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_GESTURE_PINCH_IN_TIMER:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 222
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 227
    .local v0, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_12

    .line 232
    :goto_b
    return-void

    .line 229
    :pswitch_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$102(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)I

    goto :goto_b

    .line 227
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public startWaitPinchInGesture()V
    .registers 5

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    return-void
.end method
