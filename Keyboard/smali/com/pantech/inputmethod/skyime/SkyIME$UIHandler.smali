.class public Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;
.super Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;
.source "SkyIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper",
        "<",
        "Lcom/pantech/inputmethod/skyime/SkyIME;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_RECOGNIZE_PANEL:I = 0x1f

.field private static final MSG_FULL_HWR_MODE_CHAGE_DELAY:I = 0x17

.field private static final MSG_IGNORE_KEYEVENT:I = 0x22

.field private static final MSG_MULTITAP_TIMEOUT:I = 0x14

.field private static final MSG_PENDING_IMS_CALLBACK:I = 0x8

.field private static final MSG_SET_BIGRAM_PREDICTIONS:I = 0x7

.field private static final MSG_SPACE_TYPED:I = 0x5

.field private static final MSG_UPDATE_FULL_HWR:I = 0x21

.field private static final MSG_UPDATE_RECOGNIZE_RESULTS:I = 0x1e

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x1

.field private static final MSG_UPDATE_SUGGESTIONS:I


# instance fields
.field private mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mDelayFullHwrUpdate:I

.field private mDelayModeChange:I

.field private mDelayUpdateShiftState:I

.field private mDelayUpdateSuggestions:I

.field private mDoubleSpacesTurnIntoPeriodTimeout:J

.field private mHasPendingFinishInput:Z

.field private mHasPendingFinishInputView:Z

.field private mHasPendingStartInput:Z

.field private mIsOrientationChanging:Z

.field private mPendingSuccessiveImsCallback:Z


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2
    .param p1, "outerInstance"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method private executePendingImsCallback(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    .param p1, "skyIme"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInputView:Z

    if-eqz v0, :cond_9

    .line 556
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInput:Z

    invoke-static {p1, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$500(Lcom/pantech/inputmethod/skyime/SkyIME;Z)V

    .line 557
    :cond_9
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInput:Z

    if-eqz v0, :cond_10

    .line 558
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$600(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 559
    :cond_10
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingStartInput:Z

    if-eqz v0, :cond_17

    .line 560
    invoke-static {p1, p2, p3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$700(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 561
    :cond_17
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->resetPendingImsCallback()V

    .line 562
    return-void
.end method

.method private resetPendingImsCallback()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 549
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInput:Z

    .line 550
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingStartInput:Z

    .line 551
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 502
    return-void
.end method

.method public cancelMultitapTimeout()V
    .registers 2

    .prologue
    .line 491
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 492
    return-void
.end method

.method public cancelUpdateBigramPredictions()V
    .registers 2

    .prologue
    .line 481
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 482
    return-void
.end method

.method public cancelUpdateShiftState()V
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 473
    return-void
.end method

.method public cancelUpdateSuggestions()V
    .registers 2

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 460
    return-void
.end method

.method public clearRecognizePanel()V
    .registers 2

    .prologue
    .line 641
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 423
    .local v1, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$000(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 424
    .local v2, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 425
    .local v0, "inputView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_2e

    .line 446
    :goto_13
    return-void

    .line 427
    :sswitch_14
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateSuggestions()V

    goto :goto_13

    .line 430
    :sswitch_18
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_13

    .line 433
    :sswitch_1c
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateBigramPredictions()V

    goto :goto_13

    .line 436
    :sswitch_20
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$100(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    goto :goto_13

    .line 440
    :sswitch_24
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$202(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z

    goto :goto_13

    .line 443
    :sswitch_29
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$302(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z

    goto :goto_13

    .line 425
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_18
        0x7 -> :sswitch_1c
        0x14 -> :sswitch_20
        0x17 -> :sswitch_24
        0x22 -> :sswitch_29
    .end sparse-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .registers 2

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .registers 2

    .prologue
    .line 511
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public lockKeyEventMoment()V
    .registers 5

    .prologue
    const/16 v2, 0x22

    .line 515
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$302(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z

    .line 516
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 517
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 518
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 412
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayUpdateSuggestions:I

    .line 414
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayUpdateShiftState:I

    .line 416
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 418
    return-void
.end method

.method public onFinishInput()V
    .registers 4

    .prologue
    .line 624
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 627
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInput:Z

    .line 633
    :goto_b
    return-void

    .line 629
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 630
    .local v0, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->executePendingImsCallback(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 631
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$600(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    goto :goto_b
.end method

.method public onFinishInputView(Z)V
    .registers 4
    .param p1, "finishingInput"    # Z

    .prologue
    .line 612
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 615
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 621
    :goto_b
    return-void

    .line 617
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 618
    .local v0, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$500(Lcom/pantech/inputmethod/skyime/SkyIME;Z)V

    .line 619
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_b
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x1

    .line 565
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 568
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mHasPendingStartInput:Z

    .line 589
    :goto_b
    return-void

    .line 571
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 572
    .local v0, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mIsOrientationChanging:Z

    if-eqz v2, :cond_24

    if-eqz p2, :cond_24

    .line 574
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mIsOrientationChanging:Z

    .line 575
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 586
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->executePendingImsCallback(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 587
    invoke-static {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$700(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_b

    .line 576
    :cond_24
    if-eqz p2, :cond_1d

    .line 578
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$800(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    .line 580
    .local v1, "skyPrivateImeOptions":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$900(Lcom/pantech/inputmethod/skyime/SkyIME;)I

    move-result v2

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v3, :cond_1d

    if-eqz v1, :cond_37

    const/4 v2, 0x3

    if-le v1, v2, :cond_1d

    .line 583
    :cond_37
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$000(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    goto :goto_1d
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v2, 0x8

    .line 592
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->equivalentEditorInfoForKeyboard(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 595
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->resetPendingImsCallback()V

    .line 609
    :goto_13
    return-void

    .line 597
    :cond_14
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    if-eqz v1, :cond_27

    .line 599
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 600
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->resetPendingImsCallback()V

    .line 601
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 604
    :cond_27
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 605
    .local v0, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->executePendingImsCallback(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 606
    invoke-static {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1000(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 607
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_13
.end method

.method public postMultitapTimeout()V
    .registers 5

    .prologue
    const/16 v0, 0x14

    .line 485
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 486
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$400(Lcom/pantech/inputmethod/skyime/SkyIME;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 488
    return-void
.end method

.method public postUpdateBigramPredictions()V
    .registers 5

    .prologue
    const/4 v0, 0x7

    .line 476
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 478
    return-void
.end method

.method public postUpdateShiftState()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 467
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayUpdateShiftState:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    return-void
.end method

.method public postUpdateSuggestions()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 450
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 451
    return-void
.end method

.method public removePeningCallbackMsg()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 540
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 541
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 542
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->resetPendingImsCallback()V

    .line 544
    :cond_e
    return-void
.end method

.method public startDoubleSpacesTimer()V
    .registers 5

    .prologue
    const/4 v0, 0x5

    .line 496
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 498
    return-void
.end method

.method public startModeChageTimer()V
    .registers 5

    .prologue
    const/16 v2, 0x17

    .line 505
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$202(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z

    .line 506
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 507
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayModeChange:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 508
    return-void
.end method

.method public startOrientationChanging()V
    .registers 3

    .prologue
    .line 529
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 530
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->resetPendingImsCallback()V

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mIsOrientationChanging:Z

    .line 532
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 533
    .local v0, "skyIme":Lcom/pantech/inputmethod/skyime/SkyIME;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 534
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$000(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 536
    :cond_1e
    return-void
.end method

.method public updateFullHwrRect()V
    .registers 5

    .prologue
    const/16 v0, 0x21

    .line 454
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removeMessages(I)V

    .line 455
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->mDelayFullHwrUpdate:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 456
    return-void
.end method

.method public updateRecognizeResults()V
    .registers 2

    .prologue
    .line 637
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 638
    return-void
.end method
