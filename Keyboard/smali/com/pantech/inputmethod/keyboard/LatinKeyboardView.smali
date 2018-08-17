.class public Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.super Lcom/pantech/inputmethod/keyboard/KeyboardView;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
.implements Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;,
        Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;,
        Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final ENABLE_CAPSLOCK_BY_DOUBLETAP:Z = false

.field private static final POPUPKEYBOARD_DELAY:I = 0x1770

.field private static final TAG:Ljava/lang/String;

.field private static mIsEditTouchPadTouched:Z


# instance fields
.field private final mConfigShowMiniKeyboardAtTouchedPoint:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private final mHasDistinctMultitouch:Z

.field private mIsGestureUsedAndLandscape:Z

.field private mIsScaleGesture:Z

.field protected mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private mKeyRepeatInterval:I

.field private final mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

.field private mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private final mMoreKeyboardBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

.field private mMoreKeyboardContainer:Landroid/view/View;

.field private final mMoreKeyboardController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mMoreKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

.field private final mMoreKeyboardWindow:Landroid/widget/PopupWindow;

.field private mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

.field private final mMoreKeysPanelCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreKeysPanelPointerTrackerId:I

.field private final mMoreSettingsBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

.field private mMoreSettingsContainer:Landroid/view/View;

.field private mMoreSettingsView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

.field final mMoreWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldKeyIndex:I

.field private mOldPointerCount:I

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleListener:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

.field private mSwipeTracker:Lcom/pantech/inputmethod/keyboard/SwipeTracker;

.field private final mTouchScreenRegulator:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

.field popupKeyboardType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-class v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    .line 82
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsEditTouchPadTouched:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 395
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 399
    invoke-direct/range {p0 .. p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v18, Ljava/util/WeakHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    .line 114
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    .line 123
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 133
    new-instance v18, Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    invoke-direct/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/SwipeTracker;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    .line 142
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsScaleGesture:Z

    .line 145
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsGestureUsedAndLandscape:Z

    .line 152
    new-instance v18, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    .line 1475
    new-instance v18, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$7;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 1482
    new-instance v18, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$8;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 401
    new-instance v18, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 404
    .local v14, "res":Landroid/content/res/Resources;
    const v18, 0x7f07000a

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    .line 406
    const v18, 0x7f0a002b

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 407
    .local v11, "keyHysteresisDistance":F
    new-instance v18, Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/pantech/inputmethod/keyboard/KeyDetector;-><init>(F)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 409
    const/4 v5, 0x1

    .line 410
    .local v5, "ignoreMultitouch":Z
    new-instance v18, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;)V

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v18 .. v22}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    .line 416
    const v18, 0x7f0c0058

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->init(ZLandroid/content/Context;)V

    .line 419
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 422
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 423
    .local v6, "inflater":Landroid/view/LayoutInflater;
    new-instance v12, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 424
    .local v12, "moreWindow":Landroid/widget/PopupWindow;
    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 426
    new-instance v18, Landroid/graphics/drawable/ColorDrawable;

    const v19, 0x106000d

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 428
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 429
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 430
    new-instance v18, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 435
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    if-eqz v18, :cond_175

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    new-instance v19, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$2;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 456
    :cond_175
    const-string v18, "com.pantech.inputmethod.skyime_preferences"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 457
    .local v16, "sp":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v17

    .line 458
    .local v17, "themeType":I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1af

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1af

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1af

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_392

    :cond_1af
    const/4 v8, 0x1

    .line 460
    .local v8, "isDarkPopupIcon":Z
    :goto_1b0
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_395

    const/4 v7, 0x1

    .line 462
    .local v7, "isDarkLightPopupIcon":Z
    :goto_1b9
    if-eqz v17, :cond_233

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_233

    const/16 v18, 0x13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_398

    :cond_233
    const/4 v10, 0x1

    .line 467
    .local v10, "isLightPopupIcon":Z
    :goto_234
    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26c

    const/16 v18, 0x13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_39b

    :cond_26c
    const/4 v9, 0x1

    .line 472
    .local v9, "isLightDarkPopupIcon":Z
    :goto_26d
    const v18, 0x7f030011

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000bd

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .line 476
    const v18, 0x7f030012

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000c1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000be

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 480
    .local v3, "closeBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000be

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 481
    .local v4, "closeBtn2":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000bf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 483
    .local v13, "optionBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1000c0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 485
    .local v15, "settingsPopupTitle":Landroid/widget/TextView;
    if-eqz v8, :cond_3e6

    .line 486
    if-eqz v3, :cond_30f

    .line 487
    if-eqz v7, :cond_39e

    .line 488
    const v18, 0x7f0200e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_30f
    :goto_30f
    if-eqz v13, :cond_323

    .line 494
    if-eqz v7, :cond_3b0

    .line 495
    const v18, 0x7f020111

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    :cond_323
    :goto_323
    if-eqz v4, :cond_337

    .line 502
    if-eqz v7, :cond_3c2

    .line 503
    const v18, 0x7f0200e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    :cond_337
    :goto_337
    if-eqz v15, :cond_34b

    .line 509
    if-eqz v7, :cond_3d4

    .line 510
    const v18, 0x7f080018

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    :cond_34b
    :goto_34b
    new-instance v18, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mScaleListener:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

    .line 552
    new-instance v18, Landroid/view/ScaleGestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mScaleListener:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 554
    new-instance v18, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    .line 555
    new-instance v18, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    .line 559
    return-void

    .line 458
    .end local v3    # "closeBtn":Landroid/widget/Button;
    .end local v4    # "closeBtn2":Landroid/widget/Button;
    .end local v7    # "isDarkLightPopupIcon":Z
    .end local v8    # "isDarkPopupIcon":Z
    .end local v9    # "isLightDarkPopupIcon":Z
    .end local v10    # "isLightPopupIcon":Z
    .end local v13    # "optionBtn":Landroid/widget/Button;
    .end local v15    # "settingsPopupTitle":Landroid/widget/TextView;
    :cond_392
    const/4 v8, 0x0

    goto/16 :goto_1b0

    .line 460
    .restart local v8    # "isDarkPopupIcon":Z
    :cond_395
    const/4 v7, 0x0

    goto/16 :goto_1b9

    .line 462
    .restart local v7    # "isDarkLightPopupIcon":Z
    :cond_398
    const/4 v10, 0x0

    goto/16 :goto_234

    .line 467
    .restart local v10    # "isLightPopupIcon":Z
    :cond_39b
    const/4 v9, 0x0

    goto/16 :goto_26d

    .line 490
    .restart local v3    # "closeBtn":Landroid/widget/Button;
    .restart local v4    # "closeBtn2":Landroid/widget/Button;
    .restart local v9    # "isLightDarkPopupIcon":Z
    .restart local v13    # "optionBtn":Landroid/widget/Button;
    .restart local v15    # "settingsPopupTitle":Landroid/widget/TextView;
    :cond_39e
    const v18, 0x7f0200e4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_30f

    .line 497
    :cond_3b0
    const v18, 0x7f020110

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_323

    .line 505
    :cond_3c2
    const v18, 0x7f0200e4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_337

    .line 513
    :cond_3d4
    const v18, 0x7f080019

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_34b

    .line 518
    :cond_3e6
    if-eqz v3, :cond_3fa

    .line 519
    if-eqz v9, :cond_438

    .line 520
    const v18, 0x7f0200e4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 525
    :cond_3fa
    :goto_3fa
    if-eqz v13, :cond_40e

    .line 526
    if-eqz v9, :cond_449

    .line 527
    const v18, 0x7f020110

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 533
    :cond_40e
    :goto_40e
    if-eqz v4, :cond_422

    .line 534
    if-eqz v9, :cond_45a

    .line 535
    const v18, 0x7f0200e4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_422
    :goto_422
    if-eqz v15, :cond_34b

    .line 541
    if-eqz v9, :cond_46b

    .line 542
    const v18, 0x7f080019

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_34b

    .line 522
    :cond_438
    const v18, 0x7f0200e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3fa

    .line 529
    :cond_449
    const v18, 0x7f020111

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40e

    .line 537
    :cond_45a
    const v18, 0x7f0200e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_422

    .line 545
    :cond_46b
    const v18, 0x7f080018

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_34b
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimKeyboard(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsScaleGesture:Z

    return p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/skyime/MoreKeyboardView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/SwipeTracker;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/PointerTracker;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p1, "x1"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->onDoubleTapShiftKey(Lcom/pantech/inputmethod/keyboard/PointerTracker;Z)V

    return-void
.end method

.method private dimKeyboard(Z)V
    .registers 4
    .param p1, "dim"    # Z

    .prologue
    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(ZLandroid/graphics/Rect;)V

    .line 1610
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1611
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->dimKeyboard(Z)V

    .line 1613
    :cond_12
    return-void
.end method

.method private dismissMoreKeyboard()Z
    .registers 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1518
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 1520
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1521
    const/4 v0, 0x1

    .line 1523
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getMiniKeyboardKeyId(Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    const/4 v4, 0x0

    .line 1180
    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 1181
    const/4 v0, 0x0

    .line 1189
    :cond_6
    :goto_6
    return-object v0

    .line 1182
    :cond_7
    const/4 v0, 0x0

    .line 1183
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 1187
    :cond_6c
    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardLeft()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 922
    const/4 v0, 0x5

    invoke-static {v0, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(IILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 927
    :goto_11
    return-object v0

    .line 923
    :cond_12
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardRight()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 924
    const/4 v0, 0x6

    invoke-static {v0, p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(IILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    goto :goto_11

    .line 927
    :cond_24
    invoke-static {p1, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    goto :goto_11
.end method

.method private static getRatio(Landroid/content/res/TypedArray;I)F
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x3e8

    .line 1472
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private invokeCodeInput(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v1, -0x1

    .line 850
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 853
    return-void
.end method

.method private invokeCodeInput(I[I)V
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v1, -0x1

    .line 857
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(III)V

    .line 860
    return-void
.end method

.method private invokeCustomRequest(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    move-result v0

    return v0
.end method

.method private invokeReleaseKey(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 872
    return-void
.end method

.method private onDoubleTapShiftKey(Lcom/pantech/inputmethod/keyboard/PointerTracker;Z)V
    .registers 4
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "ignore"    # Z

    .prologue
    .line 724
    if-eqz p2, :cond_8

    const/16 v0, -0x62

    .line 726
    .local v0, "primaryCode":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 727
    return-void

    .line 724
    .end local v0    # "primaryCode":I
    :cond_8
    const/4 v0, -0x3

    goto :goto_4
.end method

.method private openMiniKeyboardIfRequired(ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z
    .registers 7
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x0

    .line 693
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    if-nez v2, :cond_6

    .line 713
    :cond_5
    :goto_5
    return v1

    .line 698
    :cond_6
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-nez v2, :cond_5

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "parentKey":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-virtual {p2, p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_5

    .line 708
    iget v2, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v3, -0x75

    if-ne v2, v3, :cond_1d

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Key;->getHintIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 713
    :cond_1d
    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->onLongPress(Lcom/pantech/inputmethod/keyboard/Key;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    goto :goto_5
.end method

.method private openMoreKeysPanel(Lcom/pantech/inputmethod/keyboard/Key;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z
    .registers 13
    .param p1, "parentKey"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "keyIndex"    # I
    .param p3, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const/4 v8, 0x1

    .line 875
    sget-boolean v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMoreKeysPanel: keyIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1d
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getMiniKeyboardKeyId(Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "moreKeyId":Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 880
    invoke-virtual {p3, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(I)V

    .line 881
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->onReleased()V

    .line 882
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 884
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v1, v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isFloatingMode(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 885
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showFloatingMoreKeyboard(Ljava/lang/String;)V

    :goto_3d
    move v1, v8

    .line 916
    :goto_3e
    return v1

    .line 887
    :cond_3f
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z

    goto :goto_3d

    .line 892
    :cond_43
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    .line 894
    .local v6, "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    if-nez v6, :cond_5a

    .line 895
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->onCreateMoreKeysPanel(Lcom/pantech/inputmethod/keyboard/Key;)Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    move-result-object v6

    .line 896
    if-nez v6, :cond_55

    .line 897
    const/4 v1, 0x0

    goto :goto_3e

    .line 898
    :cond_55
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :cond_5a
    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_92

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ne v1, v8, :cond_92

    .line 903
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v4

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v5

    move-object v1, p3

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDirectInputA(JIILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;I)V

    :goto_7e
    move v1, v8

    .line 913
    goto :goto_3e

    .line 908
    :cond_80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v4

    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v5

    move-object v1, p3

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDirectInput(JIILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;I)V

    goto :goto_7e

    :cond_92
    move v1, v8

    .line 916
    goto :goto_3e
.end method

.method private sendBroadcastLongInput(I)V
    .registers 6
    .param p1, "primaryCode"    # I

    .prologue
    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.skyime.action.LONG_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.skyime.extra.LONG_INPUT_CODE"

    int-to-char v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 866
    sget-boolean v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    if-eqz v1, :cond_29

    sget-object v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastLongInput: primaryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_29
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

.method private setLongPressDuration(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1195
    .local v0, "duration":I
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1196
    mul-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setLongPressKeyTimeout(I)V

    .line 1201
    :goto_1a
    return-void

    .line 1198
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setLongPressKeyTimeout(I)V

    goto :goto_1a
.end method

.method private showFloatingMoreKeyboard(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 1529
    const/16 v0, -0x191

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 1537
    :cond_16
    :goto_16
    return-void

    .line 1530
    :cond_17
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 1531
    const/16 v0, -0x192

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    goto :goto_16

    .line 1532
    :cond_2e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 1533
    const/16 v0, -0x193

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    goto :goto_16

    .line 1534
    :cond_45
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 1535
    const/16 v0, -0x194

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    goto :goto_16
.end method

.method private showMoreKeyboard(Ljava/lang/String;)Z
    .registers 44
    .param p1, "popupKeyboardId"    # Ljava/lang/String;

    .prologue
    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v40

    .line 1205
    .local v40, "stripWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    move-object/from16 v18, v0

    .line 1206
    .local v18, "container":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    move-object/from16 v36, v0

    .line 1207
    .local v36, "settingsContainer":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, v40, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v31, v3, v4

    .line 1209
    .local v31, "maxWidth":I
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, v40, v3

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v37, v3, v4

    .line 1211
    .local v37, "settingsMaxWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    .line 1212
    .local v15, "builder":Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsBuilder:Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    move-object/from16 v35, v0

    .line 1213
    .local v35, "settingsBuilder":Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v0, v3, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    move/from16 v34, v0

    .line 1214
    .local v34, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v38, v0

    .line 1215
    .local v38, "settingsPopupWidth":I
    const/16 v30, 0x3

    .line 1216
    .local v30, "maxColumn":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1217
    const/4 v13, 0x0

    .line 1218
    .local v13, "attrs":Landroid/util/AttributeSet;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->SuggestionsView:[I

    const v7, 0x7f010007

    const v8, 0x7f0e0024

    invoke-virtual {v3, v13, v4, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1220
    .local v11, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xc

    invoke-static {v11, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v32

    .line 1222
    .local v32, "minWidth":F
    const/4 v10, 0x0

    .line 1224
    .local v10, "isSettingsPopup":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    const v4, 0x7f1000bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1225
    .local v33, "optionButton":Landroid/view/View;
    if-eqz v33, :cond_7e

    .line 1226
    const/4 v3, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->popupKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b9

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 1232
    .local v24, "emailList":[Ljava/lang/String;
    if-eqz v24, :cond_c9

    .line 1233
    move-object/from16 v12, v24

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_a9
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_c9

    aget-object v23, v12, v26

    .line 1234
    .local v23, "email":Ljava/lang/String;
    if-eqz v23, :cond_c6

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-static/range {v23 .. v23}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-direct {v4, v7, v8}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_c6
    add-int/lit8 v26, v26, 0x1

    goto :goto_a9

    .line 1241
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v23    # "email":Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v29    # "len$":I
    :cond_c9
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_1b5

    .line 1242
    const/16 v30, 0x2

    .line 1379
    .end local v24    # "emailList":[Ljava/lang/String;
    :cond_d0
    :goto_d0
    const/4 v14, 0x0

    .line 1380
    .local v14, "btnWidth":I
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_e1

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1383
    :cond_e1
    new-instance v2, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    move/from16 v0, v31

    int-to-float v3, v0

    mul-float v3, v3, v32

    float-to-int v7, v3

    const/4 v8, 0x6

    move-object v3, v15

    move-object v4, v2

    move/from16 v5, v30

    move/from16 v6, v31

    move v9, v14

    invoke-virtual/range {v3 .. v10}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIIIZ)Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    .line 1392
    new-instance v2, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    const/4 v8, 0x6

    move-object/from16 v3, v35

    move-object v4, v2

    move/from16 v5, v30

    move/from16 v6, v37

    move/from16 v7, v38

    move v9, v14

    invoke-virtual/range {v3 .. v10}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIIIZ)Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-virtual {v15}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->build()Lcom/pantech/inputmethod/skyime/MoreKeyboard;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-virtual/range {v35 .. v35}, Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;->build()Lcom/pantech/inputmethod/skyime/MoreKeyboard;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardContainer:Landroid/view/View;

    const v4, 0x7f1000be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1405
    .local v16, "closeButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsContainer:Landroid/view/View;

    const v4, 0x7f1000be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1406
    .local v17, "closeButton2":Landroid/view/View;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1408
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1410
    if-eqz v16, :cond_168

    .line 1411
    new-instance v3, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1424
    :cond_168
    if-eqz v17, :cond_178

    .line 1425
    new-instance v3, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$6;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1438
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .line 1439
    .local v2, "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    if-eqz v10, :cond_182

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreSettingsView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .line 1441
    :cond_182
    div-int/lit8 v5, v40, 0x2

    .line 1442
    .local v5, "pointX":I
    const/4 v6, 0x0

    .line 1447
    .local v6, "pointY":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/view/WindowManager;

    .line 1448
    .local v41, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v41 .. v41}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    .line 1449
    .local v22, "dsp":Landroid/view/Display;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v4

    sub-int v6, v3, v4

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v3

    if-eqz v3, :cond_3be

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMoveMode()Z

    move-result v3

    if-eqz v3, :cond_3be

    .line 1452
    const/4 v3, 0x0

    .line 1463
    .end local v2    # "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    .end local v5    # "pointX":I
    .end local v6    # "pointY":I
    .end local v14    # "btnWidth":I
    .end local v16    # "closeButton":Landroid/view/View;
    .end local v17    # "closeButton2":Landroid/view/View;
    .end local v22    # "dsp":Landroid/view/Display;
    .end local v41    # "wm":Landroid/view/WindowManager;
    :goto_1b4
    return v3

    .line 1244
    .restart local v24    # "emailList":[Ljava/lang/String;
    :cond_1b5
    const/16 v30, 0x4

    goto/16 :goto_d0

    .line 1246
    .end local v24    # "emailList":[Ljava/lang/String;
    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->popupKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_204

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 1248
    .local v21, "domainList":[Ljava/lang/String;
    if-eqz v21, :cond_d0

    .line 1249
    move-object/from16 v12, v21

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_1e4
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_d0

    aget-object v20, v12, v26

    .line 1250
    .local v20, "domain":Ljava/lang/String;
    if-eqz v20, :cond_201

    .line 1251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-static/range {v20 .. v20}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-direct {v4, v7, v8}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_201
    add-int/lit8 v26, v26, 0x1

    goto :goto_1e4

    .line 1256
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v20    # "domain":Ljava/lang/String;
    .end local v21    # "domainList":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v29    # "len$":I
    :cond_204
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->popupKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2ad

    .line 1257
    const/16 v3, 0xe

    invoke-static {v11, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v32

    .line 1259
    const/16 v30, 0x4

    .line 1263
    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1264
    .restart local v21    # "domainList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mContext:Landroid/content/Context;

    const-string v4, "com.pantech.inputmethod.skyime_preferences"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v39

    .line 1265
    .local v39, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v19

    .line 1267
    .local v19, "customList":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_244
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_25d

    .line 1268
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v25

    .line 1267
    add-int/lit8 v25, v25, 0x1

    goto :goto_244

    .line 1272
    :cond_25d
    if-eqz v21, :cond_286

    .line 1273
    move-object/from16 v12, v21

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_266
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_286

    aget-object v20, v12, v26

    .line 1274
    .restart local v20    # "domain":Ljava/lang/String;
    if-eqz v20, :cond_283

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-static/range {v20 .. v20}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-direct {v4, v7, v8}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_283
    add-int/lit8 v26, v26, 0x1

    goto :goto_266

    .line 1283
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v20    # "domain":Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v29    # "len$":I
    :cond_286
    if-eqz v33, :cond_d0

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isNoSettingsKey()Z

    move-result v3

    if-eqz v3, :cond_2a6

    .line 1285
    const/4 v3, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    :goto_298
    new-instance v3, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d0

    .line 1287
    :cond_2a6
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_298

    .line 1311
    .end local v19    # "customList":Ljava/lang/String;
    .end local v21    # "domainList":[Ljava/lang/String;
    .end local v25    # "i":I
    .end local v39    # "sp":Landroid/content/SharedPreferences;
    :cond_2ad
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->popupKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3bb

    .line 1312
    const/4 v10, 0x1

    .line 1314
    const/16 v30, 0x3

    .line 1319
    const/16 v3, 0xd

    invoke-static {v11, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v32

    .line 1322
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isNoVoiceKey()Z

    move-result v3

    if-eqz v3, :cond_2fc

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1333
    :cond_2fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isNoSettingsKey()Z

    move-result v3

    if-eqz v3, :cond_326

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1339
    :cond_326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isNumberPhoneMode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_341

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1346
    :cond_341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isWebViewType()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35c

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1352
    :cond_35c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_379

    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1358
    :cond_379
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d0

    .line 1362
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_38e

    .line 1363
    const-string v3, "close"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_38e
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_d0

    .line 1368
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_399
    :goto_399
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1369
    .local v27, "item":Ljava/lang/String;
    if-eqz v27, :cond_399

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreWordList:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-static/range {v27 .. v27}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-direct {v4, v7, v8}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_399

    .line 1376
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v27    # "item":Ljava/lang/String;
    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3bb
    const/4 v3, 0x0

    goto/16 :goto_1b4

    .line 1455
    .restart local v2    # "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    .restart local v5    # "pointX":I
    .restart local v6    # "pointY":I
    .restart local v14    # "btnWidth":I
    .restart local v16    # "closeButton":Landroid/view/View;
    .restart local v17    # "closeButton2":Landroid/view/View;
    .restart local v22    # "dsp":Landroid/view/Display;
    .restart local v41    # "wm":Landroid/view/WindowManager;
    :cond_3be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-object/from16 v3, p0

    move/from16 v9, v34

    invoke-interface/range {v2 .. v9}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;I)V

    .line 1458
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimKeyboard(Z)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    const-wide/16 v8, 0x1770

    invoke-virtual {v3, v8, v9}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startMoreKeyboardTimer(J)V

    .line 1461
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeyboardView:Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 1463
    const/4 v3, 0x1

    goto/16 :goto_1b4
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelAllMessages()V

    .line 688
    invoke-super {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 689
    return-void
.end method

.method public closing()V
    .registers 2

    .prologue
    .line 1114
    invoke-super {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1115
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    .line 1116
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1117
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeyboard()Z

    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1166
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1167
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 1168
    .local v0, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    .line 1172
    .end local v0    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1131
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->reset()V

    .line 1132
    const/4 v2, 0x1

    .line 1133
    .local v2, "tryGC":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x5

    if-ge v1, v3, :cond_21

    if-eqz v2, :cond_21

    .line 1135
    :try_start_e
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->draw(Landroid/graphics/Canvas;)V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_11} :catch_15

    .line 1136
    const/4 v2, 0x0

    .line 1133
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1137
    :catch_15
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_12

    .line 1141
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_21
    return-void
.end method

.method public getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 585
    return-object p0
.end method

.method public getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
    .registers 1

    .prologue
    .line 1627
    return-object p0
.end method

.method public getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .registers 2

    .prologue
    .line 939
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    return v0
.end method

.method public getPopupKeyboardType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->popupKeyboardType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    move-result v0

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .registers 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v0, :cond_6

    .line 932
    const/4 v0, 0x1

    .line 934
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isAnyInSlidingKeyInput()Z

    move-result v0

    goto :goto_5
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method protected onCreateMoreKeysPanel(Lcom/pantech/inputmethod/keyboard/Key;)Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    .registers 9
    .param p1, "parentKey"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 731
    iget-object v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    .line 779
    :goto_6
    return-object v2

    .line 734
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 736
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_1d

    .line 737
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 739
    :cond_1d
    const v4, 0x7f1000bc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    .line 741
    .local v2, "miniKeyboardView":Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 742
    .local v3, "parentKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    new-instance v4, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;

    iget v5, v3, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    invoke-direct {v4, p0, v5, p1, v3}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;ILcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->build()Lcom/pantech/inputmethod/keyboard/MiniKeyboard;

    move-result-object v1

    .line 745
    .local v1, "miniKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v2, :cond_42

    .line 746
    invoke-virtual {v2, v1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 747
    new-instance v4, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$3;

    invoke-direct {v4, p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$3;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V

    invoke-virtual {v2, v4}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 776
    :cond_42
    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    goto :goto_6
.end method

.method public onLongEvent(Landroid/view/MotionEvent;Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 1643
    invoke-virtual {p2}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 1644
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 1645
    .local v3, "y":I
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v1

    .line 1646
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v0

    .line 1648
    .local v0, "newKeyIndex":I
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    .line 1649
    return-void
.end method

.method protected onLongPress(Lcom/pantech/inputmethod/keyboard/Key;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z
    .registers 11
    .param p1, "parentKey"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "keyIndex"    # I
    .param p3, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const/4 v3, 0x1

    .line 796
    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    if-eqz v4, :cond_2b

    .line 797
    sget-object v4, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongPress: label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_2b
    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 800
    .local v2, "primaryCode":I
    iget-object v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_40

    iget-object v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v3, :cond_40

    .line 801
    iget-object v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 803
    :cond_40
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 804
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    instance-of v4, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    if-eqz v4, :cond_87

    move-object v1, v0

    .line 805
    check-cast v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    .line 808
    .local v1, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    const/16 v4, 0x31

    if-lt v2, v4, :cond_60

    const/16 v4, 0x39

    if-gt v2, v4, :cond_60

    .line 809
    invoke-virtual {p3, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(I)V

    .line 810
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 811
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    .line 812
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->sendBroadcastLongInput(I)V

    .line 841
    .end local v1    # "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :goto_5f
    return v3

    .line 815
    .restart local v1    # "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :cond_60
    const/16 v4, 0x30

    if-ne v2, v4, :cond_73

    .line 816
    invoke-virtual {p3, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(I)V

    .line 818
    const/16 v4, 0x2b

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 819
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    .line 820
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->sendBroadcastLongInput(I)V

    goto :goto_5f

    .line 823
    :cond_73
    const/4 v4, -0x1

    if-ne v2, v4, :cond_87

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 824
    invoke-virtual {p3, p2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onLongPressed(I)V

    .line 825
    const/4 v4, -0x3

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 826
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    goto :goto_5f

    .line 841
    .end local v1    # "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :cond_87
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->openMoreKeysPanel(Lcom/pantech/inputmethod/keyboard/Key;ILcom/pantech/inputmethod/keyboard/PointerTracker;)Z

    move-result v3

    goto :goto_5f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 944
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez p1, :cond_b

    .line 968
    :cond_a
    :goto_a
    return v0

    .line 949
    :cond_b
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMoveMode()Z

    move-result v1

    if-eq v1, v2, :cond_a

    .line 964
    :cond_1b
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsGestureUsedAndLandscape:Z

    if-ne v0, v2, :cond_24

    .line 965
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 968
    :cond_24
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 32
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 972
    sget-boolean v8, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->DEBUG:Z

    if-eqz v8, :cond_20

    .line 973
    sget-object v8, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMotionEvent action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    if-nez v8, :cond_64

    const/16 v26, 0x1

    .line 976
    .local v26, "nonDistinctMultitouch":Z
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 977
    .local v9, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v28

    .line 978
    .local v28, "pointerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    move/from16 v27, v0

    .line 981
    .local v27, "oldPointerCount":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsScaleGesture:Z

    const/4 v10, 0x1

    if-ne v8, v10, :cond_67

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v29

    .line 983
    .local v29, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 984
    .local v21, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 985
    .local v3, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual {v3, v8, v10, v14, v15}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onCancelEventForSplit(IIJ)V

    .line 986
    const/4 v8, 0x0

    .line 1092
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .end local v21    # "id":I
    .end local v29    # "pointerIndex":I
    :goto_63
    return v8

    .line 975
    .end local v9    # "action":I
    .end local v26    # "nonDistinctMultitouch":Z
    .end local v27    # "oldPointerCount":I
    .end local v28    # "pointerCount":I
    :cond_64
    const/16 v26, 0x0

    goto :goto_28

    .line 989
    .restart local v9    # "action":I
    .restart local v26    # "nonDistinctMultitouch":Z
    .restart local v27    # "oldPointerCount":I
    .restart local v28    # "pointerCount":I
    :cond_67
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 990
    if-nez v9, :cond_76

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    invoke-virtual {v8}, Lcom/pantech/inputmethod/keyboard/SwipeTracker;->clear()V

    .line 991
    :cond_76
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/pantech/inputmethod/keyboard/SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/pantech/inputmethod/keyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 998
    if-eqz v26, :cond_8d

    const/4 v8, 0x1

    move/from16 v0, v28

    if-le v0, v8, :cond_8d

    const/4 v8, 0x1

    move/from16 v0, v27

    if-le v0, v8, :cond_8d

    .line 999
    const/4 v8, 0x1

    goto :goto_63

    .line 1003
    :cond_8d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-nez v8, :cond_bf

    sget-boolean v8, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsEditTouchPadTouched:Z

    if-nez v8, :cond_bf

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v8, :cond_bf

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I

    move-result v8

    invoke-static {v8}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews(I)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 1012
    const/4 v8, 0x1

    goto :goto_63

    .line 1014
    :cond_bf
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 1015
    .local v6, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    .line 1016
    .local v22, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 1018
    .restart local v21    # "id":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v8, :cond_12c

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    move/from16 v0, v21

    if-ne v0, v8, :cond_12c

    .line 1019
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-interface {v8, v10}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v4

    .line 1020
    .local v4, "x":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-interface {v8, v10}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v5

    .line 1025
    .local v5, "y":I
    :goto_ff
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isInKeyRepeat()Z

    move-result v8

    if-eqz v8, :cond_123

    .line 1026
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 1030
    .restart local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    const/4 v8, 0x1

    move/from16 v0, v28

    if-le v0, v8, :cond_123

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v8

    if-nez v8, :cond_123

    .line 1031
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 1035
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_123
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v8, :cond_13f

    .line 1036
    const/4 v8, 0x1

    goto/16 :goto_63

    .line 1022
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_12c
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 1023
    .restart local v4    # "x":I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v5, v8

    .restart local v5    # "y":I
    goto :goto_ff

    .line 1043
    :cond_13f
    if-eqz v26, :cond_1d3

    .line 1045
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 1046
    .restart local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    const/4 v8, 0x1

    move/from16 v0, v28

    if-ne v0, v8, :cond_16c

    const/4 v8, 0x2

    move/from16 v0, v27

    if-ne v0, v8, :cond_16c

    .line 1051
    invoke-virtual {v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v25

    .line 1052
    .local v25, "newKeyIndex":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    move/from16 v0, v25

    if-eq v8, v0, :cond_169

    move-object/from16 v8, p0

    .line 1053
    invoke-virtual/range {v3 .. v8}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 1054
    const/4 v8, 0x1

    if-ne v9, v8, :cond_169

    .line 1055
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 1070
    .end local v25    # "newKeyIndex":I
    :cond_169
    :goto_169
    const/4 v8, 0x1

    goto/16 :goto_63

    .line 1057
    :cond_16c
    const/4 v8, 0x2

    move/from16 v0, v28

    if-ne v0, v8, :cond_192

    const/4 v8, 0x1

    move/from16 v0, v27

    if-ne v0, v8, :cond_192

    .line 1060
    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v23

    .line 1061
    .local v23, "lastX":I
    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v24

    .line 1062
    .local v24, "lastY":I
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    .line 1063
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1, v6, v7}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_169

    .line 1064
    .end local v23    # "lastX":I
    .end local v24    # "lastY":I
    :cond_192
    const/4 v8, 0x1

    move/from16 v0, v28

    if-ne v0, v8, :cond_1a6

    const/4 v8, 0x1

    move/from16 v0, v27

    if-ne v0, v8, :cond_1a6

    move-object v8, v3

    move v10, v4

    move v11, v5

    move-wide v12, v6

    move-object/from16 v14, p0

    .line 1065
    invoke-virtual/range {v8 .. v14}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_169

    .line 1067
    :cond_1a6
    sget-object v8, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (old "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    .line 1073
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_1d3
    const/4 v8, 0x2

    if-ne v9, v8, :cond_22c

    .line 1074
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d7
    move/from16 v0, v28

    if-ge v2, v0, :cond_246

    .line 1075
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 1077
    .restart local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v8, :cond_21d

    iget v8, v3, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPointerId:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v8, v10, :cond_21d

    .line 1079
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-interface {v8, v10}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v12

    .line 1080
    .local v12, "px":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-interface {v8, v10}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v13

    .local v13, "py":I
    :goto_213
    move-object v11, v3

    move-wide v14, v6

    move-object/from16 v16, p1

    .line 1085
    invoke-virtual/range {v11 .. v16}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJLandroid/view/MotionEvent;)V

    .line 1074
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d7

    .line 1082
    .end local v12    # "px":I
    .end local v13    # "py":I
    :cond_21d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v12, v8

    .line 1083
    .restart local v12    # "px":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v13, v8

    .restart local v13    # "py":I
    goto :goto_213

    .line 1088
    .end local v2    # "i":I
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .end local v12    # "px":I
    .end local v13    # "py":I
    :cond_22c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 1089
    .restart local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setLongPressDuration(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    move-object v14, v3

    move v15, v9

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, p0

    .line 1090
    invoke-virtual/range {v14 .. v20}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 1092
    .end local v3    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_246
    const/4 v8, 0x1

    goto/16 :goto_63
.end method

.method public resetAllKey()V
    .registers 2

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews(I)V

    .line 1621
    return-void
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 6
    .param p1, "previewEnabled"    # Z
    .param p2, "delay"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 595
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    instance-of v2, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    if-eqz v2, :cond_1c

    move-object v1, v0

    .line 596
    check-cast v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    .line 597
    .local v1, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isNumberKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 605
    :cond_17
    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 610
    .end local v1    # "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :goto_1b
    return-void

    .line 609
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    goto :goto_1b
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 10
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 624
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 625
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mVerticalCorrection:F

    add-float/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 627
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    iget v3, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setProximityThreshold(I)V

    .line 630
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyDetector(ILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 632
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v2, p1}, Lcom/pantech/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 633
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 636
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mContext:Landroid/content/Context;

    const-string v3, "com.pantech.inputmethod.skyime_preferences"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 637
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getUseGesture(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v2

    if-ne v2, v7, :cond_5d

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5d

    .line 641
    iput-boolean v7, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsGestureUsedAndLandscape:Z

    .line 655
    :goto_55
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setKeyboard()V

    .line 656
    return-void

    .line 643
    :cond_5d
    iput-boolean v6, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsGestureUsedAndLandscape:Z

    goto :goto_55
.end method

.method public setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 568
    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 569
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 675
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 676
    return-void
.end method

.method public setRepeatKeyInterval(I)V
    .registers 2
    .param p1, "interval"    # I

    .prologue
    .line 1176
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    .line 1177
    return-void
.end method

.method public setSpacebarTextFadeFactor(FLcom/pantech/inputmethod/keyboard/LatinKeyboard;)V
    .registers 3
    .param p1, "fadeFactor"    # F
    .param p2, "oldKeyboard"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    .prologue
    .line 783
    return-void
.end method

.method public showEMAILWindow()V
    .registers 3

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z

    .line 1545
    return-void
.end method

.method public showMorePeriodWindow()V
    .registers 3

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z

    .line 1553
    return-void
.end method

.method public showMoreSettingsWindow()V
    .registers 3

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z

    .line 1549
    return-void
.end method

.method public showURLWindow()V
    .registers 3

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z

    .line 1541
    return-void
.end method

.method public startIgnoringDoubleTap()V
    .registers 1

    .prologue
    .line 564
    return-void
.end method

.method protected swipeDown()V
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->swipeDown()V

    .line 1110
    return-void
.end method

.method protected swipeLeft(I)V
    .registers 3
    .param p1, "inputMode"    # I

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->swipeLeft(I)V

    .line 1102
    return-void
.end method

.method protected swipeRight(I)V
    .registers 3
    .param p1, "inputMode"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->swipeRight(I)V

    .line 1098
    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->swipeUp()V

    .line 1106
    return-void
.end method

.method public touchDown()V
    .registers 2

    .prologue
    .line 1632
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsEditTouchPadTouched:Z

    .line 1633
    return-void
.end method

.method public touchUp()V
    .registers 2

    .prologue
    .line 1637
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->mIsEditTouchPadTouched:Z

    .line 1638
    return-void
.end method
