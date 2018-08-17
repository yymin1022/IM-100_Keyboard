.class public Lcom/pantech/inputmethod/keyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;,
        Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;,
        Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;,
        Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENT:Z

.field private static final DEBUG_LISTENER:Z

.field private static DEBUG_MODE:Z

.field private static final DEBUG_MOVE_EVENT:Z

.field private static final EMPTY_LISTENER:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private static final TAG:Ljava/lang/String;

.field private static mErrKeyIndex:I

.field private static sConfigSlidingKeyInputEnabled:Z

.field private static sDelayBeforeKeyRepeatStart:I

.field private static sKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private static sLongPressKeyTimeout:I

.field private static sLongPressShiftKeyTimeout:I

.field private static sLongPressSpaceKeyTimeout:I

.field private static sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

.field private static sTouchNoiseThresholdDistanceSquared:I

.field private static sTouchNoiseThresholdMillis:I

.field private static final sTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrackersL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrackersR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownTime:J

.field private mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

.field private mEditTouchProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

.field private mIgnoreModifierKey:Z

.field private mIsAllowedSlidingKeyInput:Z

.field mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mIsShowingMoreKeysPanel:Z

.field private mIsTouchPadTouched:Z

.field private mKeyAlreadyProcessed:Z

.field private mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private mKeyIndex:I

.field private final mKeyPreviewText:Landroid/widget/TextView;

.field private mKeyQuarterWidthSquared:I

.field private mKeyX:I

.field private mKeyY:I

.field private mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeysR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field public final mPointerId:I

.field private mPreviousEventTime:J

.field private mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private mUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mErrKeyIndex:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersL:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersR:Ljava/util/List;

    .line 185
    new-instance v0, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-void
.end method

.method public constructor <init>(IILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 5
    .param p1, "inputMode"    # I
    .param p2, "id"    # I
    .param p3, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    .line 137
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 321
    if-nez p3, :cond_15

    .line 322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_15
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 324
    invoke-interface {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 325
    invoke-interface {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 326
    invoke-interface {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 327
    invoke-interface {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 328
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->inflateKeyPreviewText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    .line 329
    invoke-interface {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mEditTouchProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    .line 330
    return-void
.end method

.method public constructor <init>(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    .line 137
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 308
    if-nez p2, :cond_15

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    :cond_15
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 311
    invoke-interface {p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 312
    invoke-interface {p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 313
    invoke-interface {p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 314
    invoke-interface {p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 315
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->inflateKeyPreviewText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    .line 316
    invoke-interface {p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mEditTouchProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    .line 317
    return-void
.end method

.method private callListenerOnCancelInput()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 394
    return-void
.end method

.method private callListenerOnCodeInput(Lcom/pantech/inputmethod/keyboard/Key;I[III)V
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 358
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_10

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 363
    .local v0, "ignoreModifierKey":Z
    :goto_d
    if-eqz v0, :cond_12

    .line 367
    :cond_f
    :goto_f
    return-void

    .line 358
    .end local v0    # "ignoreModifierKey":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 365
    .restart local v0    # "ignoreModifierKey":Z
    :cond_12
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 366
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p4, p5}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    goto :goto_f
.end method

.method private callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/pantech/inputmethod/keyboard/Key;Z)Z
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "withSliding"    # Z

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v3, :cond_12

    iget v3, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    .line 343
    .local v0, "ignoreModifierKey":Z
    :goto_e
    if-eqz v0, :cond_14

    move v1, v2

    .line 351
    :goto_11
    return v1

    .end local v0    # "ignoreModifierKey":Z
    :cond_12
    move v0, v2

    .line 339
    goto :goto_e

    .line 345
    .restart local v0    # "ignoreModifierKey":Z
    :cond_14
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 346
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    iget v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v3, v4, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 347
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 348
    .local v1, "keyboardLayoutHasBeenChanged":Z
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_11

    .end local v1    # "keyboardLayoutHasBeenChanged":Z
    :cond_26
    move v1, v2

    .line 351
    goto :goto_11
.end method

.method private callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V
    .registers 6
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "primaryCode"    # I
    .param p3, "withSliding"    # Z

    .prologue
    .line 380
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_10

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 384
    .local v0, "ignoreModifierKey":Z
    :goto_d
    if-eqz v0, :cond_12

    .line 388
    :cond_f
    :goto_f
    return-void

    .line 380
    .end local v0    # "ignoreModifierKey":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 386
    .restart local v0    # "ignoreModifierKey":Z
    :cond_12
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 387
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    goto :goto_f
.end method

.method private callListenerOnTextInput(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 4
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 373
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 374
    :cond_d
    return-void
.end method

.method private convertKorCode(I)I
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1041
    move v0, p1

    .line 1042
    .local v0, "primaryCode":I
    packed-switch v0, :pswitch_data_60

    .line 1134
    :goto_4
    :pswitch_4
    return v0

    .line 1044
    :pswitch_5
    const/16 v0, 0x3e9

    .line 1045
    goto :goto_4

    .line 1047
    :pswitch_8
    const/16 v0, 0x3ea

    .line 1048
    goto :goto_4

    .line 1050
    :pswitch_b
    const/16 v0, 0x3f8

    .line 1051
    goto :goto_4

    .line 1053
    :pswitch_e
    const/16 v0, 0x410

    .line 1054
    goto :goto_4

    .line 1056
    :pswitch_11
    const/16 v0, 0x40f

    .line 1057
    goto :goto_4

    .line 1059
    :pswitch_14
    const/16 v0, 0x40e

    .line 1060
    goto :goto_4

    .line 1062
    :pswitch_17
    const/16 v0, 0x3fc

    .line 1063
    goto :goto_4

    .line 1065
    :pswitch_1a
    const/16 v0, 0x3fe

    .line 1066
    goto :goto_4

    .line 1068
    :pswitch_1d
    const/16 v0, 0x3ec

    .line 1069
    goto :goto_4

    .line 1071
    :pswitch_20
    const/16 v0, 0x3ed

    .line 1072
    goto :goto_4

    .line 1074
    :pswitch_23
    const/16 v0, 0x3f9

    .line 1075
    goto :goto_4

    .line 1077
    :pswitch_26
    const/16 v0, 0x3eb

    .line 1078
    goto :goto_4

    .line 1080
    :pswitch_29
    const/16 v0, 0x3ee

    .line 1081
    goto :goto_4

    .line 1083
    :pswitch_2c
    const/16 v0, 0x400

    .line 1084
    goto :goto_4

    .line 1086
    :pswitch_2f
    const/16 v0, 0x402

    .line 1087
    goto :goto_4

    .line 1089
    :pswitch_32
    const/16 v0, 0x3ef

    .line 1090
    goto :goto_4

    .line 1092
    :pswitch_35
    const/16 v0, 0x3f3

    .line 1093
    goto :goto_4

    .line 1095
    :pswitch_38
    const/16 v0, 0x3f2

    .line 1096
    goto :goto_4

    .line 1098
    :pswitch_3b
    const/16 v0, 0x3f0

    .line 1099
    goto :goto_4

    .line 1101
    :pswitch_3e
    const/16 v0, 0x3f1

    .line 1102
    goto :goto_4

    .line 1104
    :pswitch_41
    const/16 v0, 0x3fa

    .line 1105
    goto :goto_4

    .line 1107
    :pswitch_44
    const/16 v0, 0x404

    .line 1108
    goto :goto_4

    .line 1110
    :pswitch_47
    const/16 v0, 0x408

    .line 1111
    goto :goto_4

    .line 1113
    :pswitch_4a
    const/16 v0, 0x409

    .line 1114
    goto :goto_4

    .line 1116
    :pswitch_4d
    const/16 v0, 0x40d

    .line 1117
    goto :goto_4

    .line 1119
    :pswitch_50
    const/16 v0, 0x3f5

    .line 1120
    goto :goto_4

    .line 1122
    :pswitch_53
    const/16 v0, 0x3f6

    .line 1123
    goto :goto_4

    .line 1125
    :pswitch_56
    const/16 v0, 0x3f7

    .line 1126
    goto :goto_4

    .line 1128
    :pswitch_59
    const/16 v0, 0x3f4

    .line 1129
    goto :goto_4

    .line 1131
    :pswitch_5c
    const/16 v0, 0x3fb

    goto :goto_4

    .line 1042
    nop

    :pswitch_data_60
    .packed-switch 0x3131
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_26
        :pswitch_4
        :pswitch_4
        :pswitch_1d
        :pswitch_20
        :pswitch_29
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_32
        :pswitch_3b
        :pswitch_3e
        :pswitch_4
        :pswitch_38
        :pswitch_35
        :pswitch_59
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_b
        :pswitch_23
        :pswitch_41
        :pswitch_5c
        :pswitch_17
        :pswitch_4
        :pswitch_1a
        :pswitch_4
        :pswitch_2c
        :pswitch_4
        :pswitch_2f
        :pswitch_4
        :pswitch_44
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_47
        :pswitch_4a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4d
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private detectAndSendKey(III)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 994
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v1

    .line 995
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v1, :cond_c

    .line 996
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 1037
    :goto_b
    return-void

    .line 999
    :cond_c
    iget-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 1000
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnTextInput(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 1001
    iget v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-direct {p0, v1, v0, v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    goto :goto_b

    .line 1003
    :cond_19
    iget v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 1004
    .local v2, "code":I
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 1005
    .local v3, "codes":[I
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p2, p3, v3}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 1011
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1012
    iget-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1013
    aput v2, v3, v6

    .line 1017
    :cond_3c
    if-lez v2, :cond_50

    iget-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-ne v0, v5, :cond_50

    .line 1020
    iget-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1029
    :cond_50
    array-length v0, v3

    const/4 v4, 0x2

    if-lt v0, v4, :cond_62

    aget v0, v3, v6

    if-eq v0, v2, :cond_62

    aget v0, v3, v5

    if-ne v0, v2, :cond_62

    .line 1030
    aget v0, v3, v6

    aput v0, v3, v5

    .line 1031
    aput v2, v3, v6

    :cond_62
    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 1034
    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/pantech/inputmethod/keyboard/Key;I[III)V

    .line 1035
    invoke-direct {p0, v1, v2, v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    goto :goto_b
.end method

.method public static dismissAllKeyPreviews(I)V
    .registers 5
    .param p0, "inputMode"    # I

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/keyboard/PointerTracker;>;"
    const/4 v3, 0x5

    if-ne p0, v3, :cond_1c

    .line 295
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersL:Ljava/util/List;

    .line 302
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 303
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {v1, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto :goto_a

    .line 296
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_1c
    const/4 v3, 0x6

    if-ne p0, v3, :cond_22

    .line 297
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersR:Ljava/util/List;

    goto :goto_6

    .line 299
    :cond_22
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    goto :goto_6

    .line 305
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_25
    return-void
.end method

.method public static getPointerTracker(IILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .registers 7
    .param p0, "inputMode"    # I
    .param p1, "id"    # I
    .param p2, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/keyboard/PointerTracker;>;"
    const/4 v3, 0x5

    if-ne p0, v3, :cond_17

    .line 229
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersL:Ljava/util/List;

    .line 235
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_a
    if-gt v0, p1, :cond_1d

    .line 236
    new-instance v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    invoke-direct {v1, p0, v0, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;-><init>(IILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 237
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 230
    .end local v0    # "i":I
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_17
    const/4 v3, 0x6

    if-ne p0, v3, :cond_6

    .line 231
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersR:Ljava/util/List;

    goto :goto_6

    .line 239
    .restart local v0    # "i":I
    :cond_1d
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    return-object v3
.end method

.method public static getPointerTracker(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .registers 6
    .param p0, "id"    # I
    .param p1, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 213
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 217
    .local v2, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/keyboard/PointerTracker;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_6
    if-gt v0, p0, :cond_13

    .line 218
    new-instance v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    invoke-direct {v1, v0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;-><init>(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 219
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 222
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_13
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    return-object v3
.end method

.method public static init(ZLandroid/content/Context;)V
    .registers 5
    .param p0, "hasDistinctMultitouch"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    if-eqz p0, :cond_55

    .line 193
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-direct {v2}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;-><init>()V

    sput-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 198
    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f070005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    .line 200
    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    .line 201
    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    .line 202
    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    .line 203
    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    .line 204
    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    .line 205
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 207
    .local v1, "touchNoiseThresholdDistance":F
    mul-float v2, v1, v1

    float-to-int v2, v2

    sput v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    .line 209
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 210
    return-void

    .line 195
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "touchNoiseThresholdDistance":F
    :cond_55
    const/4 v2, 0x0

    sput-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    goto :goto_9
.end method

.method public static isAnyInSlidingKeyInput()Z
    .registers 1

    .prologue
    .line 244
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->isAnyInSlidingKeyInput()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isKeyPreviewRequired(Lcom/pantech/inputmethod/keyboard/Key;)Z
    .registers 3
    .param p0, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 501
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 503
    .local v0, "code":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_19

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    const/4 v1, -0x5

    if-eq v0, v1, :cond_19

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, -0x6

    if-eq v0, v1, :cond_19

    const/4 v1, -0x7

    if-ne v0, v1, :cond_1b

    .line 507
    :cond_19
    const/4 v1, 0x0

    .line 509
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method private isMajorEnoughMoveToBeOnNewKey(III)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "newKey"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 951
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    if-nez v1, :cond_12

    .line 952
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "keyboard and/or key detector not set"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_12
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 954
    .local v0, "curKey":I
    if-ne p3, v0, :cond_17

    .line 960
    :goto_16
    return v3

    .line 956
    :cond_17
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 957
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyHysteresisDistanceSquared()I

    move-result v4

    if-lt v1, v4, :cond_34

    move v1, v2

    :goto_32
    move v3, v1

    goto :goto_16

    :cond_34
    move v1, v3

    goto :goto_32

    :cond_36
    move v3, v2

    .line 960
    goto :goto_16
.end method

.method private static isModifierCode(I)Z
    .registers 2
    .param p0, "primaryCode"    # I

    .prologue
    .line 445
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/4 v0, -0x2

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isModifierInternal(I)Z
    .registers 4
    .param p1, "keyIndex"    # I

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 451
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    goto :goto_7
.end method

.method private isOnModifierKey(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method private isValidKeyIndex(I)Z
    .registers 5
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 424
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardLeft()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 425
    if-ltz p1, :cond_15

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_15

    .line 430
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 425
    goto :goto_14

    .line 426
    :cond_17
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardRight()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 427
    if-ltz p1, :cond_29

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysR:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_14

    :cond_29
    move v0, v1

    goto :goto_14

    .line 430
    :cond_2b
    if-ltz p1, :cond_35

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_14

    :cond_35
    move v0, v1

    goto :goto_14
.end method

.method private static keyCodePrintable(I)Ljava/lang/String;
    .registers 7
    .param p0, "primaryCode"    # I

    .prologue
    .line 1150
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, " modifier"

    .line 1151
    .local v0, "modifier":Ljava/lang/String;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_2f

    const-string v1, "%4d"

    :goto_11
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1150
    .end local v0    # "modifier":Ljava/lang/String;
    :cond_2c
    const-string v0, ""

    goto :goto_8

    .line 1151
    .restart local v0    # "modifier":Ljava/lang/String;
    :cond_2f
    const-string v1, "0x%02x"

    goto :goto_11
.end method

.method private onCancelEventInternal()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 922
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 923
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 924
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 925
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 926
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v0, :cond_1d

    .line 927
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 928
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 930
    :cond_1d
    return-void
.end method

.method private onDownEventInternal(IIJ)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 623
    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJZ)V

    .line 624
    return-void
.end method

.method private onDownEventInternal(IIJZ)V
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "primary"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v1

    .line 629
    .local v1, "keyIndex":I
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 631
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    .line 632
    if-eqz v0, :cond_1e

    .line 633
    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v5, -0x22b

    if-ne v4, v5, :cond_1e

    .line 634
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    .line 635
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 636
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mEditTouchProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    invoke-interface {v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;->touchDown()V

    .line 675
    :cond_1d
    :goto_1d
    return-void

    .line 642
    :cond_1e
    sget-object v4, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableModeChange()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 650
    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    if-nez v4, :cond_38

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->alwaysAllowsSlidingInput()Z

    move-result v4

    if-eqz v4, :cond_64

    :cond_38
    :goto_38
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    .line 652
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 653
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 654
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 655
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 656
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 657
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 663
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/pantech/inputmethod/keyboard/Key;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 664
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v1

    .line 666
    :cond_58
    if-eqz p5, :cond_66

    .line 667
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 672
    :goto_5d
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 673
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_1d

    :cond_64
    move v2, v3

    .line 650
    goto :goto_38

    .line 669
    :cond_66
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    goto :goto_5d
.end method

.method private onDownKey(IIJ)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 525
    iput-wide p3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDownTime:J

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method private onMoveKey(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method private onMoveKeyInternal(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 530
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 531
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 532
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method private onMoveToNewKey(III)I
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 540
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 541
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 542
    iput p3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .line 543
    return p1
.end method

.method private onUpEventInternal(IIJ)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 837
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 838
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 839
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 842
    move v1, p1

    .line 843
    .local v1, "keyX":I
    move v2, p2

    .line 849
    .local v2, "keyY":I
    :goto_19
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpKey(IIJ)I

    move-result v0

    .line 852
    .local v0, "keyIndex":I
    sget-object v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableModeChange()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 866
    :cond_25
    :goto_25
    return-void

    .line 846
    .end local v0    # "keyIndex":I
    .end local v1    # "keyX":I
    .end local v2    # "keyY":I
    :cond_26
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 847
    .restart local v1    # "keyX":I
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .restart local v2    # "keyY":I
    goto :goto_19

    .line 856
    .restart local v0    # "keyIndex":I
    :cond_2b
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 861
    iget-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v3, :cond_25

    .line 863
    iget-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    if-nez v3, :cond_25

    .line 864
    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    goto :goto_25
.end method

.method private onUpKey(IIJ)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 547
    iput-wide p3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mUpTime:J

    .line 548
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method private printTouchEvent(Ljava/lang/String;IIJ)V
    .registers 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1140
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p3, v6}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v4

    .line 1141
    .local v4, "keyIndex":I
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v1

    .line 1142
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v1, :cond_16

    const-string v0, "----"

    .line 1143
    .local v0, "code":Ljava/lang/String;
    :goto_f
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPreviousEventTime:J

    sub-long v2, p4, v6

    .line 1146
    .local v2, "delta":J
    iput-wide p4, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPreviousEventTime:J

    .line 1147
    return-void

    .line 1142
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "delta":J
    :cond_16
    iget v5, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->keyCodePrintable(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static setKeyDetector(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V
    .registers 6
    .param p0, "inputMode"    # I
    .param p1, "keyDetector"    # Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .prologue
    const/4 v3, 0x1

    .line 271
    const/4 v2, 0x5

    if-ne p0, v2, :cond_1c

    .line 272
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 273
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-direct {v1, p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 274
    iput-boolean v3, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_a

    .line 276
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_1c
    const/4 v2, 0x6

    if-ne p0, v2, :cond_37

    .line 277
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersR:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 278
    .restart local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-direct {v1, p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 279
    iput-boolean v3, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_25

    .line 282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_37
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 283
    .restart local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-direct {v1, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 285
    iput-boolean v3, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_3d

    .line 288
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_4f
    return-void
.end method

.method public static setKeyDetector(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V
    .registers 4
    .param p0, "keyDetector"    # Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .prologue
    .line 262
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 263
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 265
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_6

    .line 267
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_19
    return-void
.end method

.method private setKeyDetectorInner(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V
    .registers 5
    .param p1, "inputMode"    # I
    .param p2, "keyDetector"    # Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .prologue
    .line 406
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 407
    invoke-virtual {p2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 408
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1c

    .line 409
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysL:Ljava/util/List;

    .line 413
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    div-int/lit8 v0, v1, 0x4

    .line 414
    .local v0, "keyQuarterWidth":I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    .line 415
    return-void

    .line 410
    .end local v0    # "keyQuarterWidth":I
    :cond_1c
    const/4 v1, 0x6

    if-ne p1, v1, :cond_11

    .line 411
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysR:Ljava/util/List;

    goto :goto_11
.end method

.method private setKeyDetectorInner(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V
    .registers 4
    .param p1, "keyDetector"    # Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 398
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 399
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    .line 400
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    div-int/lit8 v0, v1, 0x4

    .line 401
    .local v0, "keyQuarterWidth":I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    .line 402
    return-void
.end method

.method public static setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V
    .registers 4
    .param p0, "listener"    # Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .prologue
    .line 248
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 249
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    iput-object p0, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    goto :goto_6

    .line 252
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_15
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 253
    .restart local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    iput-object p0, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    goto :goto_1b

    .line 255
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_2a
    sget-object v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTrackersR:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 256
    .restart local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    iput-object p0, v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    goto :goto_30

    .line 259
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_3f
    return-void
.end method

.method private setPressedKeyGraphics(I)V
    .registers 3
    .param p1, "keyIndex"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(IZ)V

    .line 486
    return-void
.end method

.method private setPressedKeyGraphics(IZ)V
    .registers 5
    .param p1, "keyIndex"    # I
    .param p2, "longPress"    # Z

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 490
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 491
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isKeyPreviewRequired(Lcom/pantech/inputmethod/keyboard/Key;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 492
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p1, p2, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->showKeyPreview(IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 494
    :cond_17
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->onPressed()V

    .line 495
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 497
    :cond_1f
    return-void
.end method

.method private setReleasedKeyGraphics(I)V
    .registers 4
    .param p1, "keyIndex"    # I

    .prologue
    .line 481
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(IJ)V

    .line 482
    return-void
.end method

.method private setReleasedKeyGraphics(IJ)V
    .registers 6
    .param p1, "keyIndex"    # I
    .param p2, "delay"    # J

    .prologue
    .line 472
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p0, p2, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 474
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 475
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->onReleased()V

    .line 476
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 478
    :cond_19
    return-void
.end method

.method private startLongPressTimer(I)V
    .registers 6
    .param p1, "keyIndex"    # I

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 968
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v0, :cond_7

    .line 991
    :cond_6
    :goto_6
    return-void

    .line 970
    :cond_7
    iget v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 971
    sget v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    if-lez v1, :cond_6

    .line 972
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 974
    :cond_19
    iget v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2c

    .line 975
    sget v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    if-lez v1, :cond_6

    .line 976
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 978
    :cond_2c
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    if-nez v1, :cond_6

    .line 984
    :cond_3a
    sget-object v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isInMomentarySwitchState()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 987
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 989
    :cond_4d
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6
.end method

.method private startRepeatKey(I)V
    .registers 6
    .param p1, "keyIndex"    # I

    .prologue
    .line 933
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 934
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_19

    iget-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mRepeatable:Z

    if-eqz v1, :cond_19

    .line 935
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 936
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->startKeyRepeatTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 937
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 941
    :goto_18
    return-void

    .line 939
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    goto :goto_18
.end method

.method private startSlidingKeyInput(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 3
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    if-nez v0, :cond_c

    .line 679
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 680
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 681
    return-void
.end method


# virtual methods
.method public getDownTime()J
    .registers 3

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDownTime:J

    return-wide v0
.end method

.method public getKey(I)Lcom/pantech/inputmethod/keyboard/Key;
    .registers 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 435
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardLeft()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 436
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/Key;

    .line 441
    :cond_17
    :goto_17
    return-object v0

    .line 437
    :cond_18
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardRight()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 438
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeysR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_17

    .line 441
    :cond_2f
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_17
.end method

.method public getKeyIndexOn(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method public getKeyOn(II)Lcom/pantech/inputmethod/keyboard/Key;
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1199
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v0

    .line 1200
    .local v0, "index":I
    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1201
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 1203
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getKeyPreviewText()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLastX()I
    .registers 2

    .prologue
    .line 513
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .registers 2

    .prologue
    .line 517
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastY:I

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .registers 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .registers 2

    .prologue
    .line 455
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnShiftKey(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 463
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 464
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_14

    iget v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onCancelEvent(IIJ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 897
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 898
    .local v0, "queue":Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_a

    .line 899
    invoke-virtual {v0, p0, p3, p4}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    .line 900
    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 902
    :cond_a
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 903
    return-void
.end method

.method public onCancelEventForSplit(IIJ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 910
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 911
    .local v0, "queue":Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_a

    .line 912
    invoke-virtual {v0, p0, p3, p4}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersClear(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    .line 913
    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 915
    :cond_a
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 916
    return-void
.end method

.method public onDirectInput(JIILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;I)V
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    .param p6, "keyIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 1164
    invoke-interface {p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v6

    .line 1165
    .local v6, "keyDetector":Lcom/pantech/inputmethod/keyboard/KeyDetector;
    iput-object v6, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 1166
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 1168
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 1169
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v1, :cond_1f

    .line 1170
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 1186
    :goto_1e
    return-void

    .line 1173
    :cond_1f
    iget-object v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_31

    .line 1174
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnTextInput(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 1175
    iget v0, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-direct {p0, v1, v0, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    .line 1185
    :cond_2b
    :goto_2b
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, p6, v4, v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(IJ)V

    goto :goto_1e

    .line 1177
    :cond_31
    iget v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 1178
    .local v2, "code":I
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 1179
    .local v3, "codes":[I
    aput v2, v3, v7

    move-object v0, p0

    move v4, p3

    move v5, p4

    .line 1180
    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/pantech/inputmethod/keyboard/Key;I[III)V

    .line 1181
    invoke-direct {p0, v1, v2, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    .line 1183
    const/16 v0, -0x72

    if-eq v2, v0, :cond_2b

    const/4 v0, 0x1

    invoke-direct {p0, p6, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(IZ)V

    goto :goto_2b
.end method

.method public onDirectInputA(JIILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;I)V
    .registers 8
    .param p1, "eventTime"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    .param p6, "keyIndex"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 1157
    .local v0, "prevKeyDetector":Lcom/pantech/inputmethod/keyboard/KeyDetector;
    invoke-virtual/range {p0 .. p6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDirectInput(JIILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;I)V

    .line 1158
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 1159
    return-void
.end method

.method public onDownEvent(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 579
    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;Z)V

    .line 580
    return-void
.end method

.method public onDownEvent(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;Z)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    .param p6, "primary"    # Z

    .prologue
    .line 587
    invoke-interface/range {p5 .. p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 588
    invoke-interface/range {p5 .. p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 589
    invoke-interface/range {p5 .. p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 590
    invoke-interface/range {p5 .. p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 593
    iget-wide v4, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mUpTime:J

    sub-long v10, p3, v4

    .line 594
    .local v10, "deltaT":J
    sget v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    int-to-long v4, v3

    cmp-long v3, v10, v4

    if-gez v3, :cond_61

    .line 595
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastX:I

    sub-int v9, p1, v3

    .line 596
    .local v9, "dx":I
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastY:I

    sub-int v12, p2, v3

    .line 597
    .local v12, "dy":I
    mul-int v3, v9, v9

    mul-int v4, v12, v12

    add-int v2, v3, v4

    .line 598
    .local v2, "distanceSquared":I
    sget v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    if-ge v2, v3, :cond_61

    .line 599
    sget-boolean v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v3, :cond_5d

    .line 600
    sget-object v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownEvent: ignore potential noise: time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " distance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_5d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 619
    .end local v2    # "distanceSquared":I
    .end local v9    # "dx":I
    .end local v12    # "dy":I
    :goto_60
    return-void

    .line 607
    :cond_61
    sget-object v13, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 608
    .local v13, "queue":Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v13, :cond_73

    .line 609
    invoke-direct/range {p0 .. p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 613
    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointers(J)V

    .line 615
    :cond_70
    invoke-virtual {v13, p0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->add(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    :cond_73
    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p6

    .line 618
    invoke-direct/range {v3 .. v8}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJZ)V

    goto :goto_60
.end method

.method public onLongPressed()V
    .registers 5

    .prologue
    .line 876
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(IJ)V

    .line 877
    return-void
.end method

.method public onLongPressed(I)V
    .registers 4
    .param p1, "keyIndex"    # I

    .prologue
    .line 880
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(IJ)V

    .line 881
    return-void
.end method

.method public onLongPressed(IJ)V
    .registers 6
    .param p1, "keyIndex"    # I
    .param p2, "delay"    # J

    .prologue
    .line 884
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 885
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(IJ)V

    .line 886
    sget-object v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 887
    .local v0, "queue":Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_d

    .line 888
    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 890
    :cond_d
    return-void
.end method

.method public onMoveEvent(IIJLandroid/view/MotionEvent;)V
    .registers 27
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v6, :cond_7

    .line 783
    :cond_6
    :goto_6
    return-void

    .line 689
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 690
    .local v10, "lastX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 691
    .local v11, "lastY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    move/from16 v17, v0

    .line 692
    .local v17, "oldKeyIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v16

    .line 693
    .local v16, "oldKey":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-direct/range {p0 .. p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v14

    .line 694
    .local v14, "keyIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v5

    .line 696
    .local v5, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz p5, :cond_4e

    .line 697
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    .line 699
    .local v18, "pointerCount":I
    if-eqz v5, :cond_4e

    iget v6, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v7, -0x22b

    if-ne v6, v7, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    if-eqz v6, :cond_4e

    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_4e

    .line 701
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    move-result-object v4

    .local v4, "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    move-wide/from16 v6, p3

    move/from16 v8, p1

    move/from16 v9, p2

    .line 702
    invoke-virtual/range {v4 .. v11}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveCursor(Lcom/pantech/inputmethod/keyboard/Key;JIIII)V

    goto :goto_6

    .line 708
    .end local v4    # "editTouchPad":Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    .end local v18    # "pointerCount":I
    :cond_4e
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v6

    if-eqz v6, :cond_137

    .line 709
    if-nez v16, :cond_7f

    .line 719
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/pantech/inputmethod/keyboard/Key;Z)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 720
    invoke-direct/range {p0 .. p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v14

    .line 721
    :cond_6b
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 722
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_6

    .line 724
    :cond_7f
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 730
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 731
    move-object/from16 v0, v16

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 734
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v6, :cond_df

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/pantech/inputmethod/keyboard/Key;Z)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 742
    invoke-direct/range {p0 .. p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v14

    .line 743
    :cond_ca
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto/16 :goto_6

    .line 752
    :cond_df
    sub-int v12, p1, v10

    .line 753
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 754
    .local v13, "dy":I
    mul-int v6, v12, v12

    mul-int v7, v13, v13

    add-int v15, v6, v7

    .line 755
    .local v15, "lastMoveSquared":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    if-lt v15, v6, :cond_129

    .line 756
    sget-boolean v6, Lcom/pantech/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v6, :cond_11d

    .line 757
    sget-object v6, Lcom/pantech/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v7, "onMoveEvent: sudden move is translated to up[%d,%d]/down[%d,%d] events"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v9

    const/4 v9, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_11d
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 760
    invoke-direct/range {p0 .. p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_6

    .line 762
    :cond_129
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 763
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto/16 :goto_6

    .line 768
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v15    # "lastMoveSquared":I
    :cond_137
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 772
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 773
    move-object/from16 v0, v16

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/pantech/inputmethod/keyboard/Key;IZ)V

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 776
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v6, :cond_177

    .line 777
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    goto/16 :goto_6

    .line 779
    :cond_177
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    goto/16 :goto_6
.end method

.method public onPhantomUpEvent(IIJ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 823
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 825
    return-void
.end method

.method public onPhantomUpEventClear(IIJ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 832
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 833
    return-void
.end method

.method public onRepeatKey(I)V
    .registers 5
    .param p1, "keyIndex"    # I

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 945
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v0, :cond_d

    .line 946
    iget v1, v0, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    iget v2, v0, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    invoke-direct {p0, p1, v1, v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    .line 948
    :cond_d
    return-void
.end method

.method public onShowMoreKeysPanel(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 872
    return-void
.end method

.method public onUpEvent(IIJ)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 789
    sget-object v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 791
    .local v1, "queue":Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v0

    .line 793
    .local v0, "keyIndex":I
    iget-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    if-eqz v2, :cond_1d

    .line 794
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->resetPosition()V

    .line 795
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mIsTouchPadTouched:Z

    .line 796
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mEditTouchProxy:Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;

    invoke-interface {v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;->touchUp()V

    .line 797
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 813
    :goto_1c
    return-void

    .line 801
    :cond_1d
    if-eqz v1, :cond_2b

    .line 802
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 806
    invoke-virtual {v1, p0, p3, p4}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    .line 810
    :goto_28
    invoke-virtual {v1, p0}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 812
    :cond_2b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    goto :goto_1c

    .line 808
    :cond_2f
    invoke-virtual {v1, p0, p3, p4}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersOlderThan(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    goto :goto_28
.end method

.method public processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 15
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J
    .param p6, "handler"    # Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .prologue
    .line 558
    packed-switch p1, :pswitch_data_24

    .line 575
    :goto_3
    :pswitch_3
    return-void

    .line 562
    :pswitch_4
    if-nez p1, :cond_10

    const/4 v7, 0x1

    :goto_7
    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;Z)V

    goto :goto_3

    :cond_10
    const/4 v7, 0x0

    goto :goto_7

    .line 566
    :pswitch_12
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_3

    .line 569
    :pswitch_16
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLandroid/view/MotionEvent;)V

    goto :goto_3

    .line 572
    :pswitch_1f
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_3

    .line 558
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_4
        :pswitch_12
        :pswitch_16
        :pswitch_1f
        :pswitch_3
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method

.method public setLongPressKeyTimeout(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 1189
    sput p1, Lcom/pantech/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    .line 1190
    return-void
.end method
