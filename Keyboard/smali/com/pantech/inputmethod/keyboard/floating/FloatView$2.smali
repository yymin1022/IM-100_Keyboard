.class Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/floating/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V
    .registers 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 432
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 500
    :cond_d
    :goto_d
    return v9

    .line 437
    :cond_e
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Z

    move-result v5

    if-eq v5, v7, :cond_d

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1d0

    goto :goto_d

    .line 446
    :pswitch_1e
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4, v7}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$302(Lcom/pantech/inputmethod/keyboard/floating/FloatView;Z)Z

    .line 447
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$400(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V

    .line 449
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$500(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 450
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$600(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    goto :goto_d

    .line 453
    :pswitch_3b
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$700(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float v0, v5, v6

    .line 454
    .local v0, "gapX":F
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$800(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v1, v5, v6

    .line 455
    .local v1, "gapY":F
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v5, v0

    float-to-int v2, v5

    .line 456
    .local v2, "moveX":I
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1300(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    float-to-int v3, v5

    .line 457
    .local v3, "moveY":I
    if-gtz v2, :cond_b9

    .line 458
    const/4 v2, 0x0

    .line 462
    :cond_88
    :goto_88
    if-gez v3, :cond_db

    .line 463
    const/4 v3, 0x0

    .line 468
    :cond_8b
    :goto_8b
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    if-gez v2, :cond_10b

    :goto_8f
    invoke-static {v5, v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1500(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 469
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1600(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 470
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1700(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v4

    if-ne v4, v7, :cond_10d

    .line 471
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_d

    .line 459
    :cond_b9
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_88

    .line 460
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_88

    .line 464
    :cond_db
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1400(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_8b

    .line 466
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1400(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_8b

    .line 468
    :cond_10b
    int-to-float v4, v2

    goto :goto_8f

    .line 473
    :cond_10d
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1800()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 474
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1900()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1900()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1900()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v4, v9, v3, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 476
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2000()Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v5

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2000()Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2000()Landroid/widget/PopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_d

    .line 483
    .end local v0    # "gapX":F
    .end local v1    # "gapY":F
    .end local v2    # "moveX":I
    .end local v3    # "moveY":I
    :pswitch_153
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionX()F

    move-result v6

    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v7}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v7

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 485
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v6

    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v7}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I

    move-result v7

    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1000()Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 487
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1b0

    .line 488
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5, v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 492
    :cond_19a
    :goto_19a
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1300(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1c0

    .line 493
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5, v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    .line 497
    :cond_1a9
    :goto_1a9
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4, v9}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$302(Lcom/pantech/inputmethod/keyboard/floating/FloatView;Z)Z

    goto/16 :goto_d

    .line 489
    :cond_1b0
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v5

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_19a

    .line 490
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v5, v10}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    goto :goto_19a

    .line 494
    :cond_1c0
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$1300(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_1a9

    .line 495
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;->this$0:Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-static {v4, v10}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->access$2200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V

    goto :goto_1a9

    .line 442
    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_153
        :pswitch_3b
    .end packed-switch
.end method
