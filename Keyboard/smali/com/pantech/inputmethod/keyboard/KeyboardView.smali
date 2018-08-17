.class public Lcom/pantech/inputmethod/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;,
        Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;,
        Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;
    }
.end annotation


# static fields
.field private static final KEY_LABEL_REFERENCE_CHAR:[C

.field private static final KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

.field private static final LABEL_ICON_MARGIN:F = 0.05f

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static final MAX_LABEL_RATIO:F = 0.9f

.field private static final TAG:Ljava/lang/String;

.field private static keyDebug:Z

.field private static mEmoticonPadding:I

.field static mIsMoreSettings:Z

.field private static final sTextBounds:Landroid/graphics/Rect;

.field private static final sTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextWidthCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mBufferNeedsUpdate:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

.field private mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mInvalidatedKeyRect:Landroid/graphics/Rect;

.field private final mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

.field protected final mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

.field private final mKeyPreviewLayoutId:I

.field private mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

.field protected final mMoreKeysLayout:I

.field private mNeedsToDimBackground:Z

.field private mNeedsToDimBackgroundRect:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewPlacer:Landroid/view/ViewGroup;

.field private mShowKeyPreviewPopup:Z

.field protected final mVerticalCorrection:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-class v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    .line 113
    new-array v0, v3, [C

    const/16 v1, 0x4d

    aput-char v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    .line 115
    new-array v0, v3, [C

    const/16 v1, 0x38

    aput-char v1, v0, v2

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    .line 117
    sput-boolean v2, Lcom/pantech/inputmethod/keyboard/KeyboardView;->keyDebug:Z

    .line 609
    sput-boolean v2, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mIsMoreSettings:Z

    .line 1042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 384
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    .line 106
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    .line 389
    sget-object v2, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardView:[I

    const v3, 0x7f0e001f

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 392
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 393
    new-instance v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;-><init>(Landroid/content/res/TypedArray;Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 394
    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    .line 395
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-nez v2, :cond_4a

    .line 396
    iput-boolean v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 398
    :cond_4a
    const/16 v2, 0x25

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    .line 400
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mMoreKeysLayout:I

    .line 401
    const/16 v2, 0x29

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    .line 402
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 406
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    .line 407
    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 409
    const v2, 0x7f0a006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mEmoticonPadding:I

    .line 410
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 412
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/KeyboardView;IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->showKey(IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/res/TypedArray;I)F
    .registers 3
    .param p0, "x0"    # Landroid/content/res/TypedArray;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v0

    return v0
.end method

.method private addKeyPreview(Landroid/widget/TextView;)V
    .registers 6
    .param p1, "keyPreview"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, 0x0

    .line 1177
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-nez v1, :cond_22

    .line 1178
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    .line 1179
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1181
    .local v0, "windowContentView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1183
    .end local v0    # "windowContentView":Landroid/view/ViewGroup;
    :cond_22
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v3}, Lcom/pantech/inputmethod/compat/FrameLayoutCompatUtils;->newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    return-void
.end method

.method private static adjustTextSize(IILjava/lang/CharSequence;Landroid/graphics/Paint;)V
    .registers 8
    .param p0, "labelSize"    # I
    .param p1, "keyWidth"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1095
    invoke-static {p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v0

    .line 1096
    .local v0, "labelWidth":F
    sget v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mEmoticonPadding:I

    sub-int v1, p1, v3

    .line 1097
    .local v1, "newKeyWidth":I
    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_23

    .line 1098
    move v2, p0

    .line 1099
    .local v2, "textSize":I
    :cond_e
    if-lez v2, :cond_1f

    .line 1100
    add-int/lit8 v2, v2, -0x1

    .line 1101
    int-to-float v3, v2

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1102
    invoke-static {p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v0

    .line 1103
    int-to-float v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_e

    .line 1105
    :cond_1f
    int-to-float v3, v2

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1107
    .end local v2    # "textSize":I
    :cond_23
    return-void
.end method

.method private static drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .registers 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "y"    # F
    .param p2, "w"    # F
    .param p3, "color"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1119
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1120
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1121
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1122
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1123
    return-void
.end method

.method private static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 9
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1111
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1112
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1113
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1114
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1115
    return-void
.end method

.method private static drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V
    .registers 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "color"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 1134
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1135
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1136
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1137
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move v2, v1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1138
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1139
    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1140
    return-void
.end method

.method private static drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .registers 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "h"    # F
    .param p3, "color"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1126
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1127
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1128
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1130
    return-void
.end method

.method private static getCharGeometryCacheKey(CLandroid/graphics/Paint;)I
    .registers 6
    .param p0, "reference"    # C
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v2, v3

    .line 1046
    .local v2, "labelSize":I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 1047
    .local v1, "face":Landroid/graphics/Typeface;
    shl-int/lit8 v0, p0, 0xf

    .line 1048
    .local v0, "codePointOffset":I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_12

    .line 1049
    add-int v3, v0, v2

    .line 1055
    :goto_11
    return v3

    .line 1050
    :cond_12
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_1b

    .line 1051
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x1000

    goto :goto_11

    .line 1052
    :cond_1b
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_24

    .line 1053
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x2000

    goto :goto_11

    .line 1055
    :cond_24
    add-int v3, v0, v2

    goto :goto_11
.end method

.method private static getCharHeight([CLandroid/graphics/Paint;)F
    .registers 8
    .param p0, "character"    # [C
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 1060
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1061
    .local v2, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1062
    .local v0, "cachedValue":Ljava/lang/Float;
    if-eqz v0, :cond_1a

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1068
    :goto_19
    return v1

    .line 1065
    :cond_1a
    const/4 v3, 0x1

    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 1066
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v1, v3

    .line 1067
    .local v1, "height":F
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private static getCharWidth([CLandroid/graphics/Paint;)F
    .registers 8
    .param p0, "character"    # [C
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    .line 1072
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1073
    .local v1, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1074
    .local v0, "cachedValue":Ljava/lang/Float;
    if-eqz v0, :cond_1a

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1080
    :goto_19
    return v2

    .line 1077
    :cond_1a
    const/4 v3, 0x1

    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 1078
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v2, v3

    .line 1079
    .local v2, "width":F
    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private static getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .registers 6
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1084
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget-object v3, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1085
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private static getRatio(Landroid/content/res/TypedArray;I)F
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x3e8

    .line 417
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private onBufferDraw(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v17

    .line 539
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v13

    .line 540
    .local v13, "height":I
    if-eqz v17, :cond_c

    if-nez v13, :cond_d

    .line 593
    :cond_c
    :goto_c
    return-void

    .line 542
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v13, :cond_5e

    .line 543
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_36

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 545
    :cond_36
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v4, v7, v0, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_10e

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    :cond_5e
    :goto_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 554
    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 555
    const/high16 v2, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_c

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v6

    .line 560
    .local v6, "isManualTemporaryUpperCase":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 561
    .local v5, "params":Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v2, :cond_11d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    iget v4, v4, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int v15, v2, v4

    .line 565
    .local v15, "keyDrawX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v16, v2, v4

    .line 566
    .local v16, "keyDrawY":I
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;ZLandroid/content/Context;)V

    .line 569
    neg-int v2, v15

    int-to-float v2, v2

    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 582
    .end local v15    # "keyDrawX":I
    .end local v16    # "keyDrawY":I
    :cond_d8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    if-eqz v2, :cond_100

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackgroundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_164

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 591
    :cond_100
    :goto_100
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_c

    .line 550
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "params":Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .end local v6    # "isManualTemporaryUpperCase":Z
    :cond_10e
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5e

    .line 572
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "params":Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .restart local v6    # "isManualTemporaryUpperCase":Z
    :cond_11d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v2, v2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_127
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 573
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int v15, v2, v4

    .line 574
    .restart local v15    # "keyDrawX":I
    iget v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v16, v2, v4

    .line 575
    .restart local v16    # "keyDrawY":I
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;ZLandroid/content/Context;)V

    .line 577
    neg-int v2, v15

    int-to-float v2, v2

    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_127

    .line 587
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "keyDrawX":I
    .end local v16    # "keyDrawY":I
    :cond_164
    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v17

    int-to-float v10, v0

    int-to-float v11, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_100
.end method

.method private static onBufferDrawKey(Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;ZLandroid/content/Context;)V
    .registers 71
    .param p0, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "params"    # Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .param p5, "isManualTemporaryUpperCase"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    sget-boolean v41, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sVISUALDEBUG:Z

    .line 613
    .local v41, "debugShowAlign":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x9

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x190

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v6, -0x7

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x75

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v6, -0x8

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x7a

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x7b

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x7c

    if-ne v4, v6, :cond_42e

    :cond_40
    const/4 v4, 0x1

    :goto_41
    sput-boolean v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mIsMoreSettings:Z

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v4

    if-nez v4, :cond_f8

    .line 620
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int v34, v4, v6

    .line 622
    .local v34, "bgWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v33, v4, v6

    .line 623
    .local v33, "bgHeight":I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v0, v4

    move/from16 v35, v0

    .line 624
    .local v35, "bgX":I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v0, v4

    move/from16 v36, v0

    .line 625
    .local v36, "bgY":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v43

    .line 627
    .local v43, "drawableState":[I
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 628
    .local v32, "background":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 629
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v38

    .line 630
    .local v38, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v38

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v34

    if-ne v0, v4, :cond_b0

    move-object/from16 v0, v38

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v33

    if-eq v0, v4, :cond_bb

    .line 631
    :cond_b0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    :cond_bb
    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v36

    int-to-float v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x7d

    if-eq v4, v6, :cond_d5

    .line 635
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 636
    :cond_d5
    if-eqz v41, :cond_eb

    .line 637
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v34

    int-to-float v7, v0

    move/from16 v0, v33

    int-to-float v8, v0

    const/high16 v9, -0x7f400000

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 639
    :cond_eb
    move/from16 v0, v35

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v36

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 643
    .end local v32    # "background":Landroid/graphics/drawable/Drawable;
    .end local v33    # "bgHeight":I
    .end local v34    # "bgWidth":I
    .end local v35    # "bgX":I
    .end local v36    # "bgY":I
    .end local v38    # "bounds":Landroid/graphics/Rect;
    .end local v43    # "drawableState":[I
    :cond_f8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v50, v4, v6

    .line 644
    .local v50, "keyWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v49, v0

    .line 645
    .local v49, "keyHeight":I
    move/from16 v0, v50

    int-to-float v4, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v39, v4, v6

    .line 646
    .local v39, "centerX":F
    move/from16 v0, v49

    int-to-float v4, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v40, v4, v6

    .line 648
    .local v40, "centerY":F
    if-eqz v41, :cond_132

    .line 649
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v50

    int-to-float v7, v0

    move/from16 v0, v49

    int-to-float v8, v0

    const v9, -0x7fffff40

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 653
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 654
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_13f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 655
    :cond_13f
    move/from16 v8, v39

    .line 658
    .local v8, "positionX":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v4, v4, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_431

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v4, v4, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_431

    const/16 v48, 0x1

    .line 663
    .local v48, "isPortraitFloatingMode":Z
    :goto_155
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v4, v4, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_435

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_435

    const/16 v62, 0x1

    .line 667
    .local v62, "useFloatingLabel":Z
    :goto_166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_48f

    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mIsMoreSettings:Z

    if-eqz v4, :cond_48f

    .line 668
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 670
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a00b0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 671
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a00af

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v37, v0

    .line 673
    .local v37, "bottomMargin":I
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v51

    .line 674
    .local v51, "labelCharHeight":F
    move/from16 v0, v49

    int-to-float v4, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v51, v6

    sub-float/2addr v4, v6

    move/from16 v0, v37

    int-to-float v6, v0

    sub-float v9, v4, v6

    .line 677
    .local v9, "baseline":F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 678
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 680
    const-string v4, "com.pantech.inputmethod.skyime_preferences"

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v61

    .line 682
    .local v61, "sp":Landroid/content/SharedPreferences;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-static {v0, v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v47

    .line 684
    .local v47, "iconType":I
    const/4 v4, 0x1

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/4 v4, 0x4

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/4 v4, 0x6

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/4 v4, 0x7

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/16 v4, 0x8

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/16 v4, 0x9

    move/from16 v0, v47

    if-eq v0, v4, :cond_1f2

    const/16 v4, 0xa

    move/from16 v0, v47

    if-ne v0, v4, :cond_439

    .line 691
    :cond_1f2
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    :goto_202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v56, v0

    .line 697
    .local v56, "mLabelWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    add-int/lit8 v4, v4, -0x6

    move/from16 v0, v56

    if-ge v0, v4, :cond_44b

    .line 698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 871
    .end local v9    # "baseline":F
    .end local v37    # "bottomMargin":I
    .end local v47    # "iconType":I
    .end local v51    # "labelCharHeight":F
    .end local v56    # "mLabelWidth":I
    .end local v61    # "sp":Landroid/content/SharedPreferences;
    :cond_236
    :goto_236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2c5

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 875
    .local v17, "hint":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_821

    .line 877
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v44

    .line 878
    .local v44, "hintColor":I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    move/from16 v45, v0

    .line 898
    .local v45, "hintSize":I
    :goto_25b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 899
    move/from16 v0, v45

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 900
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_862

    .line 911
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    move/from16 v20, v0

    .line 912
    .local v20, "hintX":F
    move/from16 v0, v49

    int-to-float v4, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v21, v4, v6

    .line 913
    .local v21, "hintY":F
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 944
    :goto_28f
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v16, p2

    move-object/from16 v22, p3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 945
    if-eqz v41, :cond_2c5

    .line 946
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 947
    .local v28, "line":Landroid/graphics/Paint;
    move/from16 v0, v21

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v50

    int-to-float v6, v0

    const v7, -0x3f7f8000    # -4.015625f

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 948
    move/from16 v0, v20

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v49

    int-to-float v6, v0

    const v7, -0x3f7f8000    # -4.015625f

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 954
    .end local v17    # "hint":Ljava/lang/CharSequence;
    .end local v20    # "hintX":F
    .end local v21    # "hintY":F
    .end local v28    # "line":Landroid/graphics/Paint;
    .end local v44    # "hintColor":I
    .end local v45    # "hintSize":I
    :cond_2c5
    if-eqz v11, :cond_3a0

    .line 957
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 958
    .local v14, "iconWidth":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 960
    .local v15, "iconHeight":I
    sub-int v4, v49, v15

    div-int/lit8 v13, v4, 0x2

    .line 961
    .local v13, "iconY":I
    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mIsMoreSettings:Z

    if-eqz v4, :cond_2d9

    .line 962
    div-int/lit8 v13, v13, 0x4

    .line 964
    :cond_2d9
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_8e0

    .line 965
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v12, v4

    .line 966
    .local v12, "iconX":I
    move/from16 v29, v12

    .line 976
    .local v29, "alignX":I
    :goto_2e6
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v42

    .line 977
    .local v42, "drawable":Lcom/pantech/inputmethod/style/KeyDrawable;
    invoke-static/range {p6 .. p6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v57

    .line 979
    .local v57, "pref":Landroid/content/SharedPreferences;
    const-string v4, "opacity_text"

    const/16 v6, 0x64

    move-object/from16 v0, v57

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 980
    .local v30, "alpha":I
    move-object/from16 v0, v42

    move-object/from16 v1, p6

    move/from16 v2, v30

    invoke-virtual {v0, v1, v11, v2}, Lcom/pantech/inputmethod/style/KeyDrawable;->setAlphaForIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 983
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v6, -0x6

    if-ne v4, v6, :cond_31b

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_31b

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v6, 0x14

    move-object/from16 v0, v42

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v4, v6}, Lcom/pantech/inputmethod/style/KeyDrawable;->setAlphaForIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    :cond_31b
    move-object/from16 v10, p2

    .line 988
    invoke-static/range {v10 .. v15}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 989
    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->keyDebug:Z

    if-eqz v4, :cond_376

    .line 990
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icon != null, key.mCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key.mKeyIconId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/Key;->mKeyIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_376
    if-eqz v41, :cond_3a0

    .line 1000
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 1001
    .restart local v28    # "line":Landroid/graphics/Paint;
    move/from16 v0, v29

    int-to-float v4, v0

    move/from16 v0, v49

    int-to-float v6, v0

    const v7, -0x3f7fff80    # -4.000061f

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 1002
    int-to-float v0, v12

    move/from16 v23, v0

    int-to-float v0, v13

    move/from16 v24, v0

    int-to-float v0, v14

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    const/high16 v27, -0x7f400000

    move-object/from16 v22, p2

    invoke-static/range {v22 .. v28}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 1005
    .end local v12    # "iconX":I
    .end local v13    # "iconY":I
    .end local v14    # "iconWidth":I
    .end local v15    # "iconHeight":I
    .end local v28    # "line":Landroid/graphics/Paint;
    .end local v29    # "alignX":I
    .end local v30    # "alpha":I
    .end local v42    # "drawable":Lcom/pantech/inputmethod/style/KeyDrawable;
    .end local v57    # "pref":Landroid/content/SharedPreferences;
    :cond_3a0
    if-nez v11, :cond_3e2

    .line 1006
    sget-boolean v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->keyDebug:Z

    if-eqz v4, :cond_3e2

    .line 1007
    sget-object v6, Lcom/pantech/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icon == null, key.mCode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", key.mLabel = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_8fd

    const-string v4, "null"

    :goto_3c9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", key.mKeyIconId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/Key;->mKeyIconId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_3e2
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getHintIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1017
    .local v23, "hintIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v23, :cond_42d

    .line 1018
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 1019
    .restart local v14    # "iconWidth":I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 1021
    .restart local v15    # "iconHeight":I
    const/4 v4, 0x1

    move/from16 v0, v48

    if-ne v0, v4, :cond_905

    .line 1022
    const/4 v12, 0x3

    .line 1023
    .restart local v12    # "iconX":I
    sub-int v4, v49, v15

    add-int/lit8 v13, v4, -0x3

    .line 1028
    .restart local v13    # "iconY":I
    :goto_3fa
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1031
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v42

    .line 1032
    .restart local v42    # "drawable":Lcom/pantech/inputmethod/style/KeyDrawable;
    invoke-static/range {p6 .. p6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v57

    .line 1034
    .restart local v57    # "pref":Landroid/content/SharedPreferences;
    const-string v4, "opacity_text"

    const/16 v6, 0x64

    move-object/from16 v0, v57

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 1035
    .restart local v30    # "alpha":I
    move-object/from16 v0, v42

    move-object/from16 v1, p6

    move-object/from16 v2, v23

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->setAlphaForIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v22, p2

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .line 1037
    invoke-static/range {v22 .. v27}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 1040
    .end local v12    # "iconX":I
    .end local v13    # "iconY":I
    .end local v14    # "iconWidth":I
    .end local v15    # "iconHeight":I
    .end local v30    # "alpha":I
    .end local v42    # "drawable":Lcom/pantech/inputmethod/style/KeyDrawable;
    .end local v57    # "pref":Landroid/content/SharedPreferences;
    :cond_42d
    return-void

    .line 613
    .end local v8    # "positionX":F
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "hintIcon":Landroid/graphics/drawable/Drawable;
    .end local v39    # "centerX":F
    .end local v40    # "centerY":F
    .end local v48    # "isPortraitFloatingMode":Z
    .end local v49    # "keyHeight":I
    .end local v50    # "keyWidth":I
    .end local v62    # "useFloatingLabel":Z
    :cond_42e
    const/4 v4, 0x0

    goto/16 :goto_41

    .line 658
    .restart local v8    # "positionX":F
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v39    # "centerX":F
    .restart local v40    # "centerY":F
    .restart local v49    # "keyHeight":I
    .restart local v50    # "keyWidth":I
    :cond_431
    const/16 v48, 0x0

    goto/16 :goto_155

    .line 663
    .restart local v48    # "isPortraitFloatingMode":Z
    :cond_435
    const/16 v62, 0x0

    goto/16 :goto_166

    .line 693
    .restart local v9    # "baseline":F
    .restart local v37    # "bottomMargin":I
    .restart local v47    # "iconType":I
    .restart local v51    # "labelCharHeight":F
    .restart local v61    # "sp":Landroid/content/SharedPreferences;
    .restart local v62    # "useFloatingLabel":Z
    :cond_439
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080017

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_202

    .line 700
    .restart local v56    # "mLabelWidth":I
    :cond_44b
    move/from16 v0, v37

    int-to-float v4, v0

    sub-float v4, v9, v4

    float-to-int v0, v4

    move/from16 v63, v0

    .line 701
    .local v63, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .local v31, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    .local v55, "len$":I
    const/16 v46, 0x0

    .local v46, "i$":I
    :goto_468
    move/from16 v0, v46

    move/from16 v1, v55

    if-ge v0, v1, :cond_236

    aget-object v28, v31, v46

    .line 702
    .local v28, "line":Ljava/lang/String;
    move/from16 v0, v63

    int-to-float v4, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v8, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 703
    move/from16 v0, v63

    int-to-float v4, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v63, v0

    .line 701
    add-int/lit8 v46, v46, 0x1

    goto :goto_468

    .line 707
    .end local v9    # "baseline":F
    .end local v28    # "line":Ljava/lang/String;
    .end local v31    # "arr$":[Ljava/lang/String;
    .end local v37    # "bottomMargin":I
    .end local v46    # "i$":I
    .end local v47    # "iconType":I
    .end local v51    # "labelCharHeight":F
    .end local v55    # "len$":I
    .end local v56    # "mLabelWidth":I
    .end local v61    # "sp":Landroid/content/SharedPreferences;
    .end local v63    # "y":I
    :cond_48f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_497

    if-eqz v62, :cond_236

    .line 711
    :cond_497
    const/4 v5, 0x0

    .line 713
    .local v5, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5f1

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5f1

    .line 714
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_5eb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 721
    :goto_4b1
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 724
    const/4 v4, 0x1

    move/from16 v0, v62

    if-ne v0, v4, :cond_655

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    if-eqz v4, :cond_4cf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    const-string v6, "MoreKeyboardKeyStyle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_655

    .line 730
    :cond_4cf
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 731
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 732
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_615

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_60a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const-string v6, "url"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_60a

    .line 734
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingLongLabelSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 746
    :goto_501
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x78

    if-eq v4, v6, :cond_511

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x79

    if-ne v4, v6, :cond_51c

    .line 748
    :cond_511
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_64f

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    .line 771
    :cond_51c
    :goto_51c
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v51

    .line 772
    .restart local v51    # "labelCharHeight":F
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v52

    .line 775
    .local v52, "labelCharWidth":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v51, v4

    add-float v9, v40, v4

    .line 777
    .restart local v9    # "baseline":F
    const/16 v54, 0x0

    .line 778
    .local v54, "labelWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_6dd

    .line 779
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    int-to-float v8, v4

    .line 780
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 802
    :goto_547
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->needsXScale()Z

    move-result v4

    if-eqz v4, :cond_566

    .line 803
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v50

    int-to-float v6, v0

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 807
    :cond_566
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_76f

    if-eqz p5, :cond_76f

    .line 808
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    :goto_577
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7f7

    .line 831
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iget v10, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 845
    :cond_58c
    :goto_58c
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 847
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 848
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 850
    if-eqz v11, :cond_5c8

    .line 851
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 852
    .restart local v14    # "iconWidth":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 853
    .restart local v15    # "iconHeight":I
    sub-int v4, v49, v15

    div-int/lit8 v13, v4, 0x2

    .line 854
    .restart local v13    # "iconY":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_80b

    .line 855
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v54, v4

    sub-float v4, v39, v4

    float-to-int v12, v4

    .restart local v12    # "iconX":I
    move-object/from16 v10, p2

    .line 856
    invoke-static/range {v10 .. v15}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 863
    .end local v12    # "iconX":I
    .end local v13    # "iconY":I
    .end local v14    # "iconWidth":I
    .end local v15    # "iconHeight":I
    :cond_5c8
    :goto_5c8
    if-eqz v41, :cond_236

    .line 864
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 865
    .local v28, "line":Landroid/graphics/Paint;
    move/from16 v0, v50

    int-to-float v4, v0

    const v6, -0x3fff8000    # -2.0078125f

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v9, v4, v6, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 866
    move/from16 v0, v49

    int-to-float v4, v0

    const v6, -0x3f7fff80    # -4.000061f

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v8, v4, v6, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    goto/16 :goto_236

    .line 714
    .end local v9    # "baseline":F
    .end local v28    # "line":Landroid/graphics/Paint;
    .end local v51    # "labelCharHeight":F
    .end local v52    # "labelCharWidth":F
    .end local v54    # "labelWidth":F
    :cond_5eb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    goto/16 :goto_4b1

    .line 716
    :cond_5f1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_5ff

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    :goto_5fd
    goto/16 :goto_4b1

    :cond_5ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5fd

    .line 736
    :cond_60a
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingSwitchLabelSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_501

    .line 738
    :cond_615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    if-eqz v4, :cond_633

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    const-string v6, "emoticonKeyStyle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_633

    .line 739
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingLongLabelSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_501

    .line 740
    :cond_633
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isFontFunction()Z

    move-result v4

    if-eqz v4, :cond_644

    .line 741
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingSwitchLabelSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_501

    .line 743
    :cond_644
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyFloatingLabelSize:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_501

    .line 751
    :cond_64f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_51c

    .line 757
    :cond_655
    move-object/from16 v0, p1

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOneHandMode:I

    if-nez v4, :cond_6d3

    const/high16 v58, 0x3f800000    # 1.0f

    .line 758
    .local v58, "ratio1":F
    :goto_65d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    if-eqz v4, :cond_6d7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mStyleName:Ljava/lang/String;

    const-string v6, "emoticonKeyStyle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d7

    const v59, 0x3f666666    # 0.9f

    .line 759
    .local v59, "ratio2":F
    :goto_672
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6da

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    const/16 v6, 0x82

    if-ge v4, v6, :cond_6da

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6da

    const/high16 v60, 0x3f400000    # 0.75f

    .line 762
    .local v60, "ratio3":F
    :goto_690
    mul-float v4, v58, v59

    mul-float v4, v4, v60

    move-object/from16 v0, p4

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    move-object/from16 v0, p4

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    move-object/from16 v0, p4

    iget v10, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v7, v10, v1}, Lcom/pantech/inputmethod/keyboard/Key;->selectTextSize(IIII)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v53, v0

    .line 764
    .local v53, "labelSize":I
    move/from16 v0, v53

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 765
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_51c

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v4

    if-nez v4, :cond_51c

    .line 767
    move/from16 v0, v53

    move/from16 v1, v50

    move-object/from16 v2, p3

    invoke-static {v0, v1, v5, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->adjustTextSize(IILjava/lang/CharSequence;Landroid/graphics/Paint;)V

    goto/16 :goto_51c

    .line 757
    .end local v53    # "labelSize":I
    .end local v58    # "ratio1":F
    .end local v59    # "ratio2":F
    .end local v60    # "ratio3":F
    :cond_6d3
    const v58, 0x3f4ccccd    # 0.8f

    goto :goto_65d

    .line 758
    .restart local v58    # "ratio1":F
    :cond_6d7
    const/high16 v59, 0x3f800000    # 1.0f

    goto :goto_672

    .line 759
    .restart local v59    # "ratio2":F
    :cond_6da
    const/high16 v60, 0x3f800000    # 1.0f

    goto :goto_690

    .line 781
    .end local v58    # "ratio1":F
    .end local v59    # "ratio2":F
    .restart local v9    # "baseline":F
    .restart local v51    # "labelCharHeight":F
    .restart local v52    # "labelCharWidth":F
    .restart local v54    # "labelWidth":F
    :cond_6dd
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_6f4

    .line 782
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v50, v4

    int-to-float v8, v4

    .line 783
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_547

    .line 784
    :cond_6f4
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isAlignLeftOfCenter()Z

    move-result v4

    if-eqz v4, :cond_70c

    .line 786
    const/high16 v4, 0x40e00000    # 7.0f

    mul-float v4, v4, v52

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v4, v6

    sub-float v8, v39, v4

    .line 787
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_547

    .line 788
    :cond_70c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_738

    if-eqz v11, :cond_738

    .line 789
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const v6, 0x3d4ccccd    # 0.05f

    move/from16 v0, v50

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v54, v4, v6

    .line 791
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v54, v4

    add-float v8, v39, v4

    .line 792
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_547

    .line 793
    :cond_738
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_764

    if-eqz v11, :cond_764

    .line 794
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const v6, 0x3d4ccccd    # 0.05f

    move/from16 v0, v50

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v54, v4, v6

    .line 796
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v54, v4

    sub-float v8, v39, v4

    .line 797
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_547

    .line 799
    :cond_764
    move/from16 v8, v39

    .line 800
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_547

    .line 809
    :cond_76f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-nez v4, :cond_780

    .line 810
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 811
    :cond_780
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_791

    .line 812
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor3:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 814
    :cond_791
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, 0xce

    if-ne v4, v6, :cond_7af

    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7af

    .line 815
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor5:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 817
    :cond_7af
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isFunctional()Z

    move-result v4

    if-eqz v4, :cond_7c0

    .line 819
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor2:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 820
    :cond_7c0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSuggestionsKeyboard()Z

    move-result v4

    if-eqz v4, :cond_7db

    .line 821
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 823
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_577

    .line 824
    :cond_7db
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v4

    if-eqz v4, :cond_7ec

    .line 825
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor6:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 827
    :cond_7ec
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_577

    .line 840
    :cond_7f7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_58c

    .line 841
    const/16 v4, 0x32

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_58c

    .line 857
    .restart local v13    # "iconY":I
    .restart local v14    # "iconWidth":I
    .restart local v15    # "iconHeight":I
    :cond_80b
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_5c8

    .line 858
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v54, v4

    add-float v4, v4, v39

    int-to-float v6, v14

    sub-float/2addr v4, v6

    float-to-int v12, v4

    .restart local v12    # "iconX":I
    move-object/from16 v10, p2

    .line 859
    invoke-static/range {v10 .. v15}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_5c8

    .line 880
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v9    # "baseline":F
    .end local v12    # "iconX":I
    .end local v13    # "iconY":I
    .end local v14    # "iconWidth":I
    .end local v15    # "iconHeight":I
    .end local v51    # "labelCharHeight":F
    .end local v52    # "labelCharWidth":F
    .end local v54    # "labelWidth":F
    .restart local v17    # "hint":Ljava/lang/CharSequence;
    :cond_821
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_83e

    .line 881
    if-eqz p5, :cond_837

    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    move/from16 v44, v0

    .line 884
    .restart local v44    # "hintColor":I
    :goto_82f
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    move/from16 v45, v0

    .restart local v45    # "hintSize":I
    goto/16 :goto_25b

    .line 881
    .end local v44    # "hintColor":I
    .end local v45    # "hintSize":I
    :cond_837
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    move/from16 v44, v0

    goto :goto_82f

    .line 888
    :cond_83e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x22b

    if-ne v4, v6, :cond_854

    .line 889
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    move/from16 v44, v0

    .line 891
    .restart local v44    # "hintColor":I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyEditHintLetterSize:I

    move/from16 v45, v0

    .restart local v45    # "hintSize":I
    goto/16 :goto_25b

    .line 894
    .end local v44    # "hintColor":I
    .end local v45    # "hintSize":I
    :cond_854
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    move/from16 v44, v0

    .line 895
    .restart local v44    # "hintColor":I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    move/from16 v45, v0

    .restart local v45    # "hintSize":I
    goto/16 :goto_25b

    .line 914
    :cond_862
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_88d

    .line 916
    move/from16 v0, v50

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    sub-float/2addr v4, v6

    sget-object v6, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v20, v4, v6

    .line 918
    .restart local v20    # "hintX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v0, v4

    move/from16 v21, v0

    .line 919
    .restart local v21    # "hintY":F
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_28f

    .line 928
    .end local v20    # "hintX":F
    .end local v21    # "hintY":F
    :cond_88d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v6, -0x22b

    if-ne v4, v6, :cond_8b6

    .line 929
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v20, v0

    .line 930
    .restart local v20    # "hintX":F
    move/from16 v0, v49

    int-to-float v4, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p4

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyEditHintLetterPadding:I

    int-to-float v6, v6

    sub-float v21, v4, v6

    .line 931
    .restart local v21    # "hintY":F
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_28f

    .line 938
    .end local v20    # "hintX":F
    .end local v21    # "hintY":F
    :cond_8b6
    move/from16 v0, v50

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    sub-float/2addr v4, v6

    sget-object v6, Lcom/pantech/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v20, v4, v6

    .line 940
    .restart local v20    # "hintX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v21, v4, v6

    .line 941
    .restart local v21    # "hintY":F
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_28f

    .line 967
    .end local v17    # "hint":Ljava/lang/CharSequence;
    .end local v20    # "hintX":F
    .end local v21    # "hintY":F
    .end local v44    # "hintColor":I
    .end local v45    # "hintSize":I
    .restart local v13    # "iconY":I
    .restart local v14    # "iconWidth":I
    .restart local v15    # "iconHeight":I
    :cond_8e0
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_8f3

    .line 968
    move-object/from16 v0, p4

    iget v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v50, v4

    sub-int v12, v4, v14

    .line 969
    .restart local v12    # "iconX":I
    add-int v29, v12, v14

    .restart local v29    # "alignX":I
    goto/16 :goto_2e6

    .line 971
    .end local v12    # "iconX":I
    .end local v29    # "alignX":I
    :cond_8f3
    sub-int v4, v50, v14

    div-int/lit8 v12, v4, 0x2

    .line 972
    .restart local v12    # "iconX":I
    div-int/lit8 v4, v14, 0x2

    add-int v29, v12, v4

    .restart local v29    # "alignX":I
    goto/16 :goto_2e6

    .line 1007
    .end local v12    # "iconX":I
    .end local v13    # "iconY":I
    .end local v14    # "iconWidth":I
    .end local v15    # "iconHeight":I
    .end local v29    # "alignX":I
    :cond_8fd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_3c9

    .line 1025
    .restart local v14    # "iconWidth":I
    .restart local v15    # "iconHeight":I
    .restart local v23    # "hintIcon":Landroid/graphics/drawable/Drawable;
    :cond_905
    const/4 v12, 0x1

    .line 1026
    .restart local v12    # "iconX":I
    sub-int v13, v49, v15

    .restart local v13    # "iconY":I
    goto/16 :goto_3fa
.end method

.method private showKey(IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 21
    .param p1, "keyIndex"    # I
    .param p2, "longPress"    # Z
    .param p3, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v12, v12, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v12, v12, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->isFloatingMode(I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1315
    :cond_10
    :goto_10
    return-void

    .line 1192
    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v8

    .line 1195
    .local v8, "previewText":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_20

    .line 1196
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->addKeyPreview(Landroid/widget/TextView;)V

    .line 1199
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelDismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1200
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v2

    .line 1204
    .local v2, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v2, :cond_10

    .line 1207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 1208
    .local v5, "params":Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
    iget v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    iget v13, v2, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int v4, v12, v13

    .line 1209
    .local v4, "keyDrawX":I
    iget v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    iget v13, v2, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v12, v13

    iget v13, v2, Lcom/pantech/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v3, v12, v13

    .line 1212
    .local v3, "keyDrawWidth":I
    iget-object v12, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    if-nez p2, :cond_163

    .line 1216
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_10b

    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v12, :cond_10b

    .line 1219
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1220
    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_f3

    .line 1221
    const/4 v12, 0x0

    iget v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1228
    :goto_6e
    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    if-eqz v12, :cond_fc

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_fc

    .line 1229
    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mLabelShifted:Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    :goto_82
    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 1279
    iget v9, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewWidth:I

    .line 1283
    .local v9, "previewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_17f

    .line 1285
    add-int/lit8 v9, v9, 0x20

    .line 1292
    :cond_98
    :goto_98
    iget v6, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewHeight:I

    .line 1293
    .local v6, "previewHeight":I
    iget-object v12, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 1294
    sub-int v12, v9, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    iget-object v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v10, v12, v13

    .line 1295
    .local v10, "previewX":I
    iget-object v12, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    iget v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewOffset:I

    sub-int/2addr v12, v13

    iget v13, v2, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    add-int v11, v12, v13

    .line 1296
    .local v11, "previewY":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_d3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v12, v12, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSimpleQwertyKeyboard()Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 1298
    :cond_d3
    add-int/lit8 v11, v11, 0x5

    .line 1302
    :cond_d5
    if-gez v10, :cond_19b

    .line 1303
    const/4 v10, 0x0

    .line 1309
    :cond_d8
    :goto_d8
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v12, :cond_1ab

    sget-object v12, Lcom/pantech/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_e2
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1311
    iget v12, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextColor:I

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1312
    invoke-static {v8, v10, v11, v9, v6}, Lcom/pantech/inputmethod/compat/FrameLayoutCompatUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 1314
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10

    .line 1224
    .end local v6    # "previewHeight":I
    .end local v9    # "previewWidth":I
    .end local v10    # "previewX":I
    .end local v11    # "previewY":I
    :cond_f3
    const/4 v12, 0x0

    iget v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6e

    .line 1231
    :cond_fc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget-object v13, v2, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Lcom/pantech/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    .line 1234
    :cond_10b
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_144

    iget v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-eqz v12, :cond_144

    .line 1236
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1238
    const/4 v12, 0x0

    iget v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    const-string v13, "%c"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v2, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pantech/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    .line 1246
    :cond_144
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1252
    .local v7, "previewIcon":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    if-eqz v7, :cond_15e

    .end local v7    # "previewIcon":Landroid/graphics/drawable/Drawable;
    :goto_14b
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v7, v13, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1262
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    const/4 v12, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_82

    .line 1252
    .restart local v7    # "previewIcon":Landroid/graphics/drawable/Drawable;
    :cond_15e
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_14b

    .line 1268
    .end local v7    # "previewIcon":Landroid/graphics/drawable/Drawable;
    :cond_163
    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v12, :cond_10

    .line 1270
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1271
    const/4 v12, 0x0

    iget v13, v5, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1274
    iget-object v12, v2, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_82

    .line 1286
    .restart local v9    # "previewWidth":I
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v12

    iget v12, v12, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOneHandMode:I

    if-eqz v12, :cond_98

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_98

    .line 1289
    int-to-float v12, v9

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    float-to-int v9, v12

    goto/16 :goto_98

    .line 1304
    .restart local v6    # "previewHeight":I
    .restart local v10    # "previewX":I
    .restart local v11    # "previewY":I
    :cond_19b
    add-int v12, v10, v9

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v13

    if-le v12, v13, :cond_d8

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v12

    sub-int v10, v12, v9

    goto/16 :goto_d8

    .line 1309
    :cond_1ab
    sget-object v12, Lcom/pantech/inputmethod/keyboard/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_e2
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllMessages()V

    .line 1144
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1164
    return-void
.end method

.method public closing()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1350
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews(I)V

    .line 1353
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 1355
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1356
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 1357
    return-void
.end method

.method public dimEntireKeyboard(ZLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "dimmed"    # Z
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 596
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    if-eq v1, p1, :cond_f

    const/4 v0, 0x1

    .line 597
    .local v0, "needsRedrawing":Z
    :goto_5
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    .line 598
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackgroundRect:Landroid/graphics/Rect;

    .line 599
    if-eqz v0, :cond_e

    .line 600
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 602
    :cond_e
    return-void

    .line 596
    .end local v0    # "needsRedrawing":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public dismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 6
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1168
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->dismissKeyPreview(JLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1169
    return-void
.end method

.method public dismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V
    .registers 6
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "delay"    # J

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1173
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p2, p3, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->dismissKeyPreview(JLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1174
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1091
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v0

    return v0
.end method

.method protected getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I
    .registers 4
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v0, 0x1

    .line 1400
    if-eqz p1, :cond_a

    .line 1401
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardLeft()Z

    move-result v1

    if-ne v1, v0, :cond_b

    .line 1402
    const/4 v0, 0x5

    .line 1407
    :cond_a
    :goto_a
    return v0

    .line 1403
    :cond_b
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isFloatingKeyboardRight()Z

    move-result v1

    if-ne v1, v0, :cond_a

    .line 1404
    const/4 v0, 0x6

    goto :goto_a
.end method

.method public getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public inflateKeyPreviewText()Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1149
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-eqz v1, :cond_16

    .line 1150
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1152
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_15
.end method

.method public invalidateAllKeys()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1324
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 1326
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidate()V

    .line 1327
    return-void
.end method

.method public invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 7
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 1337
    if-nez p1, :cond_3

    .line 1346
    :goto_2
    return-void

    .line 1339
    :cond_3
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 1340
    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 1341
    .local v0, "x":I
    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int v1, v2, v3

    .line 1342
    .local v1, "y":I
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    iget v3, p1, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v3, v0

    iget v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1343
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1344
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 1345
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public isDimKeyboard()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    return v0
.end method

.method protected isFloatingMode(I)Z
    .registers 3
    .param p1, "inputMode"    # I

    .prologue
    .line 1383
    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->isFloatingSplitMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1384
    :cond_9
    const/4 v0, 0x1

    .line 1386
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected isFloatingSplitMode(I)Z
    .registers 3
    .param p1, "inputMode"    # I

    .prologue
    .line 1390
    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 1392
    :cond_6
    const/4 v0, 0x1

    .line 1394
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isKeyPreviewPopupEnabled()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1370
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1371
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1372
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 1373
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1375
    :cond_f
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 1376
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1379
    :cond_1b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 530
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    .line 531
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 532
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onBufferDraw(Landroid/content/Context;)V

    .line 534
    :cond_16
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 535
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_17

    .line 520
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 521
    .local v0, "height":I
    invoke-virtual {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setMeasuredDimension(II)V

    .line 525
    .end local v0    # "height":I
    :goto_16
    return-void

    .line 523
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_16
.end method

.method public purgeKeyboardAndClosing()V
    .registers 2

    .prologue
    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 1365
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1366
    return-void
.end method

.method public setCustomTheme(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 10
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    .line 449
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    .local v1, "context":Landroid/content/Context;
    :try_start_6
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v0

    .line 453
    .local v0, "key":Lcom/pantech/inputmethod/style/KeyDrawable;
    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    .line 454
    .local v6, "drawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iput-object v6, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 455
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    .line 456
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor2:I

    .line 457
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor3:I

    .line 458
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor4:I

    .line 459
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor5:I

    .line 460
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor6:I

    .line 461
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/style/KeyDrawable;->getKeyTextColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    .line 462
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget v3, v3, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    iput v3, v2, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    .line 464
    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSuggestionsKeyboard()Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isMoreSettingsKeyboard()Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isMoreKeyboard()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 467
    :cond_71
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 484
    .end local v0    # "key":Lcom/pantech/inputmethod/style/KeyDrawable;
    .end local v6    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :goto_78
    return-void

    .line 469
    .restart local v0    # "key":Lcom/pantech/inputmethod/style/KeyDrawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_79
    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->isFloatingMode(I)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 470
    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    if-ne v2, v4, :cond_96

    .line 471
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_90} :catch_91

    goto :goto_78

    .line 481
    .end local v0    # "key":Lcom/pantech/inputmethod/style/KeyDrawable;
    .end local v6    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :catch_91
    move-exception v7

    .line 482
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 472
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "key":Lcom/pantech/inputmethod/style/KeyDrawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_96
    :try_start_96
    iget-object v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    if-ne v2, v5, :cond_a4

    .line 473
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    goto :goto_78

    .line 475
    :cond_a4
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    goto :goto_78

    .line 478
    :cond_ac
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b3} :catch_91

    goto :goto_78
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 3
    .param p1, "previewEnabled"    # Z
    .param p2, "delay"    # I

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 504
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 505
    return-void
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 7
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 430
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_13

    .line 432
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getInputModeForFloatingPointerTrackers(Lcom/pantech/inputmethod/keyboard/Keyboard;)I

    move-result v1

    invoke-static {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews(I)V

    .line 436
    :cond_13
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/pantech/inputmethod/keyboard/Keyboard;

    .line 437
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onSetKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 438
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 439
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 441
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 442
    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v0, v1, v2

    .line 443
    .local v0, "keyHeight":I
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setCustomTheme(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 444
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyDrawParams;->updateKeyHeight(I)V

    .line 445
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->updateKeyHeight(I)V

    .line 446
    return-void
.end method

.method public showKeyPreview(IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 11
    .param p1, "keyIndex"    # I
    .param p2, "longPress"    # Z
    .param p3, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    if-eqz v0, :cond_f

    .line 1158
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    int-to-long v2, v0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/inputmethod/keyboard/KeyboardView$DrawingHandler;->showKeyPreview(JIZLcom/pantech/inputmethod/keyboard/PointerTracker;)V

    .line 1160
    :cond_f
    return-void
.end method

.method public touchDown()V
    .registers 1

    .prologue
    .line 1416
    return-void
.end method

.method public touchUp()V
    .registers 1

    .prologue
    .line 1422
    return-void
.end method
