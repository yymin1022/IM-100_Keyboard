.class public Lcom/pantech/inputmethod/keyboard/EditTouchPad;
.super Ljava/lang/Object;
.source "EditTouchPad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;
    }
.end annotation


# static fields
.field public static final CONST_DEFAULT_DELAY_X:I = 0x190

.field public static final CONST_DEFAULT_DELAY_Y:I = 0x258

.field private static final CONST_LIMIT_POINT_X:I = 0x2

.field private static final CONST_LIMIT_POINT_Y:I = 0x2

.field public static final CONST_POSITION_DOWN:I = 0x4

.field public static final CONST_POSITION_LEFT:I = 0x1

.field public static final CONST_POSITION_NONE:I = 0x0

.field public static final CONST_POSITION_RIGHT:I = 0x2

.field public static final CONST_POSITION_UP:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static mAlphaX:I

.field private static mAlphaY:I

.field private static mEditTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mGammaX:I

.field private mGammaY:I

.field private mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

.field private mInputDelay:J

.field private mIsPositionPressed:Z

.field private mLastPosition:I

.field private mOldTime:J

.field private mOverlayView:Landroid/view/View;

.field private mPosition:I

.field private mX1:I

.field private mX2:I

.field private mY1:I

.field private mY2:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mEditTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    .line 21
    sput v1, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    .line 22
    sput v1, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->DEBUG:Z

    .line 23
    iput v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    .line 32
    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mIsPositionPressed:Z

    .line 65
    new-instance v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;-><init>(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mInputDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/keyboard/EditTouchPad;)Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mEditTouchPad:Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    return-object v0
.end method

.method private getPosition(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->isLeftPosition(II)Z

    move-result v1

    if-ne v1, v0, :cond_8

    .line 319
    :goto_7
    return v0

    .line 312
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->isRightPosition(II)Z

    move-result v1

    if-ne v1, v0, :cond_10

    .line 313
    const/4 v0, 0x2

    goto :goto_7

    .line 314
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->isUpPosition(II)Z

    move-result v1

    if-ne v1, v0, :cond_18

    .line 315
    const/4 v0, 0x3

    goto :goto_7

    .line 316
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->isDownPosition(II)Z

    move-result v1

    if-ne v1, v0, :cond_20

    .line 317
    const/4 v0, 0x4

    goto :goto_7

    .line 319
    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isDownPosition(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 363
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1b

    .line 364
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1b

    .line 365
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1b

    .line 366
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY2:I

    if-ge p2, v0, :cond_1b

    .line 367
    const/4 v0, 0x1

    .line 372
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private isLeftPosition(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1b

    .line 325
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX1:I

    if-le p1, v0, :cond_1b

    .line 326
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1b

    .line 327
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1b

    .line 328
    const/4 v0, 0x1

    .line 333
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private isRightPosition(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 337
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1b

    .line 338
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX2:I

    if-ge p1, v0, :cond_1b

    .line 339
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1b

    .line 340
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1b

    .line 341
    const/4 v0, 0x1

    .line 346
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private isUpPosition(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 350
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1b

    .line 351
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mX2:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaX:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1b

    .line 352
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY1:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mGammaY:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1b

    .line 353
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mY1:I

    if-le p2, v0, :cond_1b

    .line 354
    const/4 v0, 0x1

    .line 359
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private moveDown(IIIIJ)V
    .registers 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "absX"    # I
    .param p4, "absY"    # I
    .param p5, "eventTime"    # J

    .prologue
    .line 295
    if-lez p2, :cond_e

    const/4 v0, 0x2

    if-le p4, v0, :cond_e

    .line 296
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onDownArrow()V

    .line 297
    iput-wide p5, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mOldTime:J

    .line 299
    :cond_e
    return-void
.end method

.method private moveLeft(IIIIJ)V
    .registers 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "absX"    # I
    .param p4, "absY"    # I
    .param p5, "eventTime"    # J

    .prologue
    .line 274
    if-gez p1, :cond_e

    const/4 v0, 0x2

    if-le p3, v0, :cond_e

    .line 275
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onLeftArrow()V

    .line 276
    iput-wide p5, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mOldTime:J

    .line 278
    :cond_e
    return-void
.end method

.method private moveRight(IIIIJ)V
    .registers 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "absX"    # I
    .param p4, "absY"    # I
    .param p5, "eventTime"    # J

    .prologue
    .line 281
    if-lez p1, :cond_e

    const/4 v0, 0x2

    if-le p3, v0, :cond_e

    .line 282
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onRightArrow()V

    .line 283
    iput-wide p5, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mOldTime:J

    .line 285
    :cond_e
    return-void
.end method

.method private moveUp(IIIIJ)V
    .registers 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "absX"    # I
    .param p4, "absY"    # I
    .param p5, "eventTime"    # J

    .prologue
    .line 288
    if-gez p2, :cond_e

    const/4 v0, 0x2

    if-le p4, v0, :cond_e

    .line 289
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->onUpArrow()V

    .line 290
    iput-wide p5, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mOldTime:J

    .line 292
    :cond_e
    return-void
.end method

.method private tuneVelocityXY(II)V
    .registers 9
    .param p1, "absX"    # I
    .param p2, "absY"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 228
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    if-nez v0, :cond_16

    .line 229
    if-ge p1, v1, :cond_17

    .line 230
    mul-int/lit8 v0, p1, 0x3

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    .line 253
    :goto_10
    if-ge p2, v1, :cond_65

    .line 254
    mul-int/lit8 v0, p2, 0x3

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    .line 271
    :cond_16
    :goto_16
    return-void

    .line 231
    :cond_17
    if-gt p1, v2, :cond_1e

    .line 232
    mul-int/lit8 v0, p1, 0x5

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 233
    :cond_1e
    if-gt p1, v3, :cond_25

    .line 234
    mul-int/lit8 v0, p1, 0x7

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 235
    :cond_25
    if-gt p1, v4, :cond_2c

    .line 236
    mul-int/lit8 v0, p1, 0x9

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 237
    :cond_2c
    if-gt p1, v5, :cond_33

    .line 238
    mul-int/lit8 v0, p1, 0xb

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 239
    :cond_33
    const/16 v0, 0x14

    if-gt p1, v0, :cond_3c

    .line 240
    mul-int/lit8 v0, p1, 0xd

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 241
    :cond_3c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_45

    .line 242
    mul-int/lit8 v0, p1, 0x10

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 243
    :cond_45
    const/16 v0, 0x28

    if-gt p1, v0, :cond_4e

    .line 244
    mul-int/lit8 v0, p1, 0x14

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 245
    :cond_4e
    const/16 v0, 0x32

    if-gt p1, v0, :cond_57

    .line 246
    mul-int/lit8 v0, p1, 0x1e

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 247
    :cond_57
    const/16 v0, 0x50

    if-gt p1, v0, :cond_60

    .line 248
    mul-int/lit8 v0, p1, 0x32

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 250
    :cond_60
    mul-int/lit8 v0, p1, 0x50

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    goto :goto_10

    .line 255
    :cond_65
    if-gt p2, v2, :cond_6c

    .line 256
    mul-int/lit8 v0, p2, 0x4

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 257
    :cond_6c
    if-gt p2, v3, :cond_73

    .line 258
    mul-int/lit8 v0, p2, 0x5

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 259
    :cond_73
    if-gt p2, v4, :cond_7a

    .line 260
    mul-int/lit8 v0, p2, 0x6

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 261
    :cond_7a
    if-gt p2, v5, :cond_81

    .line 262
    mul-int/lit8 v0, p2, 0x7

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 263
    :cond_81
    const/16 v0, 0x14

    if-gt p2, v0, :cond_8a

    .line 264
    mul-int/lit8 v0, p2, 0x8

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 265
    :cond_8a
    const/16 v0, 0x1e

    if-gt p2, v0, :cond_93

    .line 266
    mul-int/lit8 v0, p2, 0x9

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto :goto_16

    .line 268
    :cond_93
    mul-int/lit8 v0, p2, 0xa

    sput v0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    goto/16 :goto_16
.end method


# virtual methods
.method public getHandler()Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    return-object v0
.end method

.method public moveCursor(Lcom/pantech/inputmethod/keyboard/Key;JIIII)V
    .registers 22
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "eventTime"    # J
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "lastX"    # I
    .param p7, "lastY"    # I

    .prologue
    .line 116
    sub-int v4, p4, p6

    .line 117
    .local v4, "deltaX":I
    sub-int v5, p5, p7

    .line 119
    .local v5, "deltaY":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 120
    .local v6, "absX":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 132
    .local v7, "absY":I
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mLastPosition:I

    .line 134
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getPosition(II)I

    move-result v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    .line 135
    invoke-direct {p0, v6, v7}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->tuneVelocityXY(II)V

    .line 137
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    if-eqz v3, :cond_30

    .line 138
    iget-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mIsPositionPressed:Z

    if-nez v3, :cond_2f

    .line 139
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    iget v8, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    invoke-virtual {v3, v8}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->sendEmptyMessage(I)Z

    .line 140
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mIsPositionPressed:Z

    .line 223
    :cond_2f
    :goto_2f
    return-void

    .line 144
    :cond_30
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    iget v8, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mLastPosition:I

    invoke-virtual {v3, v8}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->removeMessages(I)V

    .line 145
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mIsPositionPressed:Z

    .line 148
    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mOldTime:J

    sub-long v8, p2, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mInputDelay:J

    .line 151
    sub-int v3, v6, v7

    if-ltz v3, :cond_62

    const/4 v10, 0x1

    .local v10, "xIsBigY":Z
    move v11, v10

    .line 153
    :goto_4a
    if-eqz v10, :cond_65

    .line 154
    sget v3, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaX:I

    rsub-int v2, v3, 0x190

    .line 158
    .local v2, "delay":I
    :goto_50
    iget-wide v8, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mInputDelay:J

    int-to-long v12, v2

    cmp-long v3, v8, v12

    if-lez v3, :cond_2f

    .line 208
    if-eqz v10, :cond_71

    .line 209
    if-lez v4, :cond_6a

    move-object v3, p0

    move-wide/from16 v8, p2

    .line 210
    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveRight(IIIIJ)V

    goto :goto_2f

    .line 151
    .end local v2    # "delay":I
    .end local v10    # "xIsBigY":Z
    :cond_62
    const/4 v10, 0x0

    .restart local v10    # "xIsBigY":Z
    move v11, v10

    .end local v10    # "xIsBigY":Z
    .local v11, "xIsBigY":Z
    goto :goto_4a

    .line 156
    .end local v11    # "xIsBigY":Z
    .restart local v10    # "xIsBigY":Z
    :cond_65
    sget v3, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mAlphaY:I

    rsub-int v2, v3, 0x258

    .restart local v2    # "delay":I
    goto :goto_50

    :cond_6a
    move-object v3, p0

    move-wide/from16 v8, p2

    .line 212
    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveLeft(IIIIJ)V

    goto :goto_2f

    .line 215
    :cond_71
    if-lez v5, :cond_7a

    move-object v3, p0

    move-wide/from16 v8, p2

    .line 216
    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveDown(IIIIJ)V

    goto :goto_2f

    :cond_7a
    move-object v3, p0

    move-wide/from16 v8, p2

    .line 218
    invoke-direct/range {v3 .. v9}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->moveUp(IIIIJ)V

    goto :goto_2f
.end method

.method public resetPosition()V
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mPosition:I

    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->mHandler:Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad$TouchPannelHandler;->removeMessages(I)V

    .line 108
    return-void
.end method
