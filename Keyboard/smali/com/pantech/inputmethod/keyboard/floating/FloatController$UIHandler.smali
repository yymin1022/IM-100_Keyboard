.class public Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "FloatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/floating/FloatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/keyboard/floating/FloatController;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_FLOATVIEW:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/floating/FloatController;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    .line 68
    .local v0, "controller":Lcom/pantech/inputmethod/keyboard/floating/FloatController;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 73
    :goto_b
    return-void

    .line 70
    :pswitch_c
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->access$000(Lcom/pantech/inputmethod/keyboard/floating/FloatController;)V

    goto :goto_b

    .line 68
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public postUpdateFloatView()V
    .registers 5

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/keyboard/floating/FloatController$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    return-void
.end method
