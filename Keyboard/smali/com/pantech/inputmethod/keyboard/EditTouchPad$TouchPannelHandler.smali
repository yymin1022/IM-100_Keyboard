.class Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;
.super Landroid/os/Handler;
.source "EditTouchPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/EditTouchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchPannelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$000(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 73
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInputDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    .line 98
    :goto_3c
    return-void

    .line 79
    :pswitch_3d
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onLeftArrow()V

    .line 80
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$300(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 83
    :pswitch_55
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onRightArrow()V

    .line 84
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$300(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 87
    :pswitch_6d
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onUpArrow()V

    .line 88
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$300(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 91
    :pswitch_85
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onDownArrow()V

    .line 92
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$300(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->this$0:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 77
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_55
        :pswitch_6d
        :pswitch_85
    .end packed-switch
.end method
