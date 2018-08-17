.class public Lcom/pantech/inputmethod/skyime/Edit;
.super Ljava/lang/Object;
.source "Edit.java"


# static fields
.field public static final DEBUG_STATE:Z = false

.field public static final STATE_EDIT_MODE:I = 0x1

.field public static final STATE_EDIT_MODE_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static mIsStateEditMode:I

.field private static mService:Lcom/pantech/inputmethod/skyime/SkyIME;

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/Edit;


# instance fields
.field private final STATE_SHIFT_DOWN:I

.field private final STATE_SHIFT_UP:I

.field private mConn:Landroid/view/inputmethod/InputConnection;

.field private mDefalutKeyboardHeight:I

.field private mDefalutKeyboardWidth:I

.field private mInputContainer:Landroid/view/ViewGroup;

.field private mKeyboardView:Landroid/view/View;

.field private mOveralyFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

.field private mOverlayView:Landroid/view/View;

.field private mSelection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/Edit;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/pantech/inputmethod/skyime/Edit;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/Edit;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/Edit;->sInstance:Lcom/pantech/inputmethod/skyime/Edit;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->STATE_SHIFT_DOWN:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->STATE_SHIFT_UP:I

    .line 50
    iput v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardHeight:I

    .line 51
    iput v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardWidth:I

    .line 58
    return-void
.end method

.method private getCurrentKeyboardViewHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 175
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 176
    .local v0, "overlayHeight":I
    return v0
.end method

.method private getExtractedText()Landroid/view/inputmethod/ExtractedText;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 196
    .local v0, "localExtractedTextRequest":Landroid/view/inputmethod/ExtractedTextRequest;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    return-object v1
.end method

.method private getInputConnection()Z
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    .line 182
    .local v0, "localInputConnection":Landroid/view/inputmethod/InputConnection;
    sget-object v1, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    .line 183
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    if-eq v0, v1, :cond_11

    .line 184
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->resetSelection()V

    .line 185
    :cond_11
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/Edit;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/pantech/inputmethod/skyime/Edit;->sInstance:Lcom/pantech/inputmethod/skyime/Edit;

    return-object v0
.end method

.method public static init(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "service"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 61
    sput-object p0, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 62
    return-void
.end method

.method private isPortrait()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    sget-object v3, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    if-eqz v3, :cond_17

    .line 578
    sget-object v3, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 579
    .local v0, "orientation":I
    if-ne v0, v1, :cond_15

    .line 586
    .end local v0    # "orientation":I
    :goto_14
    return v1

    .restart local v0    # "orientation":I
    :cond_15
    move v1, v2

    .line 582
    goto :goto_14

    .line 585
    .end local v0    # "orientation":I
    :cond_17
    sget-object v1, Lcom/pantech/inputmethod/skyime/Edit;->TAG:Ljava/lang/String;

    const-string v3, "mService == null why?"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 586
    goto :goto_14
.end method

.method private pressKey(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 543
    sget-object v0, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendDownUpKeyEvents(I)V

    .line 545
    :cond_b
    return-void
.end method

.method private pressKey(II)V
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "shiftState"    # I

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 550
    .local v4, "eventTime":J
    if-nez p2, :cond_23

    .line 551
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x41

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 562
    .end local v4    # "eventTime":J
    :cond_22
    :goto_22
    return-void

    .line 555
    .restart local v4    # "eventTime":J
    :cond_23
    const/4 v0, 0x1

    if-ne p2, v0, :cond_22

    .line 556
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x41

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_22
.end method

.method private resetSelection()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    .line 191
    return-void
.end method


# virtual methods
.method public clearEditModeState()V
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/Edit;->setEditModeState(I)V

    .line 574
    return-void
.end method

.method public getEditModeState()I
    .registers 2

    .prologue
    .line 569
    sget v0, Lcom/pantech/inputmethod/skyime/Edit;->mIsStateEditMode:I

    return v0
.end method

.method public getSelectionState()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    return v0
.end method

.method public hideOverlayPopup()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    if-eqz v0, :cond_e

    .line 168
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;->setVisibility(I)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    .line 171
    :cond_e
    return-void
.end method

.method public onBackspace()V
    .registers 5

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v2

    if-nez v2, :cond_7

    .line 243
    :cond_6
    :goto_6
    return-void

    .line 225
    :cond_7
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 227
    const-wide/16 v2, 0x96

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_2e

    .line 234
    :goto_11
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 236
    .local v1, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 237
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_29

    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ne v2, v3, :cond_6

    .line 239
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_6

    .line 228
    .end local v1    # "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    :catch_2e
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11
.end method

.method public onClear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_8

    .line 284
    :cond_7
    :goto_7
    return-void

    .line 275
    :cond_8
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 276
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    .line 277
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 278
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 279
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 280
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v4, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 282
    :cond_2f
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-eqz v1, :cond_7

    .line 283
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_7
.end method

.method public onCopy()V
    .registers 5

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 517
    :cond_6
    :goto_6
    return-void

    .line 506
    :cond_7
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 507
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_6

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-eq v1, v2, :cond_6

    .line 510
    :cond_19
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const v2, 0x1020021

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 512
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    .line 513
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_6
.end method

.method public onCut()V
    .registers 4

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 532
    :cond_6
    :goto_6
    return-void

    .line 524
    :cond_7
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 525
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_6

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-eq v1, v2, :cond_6

    .line 528
    :cond_19
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const v2, 0x1020020

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 529
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_6
.end method

.method public onDel()V
    .registers 5

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v2

    if-nez v2, :cond_7

    .line 268
    :cond_6
    :goto_6
    return-void

    .line 248
    :cond_7
    const/16 v2, 0x70

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(I)V

    .line 250
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 252
    const-wide/16 v2, 0x96

    :try_start_13
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_33

    .line 259
    :goto_16
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 261
    .local v1, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 262
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ne v2, v3, :cond_6

    .line 264
    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_6

    .line 253
    .end local v1    # "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    :catch_33
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_16
.end method

.method public onDownArrow()V
    .registers 7

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_b

    .line 383
    :cond_a
    :goto_a
    return-void

    .line 365
    :cond_b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 366
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    .line 367
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v4, :cond_a

    .line 371
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2b

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v1, v2, :cond_2b

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-ne v1, v4, :cond_2f

    .line 375
    :cond_2b
    invoke-direct {p0, v5, v3}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    goto :goto_a

    .line 379
    :cond_2f
    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(I)V

    .line 381
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-eqz v1, :cond_a

    .line 382
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_a
.end method

.method public onLeftArrow()V
    .registers 7

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_b

    .line 408
    :cond_a
    :goto_a
    return-void

    .line 390
    :cond_b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 392
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2d

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2d

    .line 393
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_25

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v1, v2, :cond_25

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-ne v1, v4, :cond_2d

    .line 397
    :cond_25
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-lt v1, v4, :cond_a

    .line 400
    invoke-direct {p0, v5, v3}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    goto :goto_a

    .line 404
    :cond_2d
    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(I)V

    .line 406
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-eqz v1, :cond_a

    .line 407
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_a
.end method

.method public onPaste()V
    .registers 3

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 539
    :goto_6
    return-void

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const v1, 0x1020022

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_6
.end method

.method public onRightArrow()V
    .registers 6

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x0

    .line 411
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_a

    .line 432
    :cond_9
    :goto_9
    return-void

    .line 415
    :cond_a
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 417
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_33

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_33

    .line 418
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_25

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v1, v2, :cond_25

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 422
    :cond_25
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 424
    invoke-direct {p0, v4, v3}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    goto :goto_9

    .line 428
    :cond_33
    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(I)V

    .line 430
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-eqz v1, :cond_9

    .line 431
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_9
.end method

.method public onSelect()V
    .registers 6

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 467
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_b

    .line 499
    :cond_a
    :goto_a
    return-void

    .line 472
    :cond_b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 473
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 474
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 475
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-nez v1, :cond_28

    .line 480
    invoke-direct {p0, v3, v4}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    .line 481
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_a

    .line 488
    :cond_28
    invoke-direct {p0, v3, v2}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    .line 489
    if-eqz v0, :cond_40

    .line 490
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 491
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 493
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 495
    :cond_40
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_a
.end method

.method public onSelectAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_8

    .line 464
    :cond_7
    :goto_7
    return-void

    .line 439
    :cond_8
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 441
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 442
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 450
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_40

    .line 452
    :cond_2d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 453
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 460
    :cond_40
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    .line 461
    const/16 v1, 0x3b

    invoke-direct {p0, v1, v3}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    goto :goto_7
.end method

.method public onUpArrow()V
    .registers 7

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_b

    .line 358
    :cond_a
    :goto_a
    return-void

    .line 340
    :cond_b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 341
    .local v0, "localExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    .line 342
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v4, :cond_a

    .line 346
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2b

    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v1, v2, :cond_2b

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-ne v1, v4, :cond_2f

    .line 350
    :cond_2b
    invoke-direct {p0, v5, v3}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    goto :goto_a

    .line 354
    :cond_2f
    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(I)V

    .line 356
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    if-eqz v1, :cond_a

    .line 357
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    goto :goto_a
.end method

.method public setEditModeState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 565
    sput p1, Lcom/pantech/inputmethod/skyime/Edit;->mIsStateEditMode:I

    .line 566
    return-void
.end method

.method public setSelectionIfAreadySelected()V
    .registers 4

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getInputConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 206
    :cond_6
    :goto_6
    return-void

    .line 202
    :cond_7
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mConn:Landroid/view/inputmethod/InputConnection;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 203
    .local v0, "ch":Ljava/lang/CharSequence;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 204
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/Edit;->onSelect()V

    goto :goto_6
.end method

.method public setSelectionState(Z)V
    .registers 4
    .param p1, "selectionState"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/Edit;->mSelection:Z

    .line 211
    if-nez p1, :cond_a

    .line 212
    const/16 v0, 0x3b

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->pressKey(II)V

    .line 214
    :cond_a
    return-void
.end method

.method public showOverlayPopup(Lcom/pantech/inputmethod/skyime/InputView;)V
    .registers 16
    .param p1, "inputView"    # Lcom/pantech/inputmethod/skyime/InputView;

    .prologue
    .line 69
    const v11, 0x7f100081

    invoke-virtual {p1, v11}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mInputContainer:Landroid/view/ViewGroup;

    .line 70
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mInputContainer:Landroid/view/ViewGroup;

    const v12, 0x7f100083

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mKeyboardView:Landroid/view/View;

    .line 72
    const/4 v5, 0x0

    .line 73
    .local v5, "mScreenWidth":I
    sget-object v11, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 74
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 75
    .local v1, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 77
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 80
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->isPortrait()Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 82
    sget-object v11, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v11}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardHeight:I

    .line 83
    iput v5, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardWidth:I

    .line 90
    :goto_46
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    move-result-object v3

    .line 91
    .local v3, "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    sget-object v11, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 94
    .local v8, "vi":Landroid/view/LayoutInflater;
    const v11, 0x7f030003

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayView:Landroid/view/View;

    .line 95
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayView:Landroid/view/View;

    const v12, 0x7f100079

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 97
    .local v4, "ll":Landroid/widget/LinearLayout;
    new-instance v11, Lcom/pantech/inputmethod/skyime/Edit$1;

    invoke-direct {v11, p0, v3}, Lcom/pantech/inputmethod/skyime/Edit$1;-><init>(Lcom/pantech/inputmethod/skyime/Edit;Lcom/pantech/inputmethod/keyboard/EditTouchPad;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    sget-object v11, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v11}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v6, v11, Landroid/content/res/Configuration;->orientation:I

    .line 124
    .local v6, "orientation":I
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayView:Landroid/view/View;

    const v12, 0x7f10007b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 125
    .local v10, "xButton":Landroid/widget/ImageView;
    new-instance v11, Lcom/pantech/inputmethod/skyime/Edit$2;

    invoke-direct {v11, p0}, Lcom/pantech/inputmethod/skyime/Edit$2;-><init>(Lcom/pantech/inputmethod/skyime/Edit;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/Edit;->hideOverlayPopup()V

    .line 135
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayView:Landroid/view/View;

    const v12, 0x7f10007a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, "editHelp":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v0, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v11, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    sget-object v12, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {v11, v12}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    .line 151
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;->setClickable(Z)V

    .line 154
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/Edit;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Edit;->getCurrentKeyboardViewHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOveralyFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 156
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOveralyFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v12, 0x50

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOveralyFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;->setVisibility(I)V

    .line 162
    iget-object v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mInputContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/Edit;->mOverlayFrameLayout:Lcom/pantech/inputmethod/skyime/size/OverlayFrameLayout;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    return-void

    .line 87
    .end local v0    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "editHelp":Landroid/widget/TextView;
    .end local v3    # "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    .end local v6    # "orientation":I
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    .end local v10    # "xButton":Landroid/widget/ImageView;
    :cond_e7
    sget-object v11, Lcom/pantech/inputmethod/skyime/Edit;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v11}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardHeight:I

    .line 88
    iput v5, p0, Lcom/pantech/inputmethod/skyime/Edit;->mDefalutKeyboardWidth:I

    goto/16 :goto_46
.end method
