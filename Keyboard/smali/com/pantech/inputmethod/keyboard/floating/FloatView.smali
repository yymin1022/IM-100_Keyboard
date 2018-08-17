.class public Lcom/pantech/inputmethod/keyboard/floating/FloatView;
.super Landroid/view/View;
.source "FloatView.java"


# static fields
.field private static final DEBUG:Z

.field private static final FLOATING_POSITION_X:F = 0.5f

.field public static final FLOAT_TYPE_LAST:I = 0x3

.field public static final FLOAT_TYPE_NONE:I = 0x0

.field public static final FLOAT_TYPE_SINGLE:I = 0x1

.field public static final FLOAT_TYPE_SPLIT:I = 0x2

.field private static final PORTRAIT_FLOATING_POSITION_Y:F = 0.4f

.field private static final TAG:Ljava/lang/String;

.field private static mFloatingPopup:Landroid/widget/PopupWindow;

.field private static mLandscapeCurrentType:I

.field private static mLandscapeFloatingMoveLastX:F

.field private static mLandscapeFloatingMoveLastY:F

.field private static mLandscapeFloatingPosition:Landroid/graphics/PointF;

.field private static mLandscapePreviousType:I

.field private static mPortraitCurrentType:I

.field private static mPortraitFloatingMoveLastX:F

.field private static mPortraitFloatingMoveLastY:F

.field private static mPortraitFloatingPosition:Landroid/graphics/PointF;

.field private static mSplitLeftPopup:Landroid/widget/PopupWindow;

.field private static mSplitRightPopup:Landroid/widget/PopupWindow;


# instance fields
.field private mFloatViewTouchable:Z

.field private mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

.field private mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

.field private mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

.field private mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

.field private mIsMoving:Z

.field private mLandscapeFloatingMovePreX:F

.field private mLandscapeFloatingMovePreY:F

.field private mParentView:Landroid/view/View;

.field private mPortraitFloatingMovePreX:F

.field private mPortraitFloatingMovePreY:F

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

.field private mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

.field private mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

.field private mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

.field private mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

.field private mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

.field private mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

.field private mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

.field private mStatusBarHeight:I

.field private mSwitchNormalButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->DEBUG:Z

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    .line 66
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastX:F

    .line 67
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastY:F

    .line 68
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastX:F

    .line 69
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastY:F

    .line 77
    sput v4, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapePreviousType:I

    .line 79
    sput v4, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 90
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mIsMoving:Z

    .line 94
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatViewTouchable:Z

    .line 420
    new-instance v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView$1;-><init>(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSwitchNormalButtonClickListener:Landroid/view/View$OnClickListener;

    .line 428
    new-instance v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView$2;-><init>(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Lcom/pantech/inputmethod/skyime/SkyIME;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatViewTouchable:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getPositionX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getPositionY()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMoveLastPositionX(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMoveLastPositionY(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    return v0
.end method

.method static synthetic access$1900()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isDimKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setPositionX(F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setPositionY(F)V

    return-void
.end method

.method static synthetic access$302(Lcom/pantech/inputmethod/keyboard/floating/FloatView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->invalidateKeyboardView()V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMovePrePositionX(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/keyboard/floating/FloatView;F)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMovePrePositionY(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMovePrePositionX()F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMovePrePositionY()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/pantech/inputmethod/keyboard/floating/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/floating/FloatView;

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenWidth:I

    return v0
.end method

.method private getCurrentType()I
    .registers 3

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 820
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    .line 822
    :goto_9
    return v0

    :cond_a
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    goto :goto_9
.end method

.method private getMovePrePositionX()F
    .registers 3

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 827
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMovePreX:F

    .line 829
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMovePreX:F

    goto :goto_9
.end method

.method private getMovePrePositionY()F
    .registers 3

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 834
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMovePreY:F

    .line 836
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMovePreY:F

    goto :goto_9
.end method

.method private getPositionX()F
    .registers 3

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 758
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 760
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_b
.end method

.method private getPositionY()F
    .registers 3

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 765
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 767
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_b
.end method

.method private invalidateKeyboardView()V
    .registers 3

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 893
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->resetAllKey()V

    .line 898
    :cond_c
    :goto_c
    return-void

    .line 894
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 895
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->resetAllKey()V

    .line 896
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->resetAllKey()V

    goto :goto_c
.end method

.method private isDimKeyboard()Z
    .registers 3

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 878
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isDimKeyboard()Z

    move-result v0

    .line 882
    :goto_d
    return v0

    .line 879
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 880
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isDimKeyboard()Z

    move-result v0

    goto :goto_d

    .line 882
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isPortrait()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 749
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 750
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_c

    .line 753
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private setKeyboard(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 3
    .param p1, "view"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 415
    invoke-virtual {p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 416
    return-void
.end method

.method private setMoveLastPositionX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    const/4 v1, 0x1

    .line 787
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 788
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-ne v0, v1, :cond_10

    .line 789
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastX:F

    .line 794
    :cond_f
    :goto_f
    return-void

    .line 791
    :cond_10
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastX:F

    goto :goto_f
.end method

.method private setMoveLastPositionY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 798
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastY:F

    .line 802
    :goto_9
    return-void

    .line 800
    :cond_a
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastY:F

    goto :goto_9
.end method

.method private setMovePrePositionX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    const/4 v1, 0x1

    .line 840
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 841
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-ne v0, v1, :cond_10

    .line 842
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMovePreX:F

    .line 847
    :cond_f
    :goto_f
    return-void

    .line 844
    :cond_10
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMovePreX:F

    goto :goto_f
.end method

.method private setMovePrePositionY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 851
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMovePreY:F

    .line 855
    :goto_9
    return-void

    .line 853
    :cond_a
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMovePreY:F

    goto :goto_9
.end method

.method private setPositionX(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 772
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 776
    :goto_b
    return-void

    .line 774
    :cond_c
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_b
.end method

.method private setPositionY(F)V
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 780
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 784
    :goto_b
    return-void

    .line 782
    :cond_c
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_b
.end method


# virtual methods
.method public backupType()V
    .registers 2

    .prologue
    .line 388
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    sput v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapePreviousType:I

    .line 389
    return-void
.end method

.method public dimKeyboard(Z)V
    .registers 10
    .param p1, "dim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 858
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 859
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v0, v3, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 862
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3, p1, v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(ZLandroid/graphics/Rect;)V

    .line 873
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_32
    :goto_32
    return-void

    .line 863
    :cond_33
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    .line 864
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 867
    .local v1, "rectL":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3, p1, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(ZLandroid/graphics/Rect;)V

    .line 868
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 871
    .local v2, "rectR":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v3, p1, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(ZLandroid/graphics/Rect;)V

    goto :goto_32
.end method

.method public getCurrentInputView()Lcom/pantech/inputmethod/skyime/InputView;
    .registers 3

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 928
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    .line 932
    :goto_9
    return-object v0

    .line 929
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 930
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    goto :goto_9

    .line 932
    :cond_14
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    goto :goto_9
.end method

.method public getCurrentPopupWindow()Landroid/widget/PopupWindow;
    .registers 3

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 937
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    .line 941
    :goto_9
    return-object v0

    .line 938
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 939
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    goto :goto_9

    .line 941
    :cond_14
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    goto :goto_9
.end method

.method public getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public getKeyboardView(I)Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 541
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_a

    .line 542
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 546
    :goto_9
    return-object v0

    .line 543
    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_14

    .line 544
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    goto :goto_9

    .line 546
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getMoveLastPositionX()F
    .registers 3

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 806
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastX:F

    .line 808
    :goto_9
    return v0

    :cond_a
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastX:F

    goto :goto_9
.end method

.method public getMoveLastPositionY()F
    .registers 3

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 813
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastY:F

    .line 815
    :goto_9
    return v0

    :cond_a
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastY:F

    goto :goto_9
.end method

.method public getType()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 533
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v0

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-ne v0, v1, :cond_12

    .line 535
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    .line 537
    :goto_11
    return v0

    :cond_12
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    goto :goto_11
.end method

.method public init(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .registers 25
    .param p1, "skyIme"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p2, "themeContext"    # Landroid/content/Context;
    .param p3, "prefs"    # Landroid/content/SharedPreferences;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 115
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mParentView:Landroid/view/View;

    .line 127
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 128
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPrefs:Landroid/content/SharedPreferences;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    .line 131
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_2d

    .line 132
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    .line 134
    :cond_2d
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_3c

    .line 135
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    .line 137
    :cond_3c
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_4b

    .line 138
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    .line 140
    :cond_4b
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    sget-object v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v13

    .line 147
    .local v13, "iconType":I
    const-string v2, "layout_inflater"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 149
    .local v19, "vi":Landroid/view/LayoutInflater;
    const v2, 0x7f030005

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/InputView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f100083

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007e

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, "floatMoveView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f100080

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 160
    .local v17, "switchNormalButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSwitchNormalButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007f

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 165
    .local v14, "moveBtn":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    const v2, 0x7f030006

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/InputView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f100083

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 174
    const v2, 0x7f030006

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/InputView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f100083

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007e

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 184
    .local v11, "floatMoveViewLeft":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007f

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 187
    .local v15, "moveBtnLeft":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007e

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 192
    .local v12, "floatMoveViewRight":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f10007f

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .line 195
    .local v16, "moveBtnRight":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v3, 0x7f100080

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 198
    .local v18, "switchNormalButtonRight":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSwitchNormalButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingMoveButtonTouch:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 205
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 206
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, v12

    invoke-virtual/range {v5 .. v10}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 208
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1ff

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_1fe
    :goto_1fe
    return-void

    .line 214
    :cond_1ff
    const/4 v2, 0x2

    if-ne v13, v2, :cond_23f

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1fe

    .line 220
    :cond_23f
    const/4 v2, 0x3

    if-ne v13, v2, :cond_27f

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1fe

    .line 226
    :cond_27f
    const/4 v2, 0x4

    if-eq v13, v2, :cond_286

    const/16 v2, 0x9

    if-ne v13, v2, :cond_2c4

    .line 227
    :cond_286
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe

    .line 232
    :cond_2c4
    const/16 v2, 0x8

    if-ne v13, v2, :cond_306

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe

    .line 238
    :cond_306
    const/16 v2, 0xa

    if-ne v13, v2, :cond_348

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe

    .line 244
    :cond_348
    const/4 v2, 0x5

    if-ne v13, v2, :cond_389

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe

    .line 250
    :cond_389
    const/4 v2, 0x6

    if-ne v13, v2, :cond_3ca

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe

    .line 256
    :cond_3ca
    const/4 v2, 0x7

    if-ne v13, v2, :cond_1fe

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fe
.end method

.method public initFloatingPositionForVITA()V
    .registers 4

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 103
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 104
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingPosition:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 105
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 106
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingPosition:Landroid/graphics/PointF;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 107
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastX:F

    .line 108
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeFloatingMoveLastY:F

    .line 109
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastX:F

    .line 110
    sput v2, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitFloatingMoveLastY:F

    .line 111
    return-void
.end method

.method public isFloatingMoveMode()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mIsMoving:Z

    return v0
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 678
    sget v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 679
    :cond_c
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_16

    .line 680
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    .line 686
    :cond_16
    :goto_16
    return v0

    .line 682
    :cond_17
    sget v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 683
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_16

    .line 684
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    goto :goto_16
.end method

.method public isShowing()Z
    .registers 3

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 905
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 909
    :goto_d
    return v0

    .line 906
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 907
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_d

    .line 909
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadRecentKeys(ILandroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 582
    if-ne p1, v1, :cond_15

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_15

    .line 583
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    .line 584
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 591
    :cond_14
    :goto_14
    return-void

    .line 585
    :cond_15
    if-ne p1, v2, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_14

    .line 586
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;I)V

    .line 587
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;I)V

    .line 588
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 589
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_14
.end method

.method public setAutomaticTemporaryUpperCase()V
    .registers 3

    .prologue
    .line 720
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 721
    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_19

    .line 722
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 723
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 733
    :cond_19
    :goto_19
    return-void

    .line 725
    :cond_1a
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 726
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_19

    .line 727
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 728
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 729
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 730
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_19
.end method

.method public setFloatViewMoving(Z)V
    .registers 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 915
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatViewTouchable:Z

    .line 916
    return-void
.end method

.method public setKeyboard(ILcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 19
    .param p1, "type"    # I
    .param p2, "base"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p3, "left"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p4, "right"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 270
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 271
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 272
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 274
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v4, v11, Landroid/content/res/Configuration;->orientation:I

    .line 276
    .local v4, "orientation":I
    const/16 v10, 0x64

    .line 277
    .local v10, "widthProgress":I
    const/16 v2, 0x64

    .line 279
    .local v2, "heightProgress":I
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "custom_floating_width"

    const/16 v13, 0x64

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 280
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "custom_floating_height"

    const/16 v13, 0x64

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 283
    mul-int/lit8 v11, v10, 0x64

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v6, v11, v12

    .line 284
    .local v6, "scaleWidthFactor":F
    mul-int/lit8 v11, v2, 0x64

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v5, v11, v12

    .line 287
    .local v5, "scaleHeightFactor":F
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a006d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 288
    .local v9, "width":I
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a006e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a006c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int v1, v11, v12

    .line 290
    .local v1, "height":I
    const/4 v11, 0x1

    if-ne p1, v11, :cond_d2

    .line 291
    const/4 v11, 0x1

    if-ne v4, v11, :cond_86

    .line 292
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a006d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    float-to-int v9, v11

    .line 293
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a006e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0a006c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int v1, v11, v12

    .line 296
    :cond_86
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-direct {p0, v11, v12}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 297
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 298
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 299
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 317
    :cond_9e
    :goto_9e
    sget v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d1

    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 318
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v11}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v11

    iget-object v11, v11, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v11}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v3

    .line 320
    .local v3, "language":I
    const/4 v11, 0x2

    if-eq v3, v11, :cond_c0

    const/4 v11, 0x1

    if-eq v3, v11, :cond_c0

    const/4 v11, 0x3

    if-ne v3, v11, :cond_118

    .line 322
    :cond_c0
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    sget-object v12, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v12

    sget-object v13, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/PopupWindow;->update(II)V

    .line 327
    .end local v3    # "language":I
    :cond_d1
    :goto_d1
    return-void

    .line 300
    :cond_d2
    const/4 v11, 0x2

    if-ne p1, v11, :cond_9e

    .line 301
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-direct {p0, v11, v12}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 302
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-direct {p0, v11, v12}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 303
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a006f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 305
    .local v7, "splitLeftWidth":I
    iget-object v11, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a0070

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 308
    .local v8, "splitRightWidth":I
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 309
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 310
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 312
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 313
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 314
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9e

    .line 324
    .end local v7    # "splitLeftWidth":I
    .end local v8    # "splitRightWidth":I
    .restart local v3    # "language":I
    :cond_118
    sget-object v11, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    sget-object v12, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v12

    sget-object v13, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_d1
.end method

.method public setLandscapePrevType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 887
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapePreviousType:I

    .line 888
    return-void
.end method

.method public setManualEnglishShifteMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 641
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    if-eq v0, v2, :cond_c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 642
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_28

    .line 643
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 644
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 645
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 646
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 654
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 675
    :cond_2d
    :goto_2d
    return-void

    .line 648
    :cond_2e
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    goto :goto_28

    .line 651
    :cond_34
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    goto :goto_28

    .line 655
    :cond_3a
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 656
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_69

    .line 657
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 658
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 659
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 660
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 661
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 662
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 672
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 673
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_2d

    .line 664
    :cond_74
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 665
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    goto :goto_69

    .line 668
    :cond_7f
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 669
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    goto :goto_69
.end method

.method public setManualTemporaryUpperCase(Z)V
    .registers 5
    .param p1, "shifted"    # Z

    .prologue
    const/4 v2, 0x0

    .line 691
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 692
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-nez v0, :cond_2c

    if-nez p1, :cond_2c

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 694
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 696
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 698
    :cond_2c
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 699
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 717
    :cond_3d
    :goto_3d
    return-void

    .line 701
    :cond_3e
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 702
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-nez v0, :cond_71

    if-nez p1, :cond_71

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 704
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 705
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 707
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 708
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 710
    :cond_71
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 711
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 713
    :cond_82
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 714
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_3d
.end method

.method public setShiftLocked(Z)V
    .registers 4
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 736
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 737
    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 738
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 746
    :cond_1c
    :goto_1c
    return-void

    .line 740
    :cond_1d
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 741
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 742
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 743
    :cond_33
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 744
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_1c
.end method

.method public setType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 512
    if-nez p1, :cond_8

    .line 513
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    .line 526
    :cond_7
    :goto_7
    return-void

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v0

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v0

    if-ne v0, v1, :cond_21

    .line 517
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    .line 518
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    if-nez v0, :cond_7

    .line 519
    sget v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapePreviousType:I

    sput v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    goto :goto_7

    .line 522
    :cond_21
    sput p1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    .line 523
    sput v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mPortraitCurrentType:I

    goto :goto_7
.end method

.method public startFloatPanel(I)V
    .registers 15
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x53

    .line 330
    sget-boolean v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->DEBUG:Z

    if-eqz v5, :cond_22

    .line 331
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFloatPanel type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_22
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->stopFloatPanel()V

    .line 336
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 384
    :cond_2d
    :goto_2d
    return-void

    .line 339
    :cond_2e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 341
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 342
    .local v0, "dsp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenWidth:I

    .line 343
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenHeight:I

    .line 344
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v2, "rectgle":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 346
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mStatusBarHeight:I

    .line 349
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_74

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentType()I

    move-result v5

    if-ne v5, v12, :cond_74

    .line 350
    sget v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapePreviousType:I

    sput v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    .line 352
    :cond_74
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionX()F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8e

    .line 353
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenWidth:I

    sget-object v6, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getPositionX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMoveLastPositionX(F)V

    .line 355
    :cond_8e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_a8

    .line 357
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenHeight:I

    sget-object v6, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getPositionY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setMoveLastPositionY(F)V

    .line 360
    :cond_a8
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentType()I

    move-result v5

    if-ne v5, v10, :cond_c9

    .line 361
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    const v6, 0x7f0e010e

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 362
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2d

    .line 364
    :cond_c9
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getCurrentType()I

    move-result v5

    if-ne v5, v11, :cond_2d

    .line 365
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v5

    iget-object v5, v5, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v1

    .line 367
    .local v1, "language":I
    if-eq v1, v11, :cond_e1

    if-eq v1, v10, :cond_e1

    if-ne v1, v12, :cond_123

    .line 369
    :cond_e1
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 371
    .local v3, "splitLeftWidth":I
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 375
    .end local v3    # "splitLeftWidth":I
    :goto_ef
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    const v6, 0x7f0e010f

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 376
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mParentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 378
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    const v6, 0x7f0e0110

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 379
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mParentView:Landroid/view/View;

    iget v7, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mScreenWidth:I

    sget-object v8, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->getMoveLastPositionY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2d

    .line 373
    :cond_123
    sget-object v5, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    sget-object v6, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_ef
.end method

.method public stopFloatPanel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 394
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 395
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->TAG:Ljava/lang/String;

    const-string v1, "stopFloatPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_c
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mIsMoving:Z

    .line 400
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->dimKeyboard(Z)V

    .line 403
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 404
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 406
    :cond_22
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_33

    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 407
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLeftPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 409
    :cond_33
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 410
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRightPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 412
    :cond_44
    return-void
.end method

.method public updateEmojiKeys(II[Ljava/lang/String;II)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "mode"    # I
    .param p3, "array"    # [Ljava/lang/String;
    .param p4, "pageNum"    # I
    .param p5, "numPerPage"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 570
    if-ne p1, v5, :cond_15

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_15

    .line 571
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    .line 572
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 579
    :cond_14
    :goto_14
    return-void

    .line 573
    :cond_15
    if-ne p1, v6, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_14

    .line 574
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;III)Z

    .line 575
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;III)Z

    .line 576
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 577
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_14
.end method

.method public updateFloatingPopup()V
    .registers 2

    .prologue
    .line 921
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 922
    sget-object v0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 924
    :cond_11
    return-void
.end method

.method public updateShiftState()V
    .registers 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 596
    .local v0, "shiftKeyState":Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_55

    sget v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 597
    :cond_11
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 599
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_38

    .line 600
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentAutoCapsStateOld()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 603
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setAutomaticTemporaryUpperCase()V

    .line 638
    :cond_38
    :goto_38
    return-void

    .line 605
    :cond_39
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualTemporaryUpperCase(Z)V

    goto :goto_38

    .line 608
    :cond_41
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isKoreanKeyboard()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 609
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualTemporaryUpperCase(Z)V

    goto :goto_38

    .line 615
    :cond_51
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_38

    .line 617
    :cond_55
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_38

    sget v1, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mLandscapeCurrentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 618
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 619
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_38

    .line 620
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSkyIme:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentAutoCapsStateOld()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 623
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setAutomaticTemporaryUpperCase()V

    goto :goto_38

    .line 625
    :cond_86
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualTemporaryUpperCase(Z)V

    goto :goto_38

    .line 628
    :cond_8e
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isKoreanKeyboard()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 629
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->setManualTemporaryUpperCase(Z)V

    goto :goto_38

    .line 635
    :cond_9e
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_38
.end method

.method public updateSymbolEmoticonKeys(ILjava/util/ArrayList;IIZ)V
    .registers 8
    .param p1, "type"    # I
    .param p3, "pageNum"    # I
    .param p4, "numPerPage"    # I
    .param p5, "portrait"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_14

    .line 555
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 556
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mFloatingKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 566
    :cond_13
    :goto_13
    return-void

    .line 557
    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_13

    .line 560
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 561
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 562
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitLKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 563
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/floating/FloatView;->mSplitRKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_13
.end method
