.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field private mProcessingShiftDoubleTapEvent:Z

.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 3

    .prologue
    .line 248
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p2, "x1"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "firstDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 265
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 266
    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "secondTap"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    iget-boolean v4, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    if-eqz v4, :cond_3d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3d

    .line 374
    move-object v2, p1

    .line 375
    .local v2, "secondDown":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 376
    .local v1, "pointerIndex":I
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 377
    .local v0, "id":I
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v4, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$600(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 379
    .local v3, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 384
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$700(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isIgnoringDoubleTap()Z

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$800(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/PointerTracker;Z)V

    .line 385
    const/4 v4, 0x1

    .line 390
    .end local v0    # "id":I
    .end local v1    # "pointerIndex":I
    .end local v2    # "secondDown":Landroid/view/MotionEvent;
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :goto_39
    return v4

    .line 388
    .restart local v0    # "id":I
    .restart local v1    # "pointerIndex":I
    .restart local v2    # "secondDown":Landroid/view/MotionEvent;
    .restart local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 390
    .end local v0    # "id":I
    .end local v1    # "pointerIndex":I
    .end local v2    # "secondDown":Landroid/view/MotionEvent;
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_3d
    iget-boolean v4, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    goto :goto_39
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 27
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 275
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    move-result-object v8

    .line 276
    .local v8, "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    invoke-virtual {v8}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->resetPosition()V

    .line 277
    const/16 v17, 0x1

    .line 366
    .end local v8    # "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    :goto_25
    return v17

    .line 282
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$400(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-result-object v17

    if-eqz v17, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$400(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->isShown()Z

    move-result v17

    if-eqz v17, :cond_45

    .line 283
    const/16 v17, 0x1

    goto :goto_25

    .line 287
    :cond_45
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 288
    .local v4, "absVelocityX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 289
    .local v5, "absVelocityY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v6, v17, v18

    .line 290
    .local v6, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    sub-float v7, v17, v18

    .line 291
    .local v7, "deltaY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v17

    div-int/lit8 v15, v17, 0x3

    .line 292
    .local v15, "travelX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v17

    div-int/lit8 v16, v17, 0x2

    .line 293
    .local v16, "travelY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$500(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    move-result-object v17

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/keyboard/SwipeTracker;->computeCurrentVelocity(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$500(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/SwipeTracker;->getYVelocity()F

    move-result v9

    .line 296
    .local v9, "endingVelocityY":F
    const/16 v12, 0xfa0

    .line 309
    .local v12, "mSwipeThreshold":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isFloatingSplitMode(I)Z

    move-result v10

    .line 311
    .local v10, "floatingSplitMode":Z
    if-eqz v10, :cond_be

    .line 312
    const/16 v15, 0xc8

    .line 313
    const/16 v12, 0x64

    .line 318
    :cond_be
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 319
    .local v13, "pointerIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 320
    .local v11, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$600(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v14

    .line 323
    .local v14, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    int-to-float v0, v12

    move/from16 v17, v0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_152

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_152

    int-to-float v0, v15

    move/from16 v17, v0

    cmpl-float v17, v6, v17

    if-lez v17, :cond_152

    .line 325
    if-eqz v10, :cond_132

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEventForSplit(IIJ)V

    .line 334
    :goto_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->swipeRight(I)V

    .line 335
    const/16 v17, 0x1

    goto/16 :goto_25

    .line 330
    :cond_132
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_10f

    .line 337
    :cond_152
    int-to-float v0, v12

    move/from16 v17, v0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_1d5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1d5

    neg-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_1d5

    .line 339
    if-eqz v10, :cond_1b5

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEventForSplit(IIJ)V

    .line 348
    :goto_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->swipeLeft(I)V

    .line 349
    const/16 v17, 0x1

    goto/16 :goto_25

    .line 344
    :cond_1b5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_192

    .line 351
    :cond_1d5
    div-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v5, v17

    if-lez v17, :cond_226

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_226

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v7, v17

    if-gez v17, :cond_226

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->swipeUp()V

    .line 357
    const/16 v17, 0x1

    goto/16 :goto_25

    .line 359
    :cond_226
    div-int/lit8 v17, v12, 0x4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, p4, v17

    if-lez v17, :cond_276

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v7, v17

    cmpg-float v17, v6, v17

    if-gez v17, :cond_276

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_276

    .line 360
    const/high16 v17, 0x40800000    # 4.0f

    div-float v17, p4, v17

    cmpl-float v17, v9, v17

    if-ltz v17, :cond_276

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->swipeDown()V

    .line 363
    const/16 v17, 0x1

    goto/16 :goto_25

    .line 366
    :cond_276
    const/16 v17, 0x0

    goto/16 :goto_25
.end method
