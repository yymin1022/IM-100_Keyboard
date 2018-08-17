.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1601
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float v0, v1, v2

    .line 1602
    .local v0, "span":F
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPAN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x1

    .line 1559
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-------------------- Scale Gesture BEGIN -------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_10
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/Edit;->getEditModeState()I

    move-result v1

    if-ne v1, v0, :cond_1c

    .line 1563
    const/4 v0, 0x0

    .line 1570
    :goto_1b
    return v0

    .line 1568
    :cond_1c
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1402(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Z)Z

    goto :goto_1b
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1575
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    sub-float v1, v2, v3

    .line 1576
    .local v1, "span":F
    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_32

    .line 1577
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    const/16 v3, -0x1c3

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)V

    .line 1583
    :cond_17
    :goto_17
    new-instance v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener$1;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;)V

    .line 1593
    .local v0, "handler":Landroid/os/Handler;
    const/4 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1596
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$200()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-------------------- Scale Gesture END -------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_31
    return-void

    .line 1578
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_32
    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_17

    .line 1579
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    const/16 v3, -0x1c2

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)V

    goto :goto_17
.end method
