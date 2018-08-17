.class public Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;
.super Ljava/lang/Object;
.source "SuddenJumpingTouchEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;
    }
.end annotation


# static fields
.field private static DEBUG_MODE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisableDisambiguation:Z

.field private mDroppingEvents:Z

.field private mJumpThresholdSquare:I

.field private mLastX:I

.field private mLastY:I

.field private final mNeedsSuddenJumpingHack:Z

.field private final mView:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->DEBUG_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const v1, 0x7fffffff

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    .line 51
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mView:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "deviceList":[Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->needsSuddenJumpingHack(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mNeedsSuddenJumpingHack:Z

    .line 55
    return-void
.end method

.method private handleSuddenJumping(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mNeedsSuddenJumpingHack:Z

    if-nez v0, :cond_6

    .line 85
    const/4 v10, 0x0

    .line 146
    :goto_5
    return v10

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 87
    .local v8, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 88
    .local v12, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 89
    .local v13, "y":I
    const/4 v10, 0x0

    .line 92
    .local v10, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    .line 95
    :cond_1f
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    if-eqz v0, :cond_2b

    .line 97
    const/4 v0, 0x1

    if-ne v8, v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    .line 98
    :cond_29
    const/4 v10, 0x0

    goto :goto_5

    .line 101
    :cond_2b
    packed-switch v8, :pswitch_data_a0

    .line 144
    :cond_2e
    :goto_2e
    iput v12, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastX:I

    .line 145
    iput v13, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastY:I

    goto :goto_5

    .line 104
    :pswitch_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDisableDisambiguation:Z

    goto :goto_2e

    .line 109
    :pswitch_3a
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 111
    .local v9, "distanceSquare":I
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    if-le v9, v0, :cond_76

    .line 113
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-nez v0, :cond_74

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mLastY:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 120
    .local v11, "translated":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mView:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, v11}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    .line 121
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 123
    .end local v11    # "translated":Landroid/view/MotionEvent;
    :cond_74
    const/4 v10, 0x1

    goto :goto_2e

    .line 124
    :cond_76
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-eqz v0, :cond_2e

    .line 126
    const/4 v10, 0x1

    goto :goto_2e

    .line 130
    .end local v9    # "distanceSquare":I
    :pswitch_7c
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    if-eqz v0, :cond_2e

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 136
    .restart local v11    # "translated":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mView:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, v11}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    .line 137
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mDroppingEvents:Z

    goto :goto_2e

    .line 101
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_7c
        :pswitch_3a
    .end packed-switch
.end method

.method private static needsSuddenJumpingHack(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "deviceName"    # Ljava/lang/String;
    .param p1, "deviceList"    # [Ljava/lang/String;

    .prologue
    .line 58
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 59
    .local v1, "device":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 60
    const/4 v4, 0x1

    .line 63
    .end local v1    # "device":Ljava/lang/String;
    :goto_e
    return v4

    .line 58
    .restart local v1    # "device":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 63
    .end local v1    # "device":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->handleSuddenJumping(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 152
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->DEBUG_MODE:Z

    if-eqz v0, :cond_22

    .line 153
    sget-object v0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: ignore sudden jump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_22
    const/4 v0, 0x1

    .line 156
    :goto_23
    return v0

    :cond_24
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mView:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;

    invoke-interface {v0, p1}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 4
    .param p1, "newKeyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 68
    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    div-int/lit8 v0, v1, 0x7

    .line 69
    .local v0, "jumpThreshold":I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->mJumpThresholdSquare:I

    .line 70
    return-void
.end method
