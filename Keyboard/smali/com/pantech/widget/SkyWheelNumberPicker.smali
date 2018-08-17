.class public Lcom/pantech/widget/SkyWheelNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SkyWheelNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;,
        Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;,
        Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;,
        Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;,
        Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;,
        Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;,
        Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/pantech/widget/SkyWheelNumberPicker$CustomEditText;,
        Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/pantech/widget/SkyWheelNumberPicker$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x7f07000d

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field public static final FIXED_DIALOG_LAYOUT_HEIGHT:I = 0x133

.field public static final FIXED_DIALOG_LAYOUT_WIDTH:I = 0x156

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SkyPicker.Number"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field public static final TWO_DIGIT_FORMATTER:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Landroid/widget/Scroller;

.field private mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

.field private mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

.field private mArrowMarginTopBottom:I

.field private mArrowVisible:Z

.field private mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

.field private mHasSelectorWheel:Z

.field private mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/EditText;

.field private mInputTextOpaque:I

.field private mIsNumber:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;

.field private mPickerHeight:I

.field private mPickerWidth:I

.field private mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSolidColor:I

.field private mTextSize:I

.field private mTextSizeTopBottom:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static synthetic -get0()[C
    .registers 1

    sget-object v0, Lcom/pantech/widget/SkyWheelNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic -get1(Lcom/pantech/widget/SkyWheelNumberPicker;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get2(Lcom/pantech/widget/SkyWheelNumberPicker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/pantech/widget/SkyWheelNumberPicker;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/pantech/widget/SkyWheelNumberPicker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get6(Lcom/pantech/widget/SkyWheelNumberPicker;)J
    .registers 3

    iget-wide v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/pantech/widget/SkyWheelNumberPicker;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic -get8(Lcom/pantech/widget/SkyWheelNumberPicker;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -set0(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set2(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/pantech/widget/SkyWheelNumberPicker;Ljava/lang/String;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)V
    .registers 2
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/pantech/widget/SkyWheelNumberPicker;II)V
    .registers 3
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/pantech/widget/SkyWheelNumberPicker;Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/pantech/widget/SkyWheelNumberPicker;->DIGIT_CHARACTERS:[C

    .line 138
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker$1;

    invoke-direct {v0}, Lcom/pantech/widget/SkyWheelNumberPicker$1;-><init>()V

    sput-object v0, Lcom/pantech/widget/SkyWheelNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    .line 62
    return-void

    .line 118
    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 529
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLongPressUpdateInterval:J

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 256
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    .line 276
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelNumberPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 528
    return-void
.end method

.method private changeValueByOne(Z)V
    .registers 8
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1756
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1757
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1759
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1761
    :cond_1b
    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    .line 1762
    if-eqz p1, :cond_2d

    .line 1763
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1767
    :goto_29
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1755
    :goto_2c
    return-void

    .line 1765
    :cond_2d
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_29

    .line 1769
    :cond_37
    if-eqz p1, :cond_41

    .line 1770
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    goto :goto_2c

    .line 1772
    :cond_41
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    goto :goto_2c
.end method

.method private decrementSelectorIndices([I)V
    .registers 6
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1879
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_4
    if-lez v0, :cond_f

    .line 1880
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1879
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1882
    :cond_f
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1883
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1e

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1e

    .line 1884
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    .line 1886
    :cond_1e
    aput v1, p1, v3

    .line 1887
    invoke-direct {p0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1878
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1896
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1897
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1898
    return-void

    .line 1900
    :cond_b
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_1a

    .line 1901
    :cond_13
    const-string/jumbo v2, ""

    .line 1910
    :goto_16
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1894
    return-void

    .line 1903
    :cond_1a
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 1904
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1905
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_16

    .line 1907
    .end local v1    # "displayedValueIndex":I
    :cond_27
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2153
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2154
    .local v4, "deltaY":I
    if-eqz v4, :cond_2c

    .line 2155
    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    .line 2156
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1b

    .line 2157
    if-lez v4, :cond_29

    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_1a
    add-int/2addr v4, v0

    .line 2159
    :cond_1b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2160
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 2161
    const/4 v0, 0x1

    return v0

    .line 2157
    :cond_29
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    goto :goto_1a

    .line 2163
    :cond_2c
    return v1
.end method

.method private fling(I)V
    .registers 11
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1835
    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    .line 1837
    if-lez p1, :cond_17

    .line 1838
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1843
    :goto_13
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1834
    return-void

    .line 1840
    :cond_17
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_13
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFormatter:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFormatter:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2029
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2031
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 2032
    :catch_9
    move-exception v0

    .line 2055
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_a
    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    return v2

    .line 2036
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 2038
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2039
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2040
    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    .line 2036
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2049
    :cond_2c
    :try_start_2c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result v2

    return v2

    .line 2050
    :catch_31
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1850
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1851
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1852
    :cond_14
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_27

    .line 1853
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1855
    :cond_27
    return p1
.end method

.method private hideSoftInput()V
    .registers 5

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1264
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 1265
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1268
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1269
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1270
    :cond_22
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    .line 1269
    if-eqz v2, :cond_3c

    .line 1271
    :cond_2a
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1272
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-eqz v2, :cond_3c

    .line 1273
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1262
    :cond_3c
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_f

    .line 1864
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1863
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1866
    :cond_f
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1867
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_20

    .line 1868
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    .line 1870
    :cond_20
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1871
    invoke-direct {p0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1862
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 22
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 536
    invoke-static/range {p1 .. p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 538
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v6

    .line 541
    .local v6, "context":Landroid/content/Context;
    sget-object v15, Lcom/pantech/res/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 544
    .local v2, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x3

    const v16, 0x7f07000d

    .line 543
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 546
    .local v11, "layoutResId":I
    const v15, 0x7f07000d

    if-ne v11, v15, :cond_be

    const/4 v15, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    .line 548
    const/16 v15, 0xc

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSolidColor:I

    .line 550
    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 553
    const/high16 v15, 0x40000000    # 2.0f

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 553
    const/16 v17, 0x1

    .line 552
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v8, v15

    .line 556
    .local v8, "defSelectionDividerHeight":I
    const/16 v15, 0xa

    .line 555
    invoke-virtual {v2, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividerHeight:I

    .line 559
    const/high16 v15, 0x42400000    # 48.0f

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 559
    const/16 v17, 0x1

    .line 558
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v7, v15

    .line 562
    .local v7, "defSelectionDividerDistance":I
    const/16 v15, 0xb

    .line 561
    invoke-virtual {v2, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividersDistance:I

    .line 565
    const/4 v15, 0x6

    const/16 v16, -0x1

    .line 564
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinHeight:I

    .line 568
    const/4 v15, 0x4

    const/16 v16, -0x1

    .line 567
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxHeight:I

    .line 569
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c1

    .line 570
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_c1

    .line 571
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "minHeight > maxHeight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 546
    .end local v7    # "defSelectionDividerDistance":I
    .end local v8    # "defSelectionDividerHeight":I
    :cond_be
    const/4 v15, 0x0

    goto/16 :goto_1f

    .line 575
    .restart local v7    # "defSelectionDividerDistance":I
    .restart local v8    # "defSelectionDividerHeight":I
    :cond_c1
    const/4 v15, 0x7

    const/16 v16, -0x1

    .line 574
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    .line 578
    const/4 v15, 0x5

    const/16 v16, -0x1

    .line 577
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    .line 579
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_106

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_106

    .line 580
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_106

    .line 581
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "minWidth > maxWidth"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 584
    :cond_106
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_301

    const/4 v15, 0x1

    :goto_111
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mComputeMaxWidth:Z

    .line 587
    const/16 v15, 0xe

    .line 586
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x42000000    # 32.0f

    mul-float v15, v15, v16

    float-to-int v9, v15

    .line 591
    .local v9, "defaultInputTextSize":I
    const/4 v15, 0x2

    .line 590
    invoke-virtual {v2, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 594
    .local v10, "inputTextSize":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 593
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowMarginTopBottom:I

    .line 597
    const/16 v15, 0xd

    const/16 v16, 0x0

    .line 596
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    .line 600
    const/4 v15, 0x1

    const/16 v16, 0x1

    .line 599
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowVisible:Z

    .line 603
    const/4 v15, 0x1

    const/16 v16, 0x1

    .line 602
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIsNumber:Z

    .line 605
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 607
    new-instance v15, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    .line 614
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-eqz v15, :cond_304

    const/4 v15, 0x0

    :goto_17d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWillNotDraw(Z)V

    .line 619
    invoke-static {v6}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 621
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v13, v0, v15}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 654
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 663
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 667
    const v15, 0x7f0a003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v16, Lcom/pantech/widget/SkyWheelNumberPicker$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker$2;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v16, v0

    .line 679
    new-instance v17, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 678
    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const v16, 0x10301b1

    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 694
    invoke-static {}, Lcom/pantech/widget/RR;->getTheme()I

    move-result v14

    .line 696
    .local v14, "type":I
    packed-switch v14, :pswitch_data_3a8

    .line 707
    :pswitch_20d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v16, "#249af7"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setTextColor(I)V

    .line 714
    :goto_21b
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 715
    .local v5, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTouchSlop:I

    .line 716
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinimumFlingVelocity:I

    .line 717
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaximumFlingVelocity:I

    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    .line 722
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 723
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 724
    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 725
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 726
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 728
    .local v4, "colors":Landroid/content/res/ColorStateList;
    sget-object v15, Lcom/pantech/widget/SkyWheelNumberPicker;->ENABLED_STATE_SET:[I

    const/high16 v16, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 729
    .local v3, "color":I
    const-string/jumbo v15, "#249af7"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 731
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputTextOpaque:I

    .line 734
    new-instance v15, Landroid/widget/Scroller;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v6, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 735
    new-instance v15, Landroid/widget/Scroller;

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x40200000    # 2.5f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getImportantForAccessibility()I

    move-result v15

    if-nez v15, :cond_2c1

    .line 741
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->setImportantForAccessibility(I)V

    .line 744
    :cond_2c1
    packed-switch v14, :pswitch_data_3b4

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 760
    const v16, 0x7f06022a

    .line 759
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 762
    const v16, 0x7f060226

    .line 761
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 764
    const v16, 0x7f06022b

    .line 763
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 766
    const v16, 0x7f060227

    .line 765
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    .line 534
    :goto_300
    return-void

    .line 584
    .end local v3    # "color":I
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v5    # "configuration":Landroid/view/ViewConfiguration;
    .end local v9    # "defaultInputTextSize":I
    .end local v10    # "inputTextSize":I
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    :cond_301
    const/4 v15, 0x0

    goto/16 :goto_111

    .line 614
    .restart local v9    # "defaultInputTextSize":I
    .restart local v10    # "inputTextSize":I
    :cond_304
    const/4 v15, 0x1

    goto/16 :goto_17d

    .line 698
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :pswitch_307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v16, "#249af7"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_21b

    .line 701
    :pswitch_317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_21b

    .line 704
    :pswitch_322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/high16 v16, -0x1000000

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_21b

    .line 746
    .restart local v3    # "color":I
    .restart local v4    # "colors":Landroid/content/res/ColorStateList;
    .restart local v5    # "configuration":Landroid/view/ViewConfiguration;
    .restart local v12    # "paint":Landroid/graphics/Paint;
    :pswitch_32d
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060117

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f06010b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060111

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060105

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    goto :goto_300

    .line 752
    :pswitch_36a
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060116

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f06010a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060110

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060104

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_300

    .line 696
    :pswitch_data_3a8
    .packed-switch 0x1
        :pswitch_322
        :pswitch_317
        :pswitch_20d
        :pswitch_307
    .end packed-switch

    .line 744
    :pswitch_data_3b4
    .packed-switch 0x1
        :pswitch_36a
        :pswitch_32d
    .end packed-switch
.end method

.method private initializeFadingEdges()V
    .registers 3

    .prologue
    .line 1795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1796
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFadingEdgeLength(I)V

    .line 1794
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 7

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1779
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    .line 1780
    .local v1, "selectorIndices":[I
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    mul-int/lit8 v3, v4, 0x3

    .line 1781
    .local v3, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 1782
    .local v2, "totalTextGapHeight":F
    const/high16 v4, 0x40400000    # 3.0f

    .line 1783
    div-float v4, v2, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    .line 1784
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    iget v5, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    .line 1787
    iget-object v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int v0, v4, v5

    .line 1789
    .local v0, "editTextTextPosition":I
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v4, v4, 0x2

    .line 1788
    sub-int v4, v0, v4

    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    .line 1790
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1791
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1777
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .prologue
    .line 1708
    iget-object v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1709
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    .line 1710
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getValue()I

    move-result v0

    .line 1711
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_27

    .line 1712
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 1713
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1d

    .line 1714
    invoke-direct {p0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1716
    :cond_1d
    aput v2, v3, v1

    .line 1717
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1711
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1707
    .end local v2    # "selectorIndex":I
    :cond_27
    return-void
.end method

.method private makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1666
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 1667
    return p1

    .line 1669
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1670
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1671
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_3a

    .line 1679
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1673
    :sswitch_2b
    return p1

    .line 1675
    :sswitch_2c
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1677
    :sswitch_35
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1671
    :sswitch_data_3a
    .sparse-switch
        -0x80000000 -> :sswitch_2c
        0x0 -> :sswitch_35
        0x40000000 -> :sswitch_2b
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 9
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 829
    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 830
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int v0, v3, v4

    .line 831
    .local v0, "amountToScroll":I
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    rem-int v1, v3, v4

    .line 832
    .local v1, "futureScrollOffset":I
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    sub-int v2, v3, v1

    .line 833
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_34

    .line 834
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2b

    .line 835
    if-lez v2, :cond_30

    .line 836
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    .line 841
    :cond_2b
    :goto_2b
    add-int/2addr v0, v2

    .line 842
    invoke-virtual {p0, v5, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->scrollBy(II)V

    .line 843
    return v6

    .line 838
    :cond_30
    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    goto :goto_2b

    .line 845
    :cond_34
    return v5
.end method

.method private notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnValueChangeListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 1959
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnValueChangeListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;->onValueChange(Lcom/pantech/widget/SkyWheelNumberPicker;II)V

    .line 1957
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .prologue
    .line 1822
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1823
    return-void

    .line 1825
    :cond_5
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    .line 1826
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnScrollListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;

    if-eqz v0, :cond_10

    .line 1827
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnScrollListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/pantech/widget/SkyWheelNumberPicker;I)V

    .line 1821
    :cond_10
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 5
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v2, 0x0

    .line 1803
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    .line 1804
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1805
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1807
    :cond_e
    invoke-direct {p0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollStateChange(I)V

    .line 1802
    :cond_11
    :goto_11
    return-void

    .line 1809
    :cond_12
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 1810
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1811
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-nez v0, :cond_11

    .line 1812
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_11
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 5

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_16

    .line 1993
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1997
    :goto_b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1991
    return-void

    .line 1995
    :cond_16
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 6
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_16

    .line 1970
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1974
    :goto_b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1975
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1968
    return-void

    .line 1972
    :cond_16
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postSetSelectionCommand(II)V
    .registers 4
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_1b

    .line 2064
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    .line 2068
    :goto_b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->-set1(Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;I)I

    .line 2069
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-static {v0, p2}, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->-set0(Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;I)I

    .line 2070
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2062
    return-void

    .line 2066
    :cond_1b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2014
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2016
    :cond_9
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 2017
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSetSelectionCommand:Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2019
    :cond_12
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 2020
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2022
    :cond_1b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->cancel()V

    .line 2012
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 2005
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2003
    :cond_9
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1983
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1981
    :cond_9
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1695
    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    .line 1696
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1697
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1699
    .end local v0    # "desiredWidth":I
    :cond_d
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 5
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1728
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    if-ne v1, p1, :cond_5

    .line 1729
    return-void

    .line 1732
    :cond_5
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    .line 1733
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1738
    :goto_d
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    .line 1739
    .local v0, "previous":I
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    .line 1740
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1741
    if-eqz p2, :cond_19

    .line 1742
    invoke-direct {p0, v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->notifyChange(II)V

    .line 1744
    :cond_19
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1745
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1727
    return-void

    .line 1735
    .end local v0    # "previous":I
    :cond_20
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1736
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_d
.end method

.method private showSoftInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1250
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 1251
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_19

    .line 1252
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1254
    :cond_19
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1255
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1248
    :cond_23
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 11

    .prologue
    .line 1282
    iget-boolean v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_5

    .line 1283
    return-void

    .line 1285
    :cond_5
    const/4 v4, 0x0

    .line 1286
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_4b

    .line 1287
    const/4 v3, 0x0

    .line 1288
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v8, 0x9

    if-gt v2, v8, :cond_22

    .line 1289
    iget-object v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1290
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1f

    .line 1291
    move v3, v1

    .line 1288
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1294
    .end local v1    # "digitWidth":F
    :cond_22
    const/4 v5, 0x0

    .line 1295
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    .line 1296
    .local v0, "current":I
    :goto_25
    if-lez v0, :cond_2c

    .line 1297
    add-int/lit8 v5, v5, 0x1

    .line 1298
    div-int/lit8 v0, v0, 0xa

    goto :goto_25

    .line 1300
    :cond_2c
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1310
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_2f
    iget-object v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1311
    iget v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_4a

    .line 1312
    iget v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_64

    .line 1313
    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    .line 1317
    :goto_47
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1281
    :cond_4a
    return-void

    .line 1302
    .end local v2    # "i":I
    :cond_4b
    iget-object v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1303
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v7, :cond_2f

    .line 1304
    iget-object v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1305
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_61

    .line 1306
    float-to-int v4, v6

    .line 1303
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1315
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_64
    iget v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    goto :goto_47
.end method

.method private updateInputTextView()Z
    .registers 5

    .prologue
    .line 1943
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_22

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1945
    .local v0, "text":Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1950
    :cond_20
    const/4 v1, 0x0

    return v1

    .line 1944
    .end local v0    # "text":Ljava/lang/String;
    :cond_22
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_a

    .line 1946
    :cond_2c
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    const/4 v1, 0x1

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1918
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1921
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1917
    :goto_13
    return-void

    .line 1924
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1925
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    goto :goto_13
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 4
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1634
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1625
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1095
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1096
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1097
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1098
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1099
    return-void

    .line 1102
    :cond_12
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1103
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1104
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_23

    .line 1105
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    .line 1107
    :cond_23
    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->scrollBy(II)V

    .line 1108
    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPreviousScrollerY:I

    .line 1109
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1110
    invoke-direct {p0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1094
    :goto_35
    return-void

    .line 1112
    :cond_36
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    goto :goto_35
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1047
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1090
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1022
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1023
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_10

    .line 1029
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1026
    :sswitch_c
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 1023
    :sswitch_data_10
    .sparse-switch
        0x17 -> :sswitch_c
        0x42 -> :sswitch_c
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1011
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 1017
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1014
    :pswitch_c
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 1011
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1035
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 1041
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1038
    :pswitch_c
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 1035
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .prologue
    .line 1655
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1484
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 1419
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 1386
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 1172
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1479
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 1377
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    .line 1488
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1495
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1496
    return-void

    .line 1498
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getLeft()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1499
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1517
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    move/from16 v22, v0

    if-nez v22, :cond_ae

    .line 1518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowVisible:Z

    move/from16 v22, v0

    .line 1517
    if-eqz v22, :cond_ae

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1520
    .local v19, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1521
    .local v5, "h":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowMarginTopBottom:I

    .line 1522
    .local v15, "t_gap":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPickerWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v19

    div-int/lit8 v8, v22, 0x2

    .line 1523
    .local v8, "l":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPickerHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v5

    sub-int v14, v22, v15

    .line 1529
    .local v14, "t_below":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a0

    .line 1530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_86

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8e

    :cond_86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v22, v0

    .line 1529
    if-eqz v22, :cond_1a0

    .line 1533
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v14, v5

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1561
    .end local v5    # "h":I
    .end local v8    # "l":I
    .end local v14    # "t_below":I
    .end local v15    # "t_gap":I
    .end local v19    # "w":I
    :cond_ae
    :goto_ae
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    .line 1562
    .local v13, "selectorIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b3
    array-length v0, v13

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_36f

    .line 1563
    aget v12, v13, v7

    .line 1564
    .local v12, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1570
    .local v11, "scrollSelectorValue":Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getVisibility()I

    move-result v22

    if-eqz v22, :cond_18f

    .line 1571
    :cond_dc
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_325

    .line 1572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v6, v22, v23

    .line 1573
    .local v6, "halfTextSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v9, v0

    .line 1574
    .local v9, "middleDist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v10, v0

    .line 1575
    .local v10, "middleTextSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v4, v0

    .line 1576
    .local v4, "extra":F
    move/from16 v18, v4

    .line 1577
    .local v18, "textSizeDiff":F
    neg-float v0, v6

    move/from16 v22, v0

    cmpl-float v22, v9, v22

    if-lez v22, :cond_2c2

    const/16 v22, 0x0

    cmpg-float v22, v9, v22

    if-gtz v22, :cond_2c2

    .line 1578
    add-float v22, v9, v6

    mul-float v22, v22, v4

    div-float v4, v22, v6

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v10, v22, v4

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputTextOpaque:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v24, v4, v18

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1589
    :goto_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const-string/jumbo v23, "#249af7"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1603
    .end local v4    # "extra":F
    .end local v6    # "halfTextSize":F
    .end local v9    # "middleDist":F
    .end local v10    # "middleTextSize":F
    .end local v18    # "textSizeDiff":F
    :goto_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1605
    :cond_18f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    .line 1562
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b3

    .line 1535
    .end local v7    # "i":I
    .end local v11    # "scrollSelectorValue":Ljava/lang/String;
    .end local v12    # "selectorIndex":I
    .end local v13    # "selectorIndices":[I
    .restart local v5    # "h":I
    .restart local v8    # "l":I
    .restart local v14    # "t_below":I
    .restart local v15    # "t_gap":I
    .restart local v19    # "w":I
    :cond_1a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ec

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ca

    :cond_1c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v22, v0

    .line 1535
    if-eqz v22, :cond_1ec

    .line 1539
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v5, v15

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1541
    :cond_1ec
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_ae

    .line 1542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_280

    .line 1543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_22a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_280

    .line 1544
    :cond_22a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25e

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v5, v15

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1548
    :cond_25e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v14, v5

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1552
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v5, v15

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v8, v19

    add-int v24, v14, v5

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1581
    .end local v5    # "h":I
    .end local v8    # "l":I
    .end local v14    # "t_below":I
    .end local v15    # "t_gap":I
    .end local v19    # "w":I
    .restart local v4    # "extra":F
    .restart local v6    # "halfTextSize":F
    .restart local v7    # "i":I
    .restart local v9    # "middleDist":F
    .restart local v10    # "middleTextSize":F
    .restart local v11    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v12    # "selectorIndex":I
    .restart local v13    # "selectorIndices":[I
    .restart local v18    # "textSizeDiff":F
    :cond_2c2
    const/16 v22, 0x0

    cmpl-float v22, v9, v22

    if-lez v22, :cond_306

    cmpg-float v22, v9, v6

    if-gez v22, :cond_306

    .line 1582
    sub-float v22, v6, v9

    mul-float v22, v22, v4

    div-float v4, v22, v6

    .line 1583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v10, v22, v4

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputTextOpaque:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v24, v4, v18

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_163

    .line 1586
    :cond_306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputTextOpaque:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_163

    .line 1592
    .end local v4    # "extra":F
    .end local v6    # "halfTextSize":F
    .end local v9    # "middleDist":F
    .end local v10    # "middleTextSize":F
    .end local v18    # "textSizeDiff":F
    :cond_325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTextSizeTopBottom:I

    move/from16 v17, v0

    .line 1593
    .local v17, "textSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputTextOpaque:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1594
    .local v16, "textOpaque":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, 0x19

    const/16 v24, 0x19

    const/16 v25, 0x19

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_17e

    .line 1493
    .end local v11    # "scrollSelectorValue":Ljava/lang/String;
    .end local v12    # "selectorIndex":I
    .end local v16    # "textOpaque":I
    .end local v17    # "textSize":I
    :cond_36f
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1639
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1640
    const-class v0, Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1641
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1642
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1643
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1638
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 850
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 854
    .local v0, "action":I
    packed-switch v0, :pswitch_data_a4

    .line 910
    return v5

    .line 851
    .end local v0    # "action":I
    :cond_14
    return v5

    .line 856
    .restart local v0    # "action":I
    :pswitch_15
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    .line 857
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventY:F

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownOrMoveEventY:F

    .line 859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventTime:J

    .line 860
    iput-boolean v5, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIngonreMoveEvents:Z

    .line 861
    iput-boolean v5, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mShowSoftInputOnTap:Z

    .line 875
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 876
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 877
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 878
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 879
    invoke-direct {p0, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollStateChange(I)V

    .line 907
    :cond_4c
    :goto_4c
    return v4

    .line 880
    :cond_4d
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_60

    .line 881
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 882
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_4c

    .line 883
    :cond_60
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7f

    .line 884
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->hideSoftInput()V

    .line 888
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 887
    invoke-direct {p0, v4, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 889
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-nez v1, :cond_4c

    .line 890
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    .line 891
    const/4 v2, 0x2

    .line 890
    invoke-virtual {v1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_4c

    .line 893
    :cond_7f
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventY:F

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9d

    .line 894
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->hideSoftInput()V

    .line 898
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 897
    invoke-direct {p0, v5, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 899
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-nez v1, :cond_4c

    .line 900
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    invoke-virtual {v1, v4}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_4c

    .line 904
    :cond_9d
    iput-boolean v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mShowSoftInputOnTap:Z

    .line 905
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_4c

    .line 854
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 774
    iget-boolean v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-nez v9, :cond_8

    .line 775
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 776
    return-void

    .line 778
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMeasuredWidth()I

    move-result v8

    .line 779
    .local v8, "msrdWdth":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMeasuredHeight()I

    move-result v7

    .line 782
    .local v7, "msrdHght":I
    iget-object v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v4

    .line 783
    .local v4, "inptTxtMsrdWdth":I
    iget-object v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 784
    .local v3, "inptTxtMsrdHght":I
    sub-int v9, v8, v4

    div-int/lit8 v2, v9, 0x2

    .line 785
    .local v2, "inptTxtLeft":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 786
    .local v0, "adjustInptTxtTop":I
    sub-int v9, v7, v3

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v9, v0

    .line 787
    .local v6, "inptTxtTop":I
    add-int v5, v2, v4

    .line 788
    .local v5, "inptTxtRight":I
    add-int v1, v6, v3

    .line 789
    .local v1, "inptTxtBottom":I
    iget-object v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9, v2, v6, v5, v1}, Landroid/widget/EditText;->layout(IIII)V

    .line 791
    if-eqz p1, :cond_5f

    .line 793
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheel()V

    .line 794
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeFadingEdges()V

    .line 795
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 796
    iget v10, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividerHeight:I

    .line 795
    sub-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTopSelectionDividerTop:I

    .line 797
    iget v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTopSelectionDividerTop:I

    iget v10, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 798
    iget v10, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectionDividersDistance:I

    .line 797
    add-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mBottomSelectionDividerBottom:I

    .line 773
    :cond_5f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 804
    iget-boolean v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_8

    .line 805
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 806
    return-void

    .line 809
    :cond_8
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 810
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 811
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 813
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 815
    .local v3, "widthSize":I
    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/pantech/widget/SkyWheelNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 817
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMeasuredDimension(II)V

    .line 803
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2339
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPickerWidth:I

    .line 2340
    iput p2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPickerHeight:I

    .line 2336
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    move/from16 v16, v0

    if-eqz v16, :cond_37

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_20

    .line 919
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 921
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 923
    .local v2, "action":I
    packed-switch v2, :pswitch_data_1d0

    .line 1005
    :cond_34
    :goto_34
    const/16 v16, 0x1

    return v16

    .line 916
    .end local v2    # "action":I
    :cond_37
    const/16 v16, 0x0

    return v16

    .line 925
    .restart local v2    # "action":I
    :pswitch_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIngonreMoveEvents:Z

    move/from16 v16, v0

    if-nez v16, :cond_34

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 929
    .local v3, "currentMoveY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7c

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventY:F

    move/from16 v16, v0

    sub-float v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v4, v0

    .line 931
    .local v4, "deltaDownY":I
    const/16 v14, 0x42

    .line 933
    .local v14, "touchSlopY":I
    const/16 v16, 0x42

    move/from16 v0, v16

    if-le v4, v0, :cond_77

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeAllCallbacks()V

    .line 935
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollStateChange(I)V

    .line 943
    .end local v4    # "deltaDownY":I
    .end local v14    # "touchSlopY":I
    :cond_77
    :goto_77
    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_34

    .line 939
    :cond_7c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownOrMoveEventY:F

    move/from16 v16, v0

    sub-float v16, v3, v16

    move/from16 v0, v16

    float-to-int v5, v0

    .line 940
    .local v5, "deltaMoveY":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->scrollBy(II)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    goto :goto_77

    .line 946
    .end local v3    # "currentMoveY":F
    .end local v5    # "deltaMoveY":I
    :pswitch_94
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeBeginSoftInputCommand()V

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->cancel()V

    .line 949
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 950
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaximumFlingVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 951
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v9, v0

    .line 952
    .local v9, "initialVelocity":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinimumFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_f6

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->hideSoftInput()V

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->fling(I)V

    .line 957
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollStateChange(I)V

    .line 1001
    :goto_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->recycle()V

    .line 1002
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/widget/SkyWheelNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_34

    .line 959
    :cond_f6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v8, v0

    .line 960
    .local v8, "eventY":I
    int-to-float v0, v8

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v5, v0

    .line 961
    .restart local v5    # "deltaMoveY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLastDownEventTime:J

    move-wide/from16 v18, v0

    sub-long v6, v16, v18

    .line 962
    .local v6, "deltaTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v5, v0, :cond_1bf

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v6, v16

    if-gez v16, :cond_1bf

    .line 963
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mShowSoftInputOnTap:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14f

    .line 964
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/widget/SkyWheelNumberPicker;->mShowSoftInputOnTap:Z

    .line 965
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->showSoftInput()V

    .line 999
    :cond_145
    :goto_145
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->onScrollStateChange(I)V

    goto :goto_e3

    .line 969
    :cond_14f
    const/4 v13, 0x0

    .line 970
    .local v13, "selectorIndexOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    const/high16 v17, 0x41400000    # 12.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v11, v0

    .line 971
    .local v11, "offsetBottomExtra":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 972
    .local v12, "offsetTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int v10, v16, v11

    .line 973
    .local v10, "offsetBottom":I
    if-ge v8, v12, :cond_19d

    .line 974
    const/4 v13, -0x1

    .line 978
    :cond_186
    :goto_186
    if-lez v13, :cond_1a1

    .line 980
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->changeValueByOne(Z)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    move-object/from16 v16, v0

    .line 982
    const/16 v17, 0x1

    .line 981
    invoke-virtual/range {v16 .. v17}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_145

    .line 975
    :cond_19d
    if-le v8, v10, :cond_186

    .line 976
    const/4 v13, 0x1

    goto :goto_186

    .line 983
    :cond_1a1
    if-gez v13, :cond_1b8

    .line 985
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->changeValueByOne(Z)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mPressedStateHelper:Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;

    move-object/from16 v16, v0

    .line 987
    const/16 v17, 0x2

    .line 986
    invoke-virtual/range {v16 .. v17}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_145

    .line 989
    :cond_1b8
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->hideSoftInput()V

    goto :goto_145

    .line 994
    .end local v10    # "offsetBottom":I
    .end local v11    # "offsetBottomExtra":I
    .end local v12    # "offsetTop":I
    .end local v13    # "selectorIndexOffset":I
    :cond_1bf
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 995
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIngonreMoveEvents:Z

    move/from16 v16, v0

    if-nez v16, :cond_145

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->hideSoftInput()V

    goto/16 :goto_145

    .line 923
    nop

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_94
        :pswitch_3a
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1130
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    .line 1131
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_27

    if-lez p2, :cond_27

    .line 1132
    aget v1, v0, v4

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_27

    .line 1133
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1134
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-eq v1, v5, :cond_26

    .line 1135
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_26

    .line 1136
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1139
    :cond_26
    return-void

    .line 1141
    :cond_27
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_49

    if-gez p2, :cond_49

    .line 1142
    aget v1, v0, v4

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_49

    .line 1143
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1144
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mScrollState:I

    if-eq v1, v5, :cond_48

    .line 1145
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_48

    .line 1146
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1149
    :cond_48
    return-void

    .line 1151
    :cond_49
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1152
    :cond_4e
    :goto_4e
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_75

    .line 1153
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1154
    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->decrementSelectorIndices([I)V

    .line 1155
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    .line 1156
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4e

    aget v1, v0, v4

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4e

    .line 1157
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    goto :goto_4e

    .line 1160
    :cond_75
    :goto_75
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_9d

    .line 1161
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    .line 1162
    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->incrementSelectorIndices([I)V

    .line 1163
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    .line 1164
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_75

    aget v1, v0, v4

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_75

    .line 1165
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mCurrentScrollOffset:I

    goto :goto_75

    .line 1129
    :cond_9d
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1462
    return-void

    .line 1464
    :cond_5
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1465
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1467
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1472
    :goto_13
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1473
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1474
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->tryComputeMaxWidth()V

    .line 1460
    return-void

    .line 1470
    :cond_1d
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1118
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1119
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 1120
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1122
    :cond_c
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 1123
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1125
    :cond_15
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1117
    return-void
.end method

.method setFiltersWithLimitedLength(I)V
    .registers 6
    .param p1, "max"    # I

    .prologue
    const/4 v3, 0x0

    .line 2075
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    if-ltz p1, :cond_1e

    .line 2076
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;

    invoke-direct {v2, p0}, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;-><init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2074
    :cond_1e
    return-void
.end method

.method public setFormatter(Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFormatter:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1206
    return-void

    .line 1208
    :cond_5
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mFormatter:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    .line 1209
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1210
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1204
    return-void
.end method

.method public setMaxValue(I)V
    .registers 5
    .param p1, "maxValue"    # I

    .prologue
    .line 1428
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_5

    .line 1429
    return-void

    .line 1431
    :cond_5
    if-gez p1, :cond_10

    .line 1432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1434
    :cond_10
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    .line 1435
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    if-ge v1, v2, :cond_1c

    .line 1436
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    .line 1438
    :cond_1c
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_37

    const/4 v0, 0x1

    .line 1439
    .local v0, "wrapSelectorWheel":Z
    :goto_27
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1440
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1441
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1442
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->tryComputeMaxWidth()V

    .line 1443
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1427
    return-void

    .line 1438
    .end local v0    # "wrapSelectorWheel":Z
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "wrapSelectorWheel":Z
    goto :goto_27
.end method

.method public setMinValue(I)V
    .registers 5
    .param p1, "minValue"    # I

    .prologue
    .line 1395
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_5

    .line 1396
    return-void

    .line 1398
    :cond_5
    if-gez p1, :cond_10

    .line 1399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_10
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    .line 1402
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    if-le v1, v2, :cond_1c

    .line 1403
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    iput v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mValue:I

    .line 1405
    :cond_1c
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_37

    const/4 v0, 0x1

    .line 1406
    .local v0, "wrapSelectorWheel":Z
    :goto_27
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1407
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->initializeSelectorWheelIndices()V

    .line 1408
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->updateInputTextView()Z

    .line 1409
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->tryComputeMaxWidth()V

    .line 1410
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 1394
    return-void

    .line 1405
    .end local v0    # "wrapSelectorWheel":Z
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "wrapSelectorWheel":Z
    goto :goto_27
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 4
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1368
    iput-wide p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mLongPressUpdateInterval:J

    .line 1367
    return-void
.end method

.method public setOnScrollListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnScrollListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnScrollListener;

    .line 1189
    return-void
.end method

.method public setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mOnValueChangeListener:Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;

    .line 1180
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValueInternal(IZ)V

    .line 1241
    return-void
.end method

.method public setVisibilityArrowDrawable(Z)V
    .registers 2
    .param p1, "vis"    # Z

    .prologue
    .line 2345
    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mArrowVisible:Z

    .line 2347
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    .line 2343
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 5
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1351
    iget v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_16

    const/4 v0, 0x1

    .line 1352
    .local v0, "wrappingAllowed":Z
    :goto_b
    if-eqz p1, :cond_f

    if-eqz v0, :cond_15

    :cond_f
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_15

    .line 1353
    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker;->mWrapSelectorWheel:Z

    .line 1350
    :cond_15
    return-void

    .line 1351
    .end local v0    # "wrappingAllowed":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "wrappingAllowed":Z
    goto :goto_b
.end method
