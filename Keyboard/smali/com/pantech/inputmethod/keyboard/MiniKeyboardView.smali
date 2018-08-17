.class public Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;
.super Lcom/pantech/inputmethod/keyboard/KeyboardView;
.source "MiniKeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static DEBUG:Z = false

.field private static final EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private static final NOT_A_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final sDefaultFont:Landroid/graphics/Typeface;


# instance fields
.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDownTime:J

.field private mDrawPending:Z

.field private mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private mIsDismissing:Z

.field private final mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private final mMiniKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private mOriginX:I

.field private mOriginY:I

.field private mPadding:Landroid/graphics/Rect;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mTextSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->DEBUG:Z

    .line 98
    const-string v0, "/system/fonts/DroidSans.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->sDefaultFont:Landroid/graphics/Typeface;

    .line 101
    new-instance v0, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    .line 70
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaddingTop:I

    .line 76
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 79
    const/16 v2, 0xc

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyIndices:[I

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 85
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 103
    new-instance v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView$1;-><init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;

    const v3, 0x7f0a000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {v2, v3}, Lcom/pantech/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    .line 141
    invoke-virtual {p0, v4, v4}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "keyTextSize":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 145
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method private detectAndSendKey(IIJ)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 337
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 338
    .local v0, "index":I
    if-eq v0, v4, :cond_1f

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    array-length v2, v2

    if-ge v0, v2, :cond_1f

    .line 339
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    aget-object v1, v2, v0

    .line 340
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget-object v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1f

    .line 341
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    iget-object v3, v1, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v2, v4, v5}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 345
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_1f
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v5, v3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 346
    return-void
.end method

.method private invalidateAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 457
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 458
    sget-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->TAG:Ljava/lang/String;

    const-string v1, "invalidateAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDrawPending:Z

    .line 461
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->invalidate()V

    .line 462
    return-void
.end method

.method private onBufferDraw()V
    .registers 24

    .prologue
    .line 365
    sget-boolean v18, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->DEBUG:Z

    if-eqz v18, :cond_b

    .line 366
    sget-object v18, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->TAG:Ljava/lang/String;

    const-string v19, "onBufferDraw"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_4b

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getHeight()I

    move-result v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    if-eqz v18, :cond_37

    .line 371
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 373
    :cond_37
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->invalidateAll()V

    .line 376
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 377
    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v18

    if-nez v18, :cond_65

    .line 454
    :goto_64
    return-void

    .line 381
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 383
    .local v17, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 384
    .local v4, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 385
    .local v16, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaddingLeft:I

    .line 386
    .local v10, "kbdPaddingLeft":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mPaddingTop:I

    .line 387
    .local v11, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 388
    .local v14, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 390
    .local v9, "invalidKey":Lcom/pantech/inputmethod/keyboard/Key;
    const/16 v18, 0xff

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    const/4 v5, 0x0

    .line 393
    .local v5, "drawSingleKey":Z
    if-eqz v9, :cond_f1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_f1

    .line 395
    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    move/from16 v18, v0

    add-int v18, v18, v10

    add-int/lit8 v18, v18, -0x1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f1

    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    move/from16 v18, v0

    add-int v18, v18, v11

    add-int/lit8 v18, v18, -0x1

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f1

    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    move/from16 v18, v0

    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x1

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f1

    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    move/from16 v18, v0

    iget v0, v9, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v11

    add-int/lit8 v18, v18, 0x1

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f1

    .line 401
    const/4 v5, 0x1

    .line 404
    :cond_f1
    const/high16 v18, -0x1000000

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 405
    array-length v13, v14

    .line 409
    .local v13, "keyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_fe
    if-ge v8, v13, :cond_271

    .line 410
    aget-object v12, v14, v8

    .line 411
    .local v12, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz v5, :cond_109

    if-eq v9, v12, :cond_109

    .line 409
    :goto_106
    add-int/lit8 v8, v8, 0x1

    goto :goto_fe

    .line 416
    :cond_109
    iget-object v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "label":Ljava/lang/String;
    if-eqz v15, :cond_1d1

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 423
    sget-object v18, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->sDefaultFont:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mShadowRadius:F

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mShadowColor:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 429
    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 449
    :cond_1a8
    :goto_1a8
    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mY:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_106

    .line 438
    :cond_1d1
    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_1a8

    .line 439
    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .line 441
    .local v6, "drawableX":I
    iget v0, v12, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v7, v18, v19

    .line 443
    .local v7, "drawableY":I
    int-to-float v0, v6

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 444
    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 447
    neg-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1a8

    .line 451
    .end local v6    # "drawableX":I
    .end local v7    # "drawableY":I
    .end local v12    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v15    # "label":Ljava/lang/String;
    :cond_271
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mInvalidatedKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 452
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDrawPending:Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_64
.end method

.method private static wrapUp(IIII)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "width"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 234
    if-ge p0, p2, :cond_3

    .line 238
    .end local p2    # "left":I
    :goto_2
    return p2

    .line 236
    .restart local p2    # "left":I
    :cond_3
    add-int v0, p0, p1

    if-le v0, p3, :cond_a

    .line 237
    sub-int p2, p3, p1

    goto :goto_2

    :cond_a
    move p2, p0

    .line 238
    goto :goto_2
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 250
    :goto_6
    return v0

    .line 247
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    .line 248
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 249
    .local v0, "dismissed":Z
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    goto :goto_6
.end method

.method public getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 183
    return-object p0
.end method

.method public getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
    .registers 1

    .prologue
    .line 466
    return-object p0
.end method

.method public getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 187
    sget-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 354
    sget-boolean v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 355
    sget-object v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->TAG:Ljava/lang/String;

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_c
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 358
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDrawPending:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    .line 359
    :cond_17
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->onBufferDraw()V

    .line 361
    :cond_1a
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 362
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 155
    .local v1, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_24

    .line 156
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 157
    .local v2, "width":I
    iget v3, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 158
    .local v0, "height":I
    invoke-virtual {p0, v2, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->setMeasuredDimension(II)V

    .line 162
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_23
    return-void

    .line 160
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, -0x1

    .line 263
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v6

    if-nez v6, :cond_b

    .line 333
    :goto_a
    return v7

    .line 266
    :cond_b
    sget-boolean v6, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->DEBUG:Z

    if-eqz v6, :cond_16

    .line 267
    sget-object v6, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->TAG:Ljava/lang/String;

    const-string v8, "onTouchEvent"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v8

    sub-int v4, v6, v8

    .line 269
    .local v4, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mVerticalCorrection:F

    add-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    float-to-int v5, v6

    .line 270
    .local v5, "touchY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 271
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 272
    .local v2, "eventTime":J
    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v8}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v1

    .line 274
    .local v1, "keyIndex":I
    packed-switch v0, :pswitch_data_e2

    .line 331
    :cond_43
    :goto_43
    iput v4, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastX:I

    .line 332
    iput v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastY:I

    .line 333
    const/4 v7, 0x1

    goto :goto_a

    .line 276
    :pswitch_49
    iput v4, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeX:I

    .line 277
    iput v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeY:I

    .line 278
    iput-wide v12, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKeyTime:J

    .line 279
    iput-wide v12, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    .line 280
    iput v10, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKey:I

    .line 281
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDownTime:J

    .line 283
    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDownTime:J

    iput-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastMoveTime:J

    .line 284
    iget-object v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    if-eq v1, v10, :cond_6d

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    :goto_69
    invoke-interface {v8, v6, v7}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    goto :goto_43

    :cond_6d
    move v6, v7

    goto :goto_69

    .line 289
    :pswitch_6f
    if-eq v1, v10, :cond_43

    .line 290
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    if-ne v6, v10, :cond_7e

    .line 291
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 292
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mDownTime:J

    sub-long v6, v2, v6

    iput-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    goto :goto_43

    .line 295
    :cond_7e
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    if-ne v1, v6, :cond_8c

    .line 296
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastMoveTime:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    goto :goto_43

    .line 299
    :cond_8c
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    iput v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKey:I

    .line 300
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastX:I

    iput v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeX:I

    .line 301
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastY:I

    iput v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeY:I

    .line 302
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v6, v2

    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastMoveTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKeyTime:J

    .line 304
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 305
    iput-wide v12, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    goto :goto_43

    .line 312
    :pswitch_a5
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    if-ne v1, v6, :cond_d0

    .line 313
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastMoveTime:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    .line 321
    :goto_b2
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKeyTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_c6

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKey:I

    if-eq v6, v10, :cond_c6

    .line 322
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKey:I

    iput v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 323
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeX:I

    .line 324
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastCodeY:I

    .line 326
    :cond_c6
    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyIndices:[I

    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([II)V

    .line 328
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->detectAndSendKey(IIJ)V

    goto/16 :goto_43

    .line 316
    :cond_d0
    iget v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    iput v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKey:I

    .line 317
    iget-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v6, v2

    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastMoveTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mLastKeyTime:J

    .line 318
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKey:I

    .line 319
    iput-wide v12, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCurrentKeyTime:J

    goto :goto_b2

    .line 274
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_49
        :pswitch_a5
        :pswitch_6f
    .end packed-switch
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 4
    .param p1, "previewEnabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-super {p0, v0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 197
    return-void
.end method

.method public setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 7
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 167
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/pantech/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mVerticalCorrection:F

    add-float/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;FF)V

    .line 169
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 170
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/keyboard/Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/pantech/inputmethod/keyboard/Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeys:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 171
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->requestLayout()V

    .line 172
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 350
    return-void
.end method

.method public setShifted(Z)V
    .registers 4
    .param p1, "shifted"    # Z

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 201
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 202
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->invalidateAllKeys()V

    .line 204
    :cond_d
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
    .line 208
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 209
    iput-object p6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 210
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    .local v0, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;

    .line 213
    .local v1, "miniKeyboard":Lcom/pantech/inputmethod/keyboard/MiniKeyboard;
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 214
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;->getDefaultCoordX()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v2, v5, v6

    .line 216
    .local v2, "miniKeyboardLeft":I
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;->mOccupiedWidth:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->wrapUp(IIII)I

    move-result v3

    .line 220
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v5, p4, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v4, v5, v6

    .line 224
    .local v4, "y":I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 227
    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    .line 231
    return-void
.end method

.method public translateX(I)I
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 254
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .registers 3
    .param p1, "y"    # I

    .prologue
    .line 258
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
