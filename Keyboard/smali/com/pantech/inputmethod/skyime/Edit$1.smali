.class Lcom/pantech/inputmethod/skyime/Edit$1;
.super Ljava/lang/Object;
.source "Edit.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/Edit;->showOverlayPopup(Lcom/pantech/inputmethod/skyime/InputView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field offsetX:I

.field offsetY:I

.field orgHeight:I

.field orgWidth:I

.field orgX:I

.field orgY:I

.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/Edit;

.field final synthetic val$editTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/Edit;Lcom/pantech/inputmethod/keyboard/EditTouchPad;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->this$0:Lcom/pantech/inputmethod/skyime/Edit;

    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->val$editTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 119
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgX:I

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgY:I

    goto :goto_7

    .line 110
    :pswitch_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetX:I

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetY:I

    .line 112
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->val$editTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget v4, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetX:I

    iget v5, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetY:I

    iget v6, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgX:I

    iget v7, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgY:I

    invoke-virtual/range {v0 .. v7}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveCursor(Lcom/pantech/inputmethod/keyboard/Key;JIIII)V

    .line 113
    iget v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetX:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgX:I

    .line 114
    iget v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->offsetY:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit$1;->orgY:I

    goto :goto_7

    .line 104
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method
