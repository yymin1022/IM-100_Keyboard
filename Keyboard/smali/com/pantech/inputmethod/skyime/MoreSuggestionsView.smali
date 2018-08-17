.class public Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;
.super Lcom/pantech/inputmethod/keyboard/KeyboardView;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mBottomShadow:Landroid/graphics/Bitmap;

.field private mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field private mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private final mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private final mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

.field private mOriginX:I

.field private mOriginY:I

.field private mScroll:Landroid/widget/ScrollView;

.field private final mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private final mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const v0, 0x7f010008

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mCoordinates:[I

    .line 66
    new-instance v4, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;

    invoke-direct {v4, p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$1;-><init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 227
    new-instance v4, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;

    invoke-direct {v4, p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;-><init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v4, Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/pantech/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 101
    new-instance v4, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;

    const v5, 0x7f0a0022

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-direct {v4, v5}, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 103
    invoke-virtual {p0, v6, v6}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->setKeyPreviewPopupEnabled(ZI)V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.pantech.inputmethod.skyime_preferences"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 106
    .local v3, "sp":Landroid/content/SharedPreferences;
    const v2, 0x7f0201aa

    .line 107
    .local v2, "resId":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 110
    .local v0, "iconType":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_62

    const/4 v4, 0x4

    if-eq v0, v4, :cond_62

    const/4 v4, 0x6

    if-eq v0, v4, :cond_62

    const/16 v4, 0x8

    if-eq v0, v4, :cond_62

    const/16 v4, 0xa

    if-eq v0, v4, :cond_62

    const/16 v4, 0x9

    if-ne v0, v4, :cond_6c

    .line 114
    :cond_62
    const v2, 0x7f0201aa

    .line 122
    :goto_65
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mBottomShadow:Landroid/graphics/Bitmap;

    .line 124
    return-void

    .line 118
    :cond_6c
    const v2, 0x7f02004d

    goto :goto_65
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 210
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mIsDismissing:Z

    if-ne v2, v3, :cond_8

    move v0, v1

    .line 216
    :goto_7
    return v0

    .line 213
    :cond_8
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mIsDismissing:Z

    .line 214
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 215
    .local v0, "dismissed":Z
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mIsDismissing:Z

    goto :goto_7
.end method

.method public getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 155
    return-object p0
.end method

.method public getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 159
    sget-object v0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 269
    if-eqz p1, :cond_3f

    .line 270
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    if-eqz v2, :cond_3f

    .line 272
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 273
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mBottomShadow:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 276
    .local v0, "bitmapPos":I
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mBottomShadow:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    .end local v0    # "bitmapPos":I
    .end local v1    # "container":Landroid/view/View;
    :cond_3f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 129
    .local v1, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_24

    .line 130
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 131
    .local v2, "width":I
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 132
    .local v0, "height":I
    invoke-virtual {p0, v2, v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->setMeasuredDimension(II)V

    .line 136
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_23
    return-void

    .line 134
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 255
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 256
    .local v4, "eventTime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 257
    .local v8, "index":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 258
    .local v7, "id":I
    invoke-static {v7, p0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 259
    .local v0, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 260
    .local v2, "x":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 261
    .local v3, "y":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 262
    const/4 v6, 0x1

    return v6
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 4
    .param p1, "previewEnabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-super {p0, v0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 169
    return-void
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 141
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 142
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 144
    return-void
.end method

.method public setShifted(Z)V
    .registers 2
    .param p1, "shifted"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public showMoreKeysPanel(Landroid/view/View;Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;I)V
    .registers 17
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "controller"    # Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;
    .param p3, "pointX"    # I
    .param p4, "pointY"    # I
    .param p5, "window"    # Landroid/widget/PopupWindow;
    .param p6, "listener"    # Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .param p7, "orientation"    # I

    .prologue
    .line 177
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 178
    iput-object p6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 179
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 181
    .local v0, "container":Landroid/view/View;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mCoordinates:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mCoordinates:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int v5, v6, v7

    .line 184
    .local v5, "y":I
    move v1, p3

    .line 185
    .local v1, "keyboardHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 186
    .local v3, "windowHeight":I
    if-le v3, v1, :cond_50

    .line 187
    move v3, v1

    .line 188
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    .line 189
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 190
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 193
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mScroll:Landroid/widget/ScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->invalidate()V

    .line 196
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 197
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 199
    invoke-virtual {p5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 200
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p5, p1, v6, v7, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mCoordinates:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mOriginX:I

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mCoordinates:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mOriginY:I

    .line 204
    return-void
.end method

.method public translateX(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 220
    iget v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .registers 3
    .param p1, "y"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
