.class public Lcom/pantech/inputmethod/skyime/MoreKeyboardView;
.super Lcom/pantech/inputmethod/keyboard/KeyboardView;
.source "MoreKeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final DEBUG:Z

.field private static final EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field private mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private final mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private final mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

.field private mOriginX:I

.field private mOriginY:I

.field private final mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private final mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field final res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->TAG:Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->DEBUG:Z

    .line 63
    new-instance v0, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const v0, 0x7f010008

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mCoordinates:[I

    .line 65
    new-instance v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$1;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 224
    new-instance v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView$2;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->res:Landroid/content/res/Resources;

    .line 103
    new-instance v0, Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 104
    new-instance v0, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 106
    invoke-virtual {p0, v3, v3}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 107
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/MoreKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method private static wrapUp(IIII)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "width"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 197
    if-ge p0, p2, :cond_3

    .line 201
    .end local p2    # "left":I
    :goto_2
    return p2

    .line 199
    .restart local p2    # "left":I
    :cond_3
    add-int v0, p0, p1

    if-le v0, p3, :cond_a

    .line 200
    sub-int p2, p3, p1

    goto :goto_2

    :cond_a
    move p2, p0

    .line 201
    goto :goto_2
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mIsDismissing:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 213
    :goto_6
    return v0

    .line 210
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mIsDismissing:Z

    .line 211
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 212
    .local v0, "dismissed":Z
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mIsDismissing:Z

    goto :goto_6
.end method

.method public getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 142
    return-object p0
.end method

.method public getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 146
    sget-object v0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 113
    .local v1, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_24

    .line 114
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 115
    .local v2, "width":I
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 116
    .local v0, "height":I
    invoke-virtual {p0, v2, v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->setMeasuredDimension(II)V

    .line 120
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_23
    return-void

    .line 118
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 252
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 253
    .local v4, "eventTime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 254
    .local v8, "index":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 255
    .local v7, "id":I
    invoke-static {v7, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 256
    .local v0, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 257
    .local v2, "x":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 258
    .local v3, "y":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 259
    const/4 v6, 0x1

    return v6
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 4
    .param p1, "previewEnabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-super {p0, v0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 154
    return-void
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 125
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 126
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 129
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 130
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setKeyboard()V

    .line 131
    return-void
.end method

.method public setShifted(Z)V
    .registers 2
    .param p1, "shifted"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public showMoreKeysPanel(Landroid/view/View;Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;I)V
    .registers 15
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "controller"    # Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;
    .param p3, "pointX"    # I
    .param p4, "pointY"    # I
    .param p5, "window"    # Landroid/widget/PopupWindow;
    .param p6, "listener"    # Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .param p7, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 162
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 163
    iput-object p6, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 164
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, "container":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 167
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 169
    .local v2, "y":F
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p5, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 172
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mCoordinates:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 173
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isLandscapeFloatingSingleMode()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 174
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getFloatingMoveLastX()F

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->res:Landroid/content/res/Resources;

    const v5, 0x7f0a006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 177
    :cond_55
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mCoordinates:[I

    aget v3, v3, v6

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 178
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 179
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getFloatingMoveLastY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 183
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    const/16 v4, 0x53

    float-to-int v5, v1

    float-to-int v6, v2

    invoke-virtual {p5, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 189
    :goto_8e
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->DEBUG:Z

    if-eqz v3, :cond_b6

    .line 190
    sget-object v3, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMoreKeysPanel: showAtLocation, x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    float-to-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    float-to-int v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_b6
    return-void

    .line 185
    :cond_b7
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mCoordinates:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 186
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p5, p1, v6, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_8e
.end method

.method public translateX(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 217
    iget v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .registers 3
    .param p1, "y"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
