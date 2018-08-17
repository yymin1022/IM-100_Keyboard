.class public Lcom/pantech/widget/SkySlideTheme;
.super Landroid/widget/SeekBar;
.source "SkySlideTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;,
        Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;,
        Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;
    }
.end annotation


# static fields
.field private static final C_POPUP_BOX:I

.field private static final DEBUG:Z = false

.field private static H_IMG_HANDLE:I = 0x0

.field private static H_IMG_OUTPROG:I = 0x0

.field private static H_IMG_POPUP_BOX:I = 0x0

.field private static H_PROG_MARGIN:I = 0x0

.field public static H_SLIDE_MAX:I = 0x0

.field public static H_SLIDE_MID:I = 0x0

.field public static H_SLIDE_MIN:I = 0x0

.field public static final LEVEL_TYPE_DB:I = 0x1

.field public static final LEVEL_TYPE_LV:I = 0x0

.field private static POPUP_BOX_TEXT_SIZE:I = 0x0

.field private static POPUP_BOX_TEXT_SIZE_DIGIT3:I = 0x0

.field private static S_LV_NUM:I = 0x0

.field private static S_LV_TEXT:I = 0x0

.field private static S_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SkySlideTheme"

.field private static W_DIVIDER:I = 0x0

.field private static W_IMG_HANDLE:I = 0x0

.field private static W_IMG_HANDLE_OUTPROG:I = 0x0

.field private static W_IMG_POPUP_BOX:I = 0x0

.field private static W_IMG_POPUP_BOX_MAX:I = 0x0

.field private static W_LV_MARGIN:I = 0x0

.field private static W_OUTPROG_MAX:I = 0x0

.field private static W_OUTPROG_MIN:I = 0x0

.field private static W_PROG_MARGIN:I = 0x0

.field private static X_INPROG:I = 0x0

.field private static X_OUTPROG:I = 0x0

.field private static X_POPUP_BOX:I = 0x0

.field private static X_TITLE:I = 0x0

.field private static Y_INPROG:I = 0x0

.field private static Y_OUTPROG:I = 0x0

.field private static Y_POPUP_BOX:I = 0x0

.field private static Y_POPUP_BOX_TEXT:I = 0x0

.field private static Y_TITLE:I = 0x0

.field private static final default_dpi:I = 0xf0

.field private static mTheme:I


# instance fields
.field private C_LV_NUM:I

.field private C_LV_NUM_D:I

.field private C_LV_TEXT:I

.field private C_LV_TEXT_D:I

.field private C_TITLE:I

.field private C_TITLE_D:I

.field private mBarHeight:I

.field private mBarWidth:I

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDefaultRippleAlpha:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInterval:F

.field private mFg:Landroid/graphics/drawable/Drawable;

.field private mFg_d:Landroid/graphics/drawable/Drawable;

.field private mHandle:Landroid/graphics/drawable/Drawable;

.field private mHandle_d:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIsDivider:Z

.field private mIsDragging:Z

.field private mIsLevel:Z

.field private mIsLevelBounds:Z

.field private mIsOnlyHandleTouch:Z

.field private mIsPopupBox:Z

.field private mIsPositiveNegativeMode:Z

.field private mIsRevitalized:Z

.field private mIsTitle:Z

.field private mIsTouchFBPlaying:Z

.field private mIsUsingTouchFB:Z

.field private mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

.field private mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

.field private mLevelNumPaint:Landroid/graphics/Paint;

.field private mLevelStrPaint:Landroid/graphics/Paint;

.field private mLvStrType:I

.field private mNegativeValue:I

.field private mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

.field private mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

.field private mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

.field private mPopupBox:Landroid/graphics/drawable/Drawable;

.field private mPopupBoxPaint:Landroid/graphics/Paint;

.field private mPositivieValue:I

.field private mPrevValue:I

.field private mRippleAlpha:I

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mRippleRadius:I

.field private mSlidePosX:I

.field private mSlideRect:Landroid/graphics/Rect;

.field private mSlideWidth:I

.field private mStartTime:J

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTouchFBTimer:Ljava/util/Timer;

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/pantech/widget/SkySlideTheme;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTouchFBPlaying:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xff

    .line 64
    sget v0, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlideTheme;->X_INPROG:I

    .line 65
    sget v0, Lcom/pantech/widget/SkySlideTheme;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlideTheme;->Y_INPROG:I

    .line 82
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pantech/widget/SkySlideTheme;->C_POPUP_BOX:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkySlideTheme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 274
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    .line 277
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->resetLayout()V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "max"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 113
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHeight:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    .line 119
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    .line 121
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mLvStrType:I

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDivider:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsUsingTouchFB:Z

    .line 135
    iput-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTouchFBPlaying:Z

    .line 136
    iput-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsRevitalized:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    .line 155
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .line 156
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 157
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 164
    const/16 v0, 0x19

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDefaultRippleAlpha:I

    .line 288
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    .line 291
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->resetLayout()V

    .line 293
    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlideTheme;->setMax(I)V

    .line 295
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->init()V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ne"    # I
    .param p3, "po"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 113
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHeight:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    .line 119
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    .line 121
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mLvStrType:I

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDivider:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsUsingTouchFB:Z

    .line 135
    iput-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTouchFBPlaying:Z

    .line 136
    iput-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsRevitalized:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    .line 155
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .line 156
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 157
    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 164
    const/16 v0, 0x19

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDefaultRippleAlpha:I

    .line 308
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p0, p2, p3}, Lcom/pantech/widget/SkySlideTheme;->setMaxWithPositiveNegative(II)V

    .line 312
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->init()V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 255
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/widget/SkySlideTheme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    .line 264
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->resetLayout()V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 115
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    .line 116
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mHeight:I

    .line 117
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    .line 118
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    .line 119
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    .line 120
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    .line 121
    iput v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLvStrType:I

    .line 129
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    .line 130
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDivider:Z

    .line 131
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    .line 132
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    .line 133
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 134
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsUsingTouchFB:Z

    .line 135
    iput-boolean v8, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTouchFBPlaying:Z

    .line 136
    iput-boolean v8, p0, Lcom/pantech/widget/SkySlideTheme;->mIsRevitalized:Z

    .line 137
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    .line 155
    iput-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .line 156
    iput-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 157
    iput-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 164
    const/16 v5, 0x19

    iput v5, p0, Lcom/pantech/widget/SkySlideTheme;->mDefaultRippleAlpha:I

    .line 211
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    .line 214
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->resetLayout()V

    .line 216
    if-eqz p2, :cond_6a

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "defLev":Z
    sget-object v5, Lcom/pantech/res/R$styleable;->SkyDialogStyle:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 222
    .local v4, "title":Ljava/lang/CharSequence;
    if-eqz v4, :cond_51

    .line 224
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlideTheme;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v1, 0x1

    .line 227
    :cond_51
    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->setLevel(Z)V

    .line 228
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->setPopupBox(Z)V

    .line 230
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->setDivider(Z)V

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defLev":Z
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_6a
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->init()V

    .line 236
    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkySlideTheme;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 238
    .local v3, "thumbStateList":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_90

    .line 239
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_83

    .line 240
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 243
    :cond_83
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_90

    .line 244
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    :cond_90
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 249
    .local v2, "progressStateList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_a3

    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a3

    .line 250
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 202
    :cond_a3
    return-void
.end method

.method private Position2Value(I)I
    .registers 9
    .param p1, "iPosition"    # I

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, "iValue":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v0

    .line 571
    .local v0, "iMax":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 572
    .local v1, "iQuotient":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    rem-float/2addr v4, v5

    float-to-int v2, v4

    .line 574
    .local v2, "iRemainder":I
    int-to-float v4, v2

    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2b

    .line 576
    add-int/lit8 v3, v1, 0x1

    .line 583
    :goto_1b
    if-gez v3, :cond_1e

    .line 585
    const/4 v3, 0x0

    .line 588
    :cond_1e
    if-le v3, v0, :cond_21

    .line 590
    move v3, v0

    .line 592
    :cond_21
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getPositiveNegativeMode()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 593
    iget v4, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I

    add-int/2addr v3, v4

    .line 595
    :cond_2a
    return v3

    .line 580
    :cond_2b
    move v3, v1

    goto :goto_1b
.end method

.method private Value2Position(I)I
    .registers 4
    .param p1, "iValue"    # I

    .prologue
    .line 564
    iget v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private createImage()V
    .registers 4

    .prologue
    const v2, 0x7f06018b

    const/4 v1, 0x2

    .line 459
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    .line 460
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_79

    .line 461
    const v0, 0x7f060125

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    .line 466
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_26

    .line 467
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_83

    .line 468
    const v0, 0x7f060121

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    .line 473
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_37

    .line 474
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_8d

    .line 475
    const v0, 0x7f060133

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 483
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_48

    .line 484
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_97

    .line 485
    const v0, 0x7f060123

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 490
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_59

    .line 491
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_a1

    .line 492
    const v0, 0x7f060127

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 497
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_67

    .line 498
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_ab

    .line 499
    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 504
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_78

    .line 505
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v0, v1, :cond_b2

    .line 506
    const v0, 0x7f060130

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 457
    :cond_78
    :goto_78
    return-void

    .line 463
    :cond_79
    const v0, 0x7f060126

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    .line 470
    :cond_83
    const v0, 0x7f060122

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    goto :goto_26

    .line 477
    :cond_8d
    const v0, 0x7f06012e

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_37

    .line 487
    :cond_97
    const v0, 0x7f060124

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    goto :goto_48

    .line 494
    :cond_a1
    const v0, 0x7f060128

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    goto :goto_59

    .line 501
    :cond_ab
    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_67

    .line 508
    :cond_b2
    const v0, 0x7f06012c

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    goto :goto_78
.end method

.method private doTouchFBDrag()V
    .registers 2

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->shouldFeedback()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 605
    :cond_7
    return-void
.end method

.method private drawBarBg(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1442
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1437
    return-void
.end method

.method private drawBarDivider(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1453
    iget-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDivider:Z

    if-nez v1, :cond_5

    return-void

    .line 1455
    :cond_5
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 1457
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1458
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v3

    .line 1459
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v4

    sget v5, Lcom/pantech/widget/SkySlideTheme;->W_DIVIDER:I

    add-int/2addr v4, v5

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1460
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v5

    iget v6, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    add-int/2addr v5, v6

    .line 1457
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1461
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1451
    :cond_39
    return-void
.end method

.method private drawBarFg(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v12, 0x32

    const/4 v8, 0x0

    .line 1467
    sget v4, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    .line 1468
    .local v4, "sx":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v5

    .line 1469
    .local v5, "x":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v7

    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    add-int v6, v7, v9

    .line 1470
    .local v6, "y":I
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v0, v7, v9

    .line 1471
    .local v0, "dx_max":I
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v1, v7, v9

    .line 1473
    .local v1, "dy":I
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    if-gez v7, :cond_27

    iput v8, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1474
    :cond_27
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    if-le v7, v9, :cond_31

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    iput v7, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1476
    :cond_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1478
    sget v7, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    add-int/2addr v7, v4

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v9, v5

    add-int v10, v6, v1

    invoke-virtual {p1, v7, v6, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1480
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 1482
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    add-int/2addr v9, v4

    add-int v10, v4, v0

    add-int v11, v6, v1

    invoke-virtual {v7, v9, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1483
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1491
    :goto_56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1493
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v7, v5

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    div-int/lit8 v9, v9, 0x2

    sub-int v2, v7, v9

    .line 1494
    .local v2, "handleX":I
    sget v7, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    sub-int v7, v6, v7

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    div-int/lit8 v9, v9, 0x2

    sub-int v3, v7, v9

    .line 1499
    .local v3, "handleY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_119

    .line 1500
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_de

    .line 1501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/pantech/widget/SkySlideTheme;->mStartTime:J

    .line 1502
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    add-int/lit8 v7, v7, 0xa

    iput v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    .line 1503
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->mDefaultRippleAlpha:I

    if-le v7, v8, :cond_93

    .line 1504
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mDefaultRippleAlpha:I

    iput v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    .line 1506
    :cond_93
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    .line 1507
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    if-le v7, v12, :cond_9f

    .line 1508
    iput v12, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    .line 1510
    :cond_9f
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1511
    sget v7, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    int-to-float v7, v7

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1520
    :cond_ba
    :goto_ba
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1522
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1523
    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1520
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1524
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1465
    :goto_ca
    return-void

    .line 1487
    .end local v2    # "handleX":I
    .end local v3    # "handleY":I
    :cond_cb
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    add-int/2addr v9, v4

    add-int v10, v4, v0

    add-int v11, v6, v1

    invoke-virtual {v7, v9, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1488
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_56

    .line 1513
    .restart local v2    # "handleX":I
    .restart local v3    # "handleY":I
    :cond_de
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/pantech/widget/SkySlideTheme;->mStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    cmp-long v7, v10, v12

    if-gez v7, :cond_ba

    .line 1514
    sget v7, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    int-to-float v7, v7

    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x42480000    # 50.0f

    iget-object v11, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1515
    iget-object v9, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    add-int/lit8 v7, v7, -0x5

    if-ltz v7, :cond_117

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    add-int/lit8 v7, v7, -0x5

    :goto_10a
    iput v7, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleAlpha:I

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1516
    const-wide/16 v10, 0x10

    invoke-virtual {p0, v10, v11}, Lcom/pantech/widget/SkySlideTheme;->postInvalidateDelayed(J)V

    .line 1517
    iput v8, p0, Lcom/pantech/widget/SkySlideTheme;->mRippleRadius:I

    goto :goto_ba

    :cond_117
    move v7, v8

    .line 1515
    goto :goto_10a

    .line 1528
    :cond_119
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 1530
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1531
    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1528
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1532
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ca
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1345
    iget-boolean v7, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    if-nez v7, :cond_5

    return-void

    .line 1347
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1349
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1350
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1363
    :goto_19
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v7

    if-nez v7, :cond_6e

    .line 1364
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlideTheme;->X_TITLE:I

    sub-int v5, v7, v8

    .line 1366
    .local v5, "numX":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, "levelNum":Ljava/lang/String;
    int-to-float v7, v5

    sget v8, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1370
    const-string/jumbo v1, "Lv."

    .line 1371
    .local v1, "levelText":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1372
    .local v4, "numWidth":F
    int-to-float v7, v5

    sub-float/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_LV_MARGIN:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1374
    .local v6, "strX":F
    sget v7, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1343
    .end local v0    # "levelNum":Ljava/lang/String;
    .end local v1    # "levelText":Ljava/lang/String;
    .end local v4    # "numWidth":F
    .end local v5    # "numX":I
    .end local v6    # "strX":F
    :cond_5e
    :goto_5e
    return-void

    .line 1355
    :cond_5f
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1356
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1376
    :cond_6e
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5e

    .line 1378
    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlideTheme;->X_TITLE:I

    sub-int v3, v7, v8

    .line 1379
    .local v3, "lvX":I
    const-string/jumbo v1, "db"

    .line 1380
    .restart local v1    # "levelText":Ljava/lang/String;
    int-to-float v7, v3

    sget v8, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1383
    iget-object v7, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1384
    .local v2, "lvTextWidth":F
    int-to-float v7, v3

    sub-float/2addr v7, v2

    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_LV_MARGIN:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1387
    .restart local v6    # "strX":F
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    .restart local v0    # "levelNum":Ljava/lang/String;
    sget v7, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5e
.end method

.method private drawLevelBound(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1398
    iget-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    if-nez v6, :cond_5

    return-void

    .line 1400
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1402
    iget-object v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1403
    iget-object v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1413
    :goto_19
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v6

    if-nez v6, :cond_2f

    .line 1396
    :cond_1f
    :goto_1f
    return-void

    .line 1407
    :cond_20
    iget-object v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1408
    iget-object v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1423
    :cond_2f
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 1425
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "levelNumLeft":Ljava/lang/String;
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mPositivieValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "levelNumRight":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1428
    .local v3, "levelTextLeft":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1429
    .local v4, "levelTextRight":Ljava/lang/String;
    const-string/jumbo v2, "0db"

    .line 1430
    .local v2, "levelTextCenter":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1431
    .local v5, "lvTextCenterWidth":F
    sget v6, Lcom/pantech/widget/SkySlideTheme;->X_INPROG:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1432
    sget v6, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    sub-float/2addr v6, v7

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1433
    sget v6, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    add-int/2addr v6, v7

    sget v7, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1f
.end method

.method private drawPopup(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 1538
    iget-boolean v9, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    if-eqz v9, :cond_8

    iget-boolean v8, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    :cond_8
    if-nez v8, :cond_b

    return-void

    .line 1540
    :cond_b
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1541
    .local v4, "popupX":I
    sget v5, Lcom/pantech/widget/SkySlideTheme;->Y_POPUP_BOX:I

    .line 1543
    .local v5, "popupY":I
    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    .line 1544
    .local v3, "popupWidth":I
    sget v2, Lcom/pantech/widget/SkySlideTheme;->H_IMG_POPUP_BOX:I

    .line 1546
    .local v2, "popupHeight":I
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v4, v8

    .line 1547
    .local v6, "textX":I
    const/4 v7, 0x0

    .line 1549
    .local v7, "textY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v8

    if-nez v8, :cond_9b

    .line 1550
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, "level":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1552
    .local v0, "iTextLen":I
    if-lt v0, v10, :cond_7b

    .line 1554
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1555
    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    .line 1556
    add-int/lit8 v8, v4, -0x1

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 1558
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE_DIGIT3:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1582
    :goto_5f
    add-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v7, v8, 0x18

    .line 1584
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 1586
    add-int v9, v4, v3

    .line 1587
    add-int v10, v5, v2

    .line 1584
    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1588
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1590
    int-to-float v8, v6

    int-to-float v9, v7

    iget-object v10, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1536
    .end local v0    # "iTextLen":I
    .end local v1    # "level":Ljava/lang/String;
    :cond_7a
    :goto_7a
    return-void

    .line 1569
    .restart local v0    # "iTextLen":I
    .restart local v1    # "level":Ljava/lang/String;
    :cond_7b
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1570
    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    .line 1571
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v4, v8

    .line 1573
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_5f

    .line 1591
    .end local v0    # "iTextLen":I
    .end local v1    # "level":Ljava/lang/String;
    :cond_9b
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getLvStrType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7a

    .line 1592
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v9

    add-int/lit8 v9, v9, -0xc

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    .restart local v1    # "level":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1594
    .restart local v0    # "iTextLen":I
    if-lt v0, v10, :cond_fa

    .line 1596
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1597
    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    .line 1598
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v4, v8

    .line 1600
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE_DIGIT3:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1601
    add-int/lit8 v8, v5, 0x1

    sget v9, Lcom/pantech/widget/SkySlideTheme;->Y_POPUP_BOX_TEXT:I

    sub-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->H_IMG_POPUP_BOX:I

    div-int/lit8 v9, v9, 0xb

    sub-int v7, v8, v9

    .line 1626
    :goto_e4
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 1628
    add-int v9, v4, v3

    .line 1629
    add-int v10, v5, v2

    .line 1626
    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1630
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    int-to-float v8, v6

    int-to-float v9, v7

    iget-object v10, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7a

    .line 1611
    :cond_fa
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v8

    iget v9, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    add-int/2addr v8, v9

    sget v9, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1612
    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    .line 1613
    sget v8, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v4, v8

    .line 1615
    iget-object v8, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1616
    sget v8, Lcom/pantech/widget/SkySlideTheme;->Y_POPUP_BOX_TEXT:I

    sub-int v8, v5, v8

    sget v9, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    add-int v7, v8, v9

    goto :goto_e4
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    if-nez v0, :cond_5

    return-void

    .line 1329
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1331
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    :goto_12
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitleText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pantech/widget/SkySlideTheme;->X_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    sget v3, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1325
    return-void

    .line 1335
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12
.end method

.method private getBarPosX()I
    .registers 2

    .prologue
    .line 559
    sget v0, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    return v0
.end method

.method private getBarPosY()I
    .registers 3

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    if-eqz v0, :cond_f

    .line 545
    :cond_c
    sget v0, Lcom/pantech/widget/SkySlideTheme;->Y_OUTPROG:I

    return v0

    .line 553
    :cond_f
    sget v0, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MIN:I

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMinHeight()I
    .registers 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    if-eqz v0, :cond_f

    .line 532
    :cond_c
    sget v0, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MID:I

    return v0

    .line 536
    :cond_f
    sget v0, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MIN:I

    return v0
.end method

.method private init()V
    .registers 8

    .prologue
    const/16 v6, 0xfa

    const/16 v5, 0x7c

    const/16 v4, 0xa0

    const/4 v3, 0x0

    const/16 v2, 0x91

    .line 334
    invoke-static {}, Lcom/pantech/widget/RR;->getTheme()I

    move-result v0

    sput v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    .line 336
    sget v0, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5c

    .line 337
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE:I

    .line 338
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    .line 339
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    .line 347
    :goto_26
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE_D:I

    .line 348
    const/16 v0, 0x78

    invoke-static {v0, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT_D:I

    .line 349
    const/16 v0, 0x78

    invoke-static {v0, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    .line 351
    sget v0, Lcom/pantech/widget/SkySlideTheme;->X_POPUP_BOX:I

    sget v1, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/pantech/widget/SkySlideTheme;->X_POPUP_BOX:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/pantech/widget/SkySlideTheme;->setPadding(IIII)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->setFocusable(Z)V

    .line 356
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->initPaint()V

    .line 358
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->createImage()V

    .line 331
    return-void

    .line 342
    :cond_5c
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE:I

    .line 343
    const/16 v0, 0x69

    const/16 v1, 0x7f

    const/16 v2, 0x94

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    .line 344
    const/16 v0, 0x69

    const/16 v1, 0x7f

    const/16 v2, 0x94

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    goto :goto_26
.end method

.method private initLayout()V
    .registers 5

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v0

    .line 1257
    .local v0, "iMax":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    .line 1258
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHeight:I

    .line 1264
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MAX:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4a

    .line 1265
    sget v1, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MAX:I

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    .line 1272
    :goto_1f
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    .line 1274
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    .line 1276
    sget v1, Lcom/pantech/widget/SkySlideTheme;->H_IMG_OUTPROG:I

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    .line 1283
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    .line 1287
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1289
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->updateTouchArea()V

    .line 1253
    return-void

    .line 1266
    :cond_4a
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MIN:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_5a

    .line 1267
    sget v1, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MIN:I

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    goto :goto_1f

    .line 1269
    :cond_5a
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideWidth:I

    goto :goto_1f
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_27

    .line 390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    .line 391
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 397
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_54

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 400
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 403
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 404
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    :cond_54
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_81

    .line 409
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 410
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 413
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 414
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->S_LV_NUM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    :cond_81
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_a7

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 420
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 421
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 422
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->C_POPUP_BOX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 427
    :cond_a7
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c3

    .line 428
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    .line 429
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 431
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mRipplePaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    :cond_c3
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    if-nez v0, :cond_e9

    .line 436
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    .line 437
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 439
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 440
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 445
    :cond_e9
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    if-nez v0, :cond_10f

    .line 447
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    .line 448
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 450
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 451
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 386
    :cond_10f
    return-void
.end method

.method private resetLayout()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x43700000    # 240.0f

    .line 1663
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1664
    .local v0, "density":F
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1668
    .local v1, "densityDpi":I
    const v2, 0x7f0400ab

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MAX:I

    .line 1669
    const v2, 0x7f0400ac

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MID:I

    .line 1670
    const v2, 0x7f0400ad

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_SLIDE_MIN:I

    .line 1672
    const v2, 0x7f04008a

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->X_TITLE:I

    .line 1673
    const v2, 0x7f04008b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->Y_TITLE:I

    .line 1674
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_LV_MARGIN:I

    .line 1675
    const v2, 0x7f04008c

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    .line 1676
    const v2, 0x7f04008d

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->Y_OUTPROG:I

    .line 1677
    const v2, 0x7f04008e

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MAX:I

    .line 1678
    const v2, 0x7f04008f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_OUTPROG_MIN:I

    .line 1679
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    .line 1680
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    .line 1681
    sget v2, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlideTheme;->W_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlideTheme;->X_INPROG:I

    .line 1682
    sget v2, Lcom/pantech/widget/SkySlideTheme;->Y_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlideTheme;->H_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlideTheme;->Y_INPROG:I

    .line 1683
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->X_POPUP_BOX:I

    .line 1684
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x41a80000    # 21.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->Y_POPUP_BOX:I

    .line 1685
    const v2, 0x7f040096

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->Y_POPUP_BOX_TEXT:I

    .line 1686
    const v2, 0x7f040099

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE:I

    .line 1687
    const v2, 0x7f0400a8

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->POPUP_BOX_TEXT_SIZE_DIGIT3:I

    .line 1688
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_DIVIDER:I

    .line 1690
    const v2, 0x7f040090

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->S_TITLE:I

    .line 1691
    const v2, 0x7f040091

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->S_LV_TEXT:I

    .line 1692
    const v2, 0x7f040092

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->S_LV_NUM:I

    .line 1695
    const v2, 0x7f040093

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_IMG_OUTPROG:I

    .line 1696
    const v2, 0x7f0400aa

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE_OUTPROG:I

    .line 1697
    const v2, 0x7f040094

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    .line 1698
    const v2, 0x7f040095

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_IMG_HANDLE:I

    .line 1699
    const v2, 0x7f040097

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    .line 1700
    sget v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX:I

    sput v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_POPUP_BOX_MAX:I

    .line 1701
    const v2, 0x7f040098

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideTheme;->H_IMG_POPUP_BOX:I

    .line 1662
    return-void
.end method

.method private shouldFeedback()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTouchFBPlaying:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 602
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private startTimer(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    .line 619
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTouchFBTimer:Ljava/util/Timer;

    .line 620
    new-instance v1, Lcom/pantech/widget/SkySlideTheme$1;

    invoke-direct {v1, p0}, Lcom/pantech/widget/SkySlideTheme$1;-><init>(Lcom/pantech/widget/SkySlideTheme;)V

    .line 619
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 617
    return-void
.end method

.method private updateTouchArea()V
    .registers 7

    .prologue
    .line 517
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideRect:Landroid/graphics/Rect;

    .line 519
    :cond_b
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideRect:Landroid/graphics/Rect;

    sget v1, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    sget v2, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v2

    .line 520
    sget v3, Lcom/pantech/widget/SkySlideTheme;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlideTheme;->mBarWidth:I

    add-int/2addr v3, v4

    sget v4, Lcom/pantech/widget/SkySlideTheme;->W_IMG_HANDLE:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mBarHeight:I

    add-int/2addr v4, v5

    .line 519
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 515
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 859
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .line 860
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 861
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 863
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mTitleText:Ljava/lang/CharSequence;

    .line 864
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    .line 865
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 866
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 867
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    .line 871
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideRect:Landroid/graphics/Rect;

    .line 873
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mBg:Landroid/graphics/drawable/Drawable;

    .line 874
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mFg:Landroid/graphics/drawable/Drawable;

    .line 875
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 877
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 878
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 879
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 880
    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 857
    return-void
.end method

.method public getLevelBounds()Z
    .registers 2

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    return v0
.end method

.method public getLevelNumPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelNumPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLevelStrPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLevelStrPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLvStrType()I
    .registers 2

    .prologue
    .line 832
    iget v0, p0, Lcom/pantech/widget/SkySlideTheme;->mLvStrType:I

    return v0
.end method

.method public getOnlyHandleTouch()Z
    .registers 2

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsOnlyHandleTouch:Z

    return v0
.end method

.method public getPopupBoxPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mPopupBoxPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPositiveNegativeMode()Z
    .registers 2

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPositiveNegativeMode:Z

    return v0
.end method

.method public declared-synchronized getProgress()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 676
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 677
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 678
    .local v0, "tempProgress":I
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    add-int/2addr v0, v1

    monitor-exit p0

    .line 679
    return v0

    .line 681
    .end local v0    # "tempProgress":I
    :cond_10
    :try_start_10
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_16

    move-result v1

    monitor-exit p0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTitlePaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme;->mTitlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUsingTouchFB()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsUsingTouchFB:Z

    return v0
.end method

.method public isRevitalized()Z
    .registers 2

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsRevitalized:Z

    return v0
.end method

.method public measureHeight(I)I
    .registers 4
    .param p1, "spec"    # I

    .prologue
    .line 851
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 852
    .local v0, "height":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getMinHeight()I

    move-result v1

    .line 854
    .local v1, "min":I
    if-ge v0, v1, :cond_b

    .end local v1    # "min":I
    :goto_a
    return v1

    .restart local v1    # "min":I
    :cond_b
    move v1, v0

    goto :goto_a
.end method

.method public measureWidth(I)I
    .registers 3
    .param p1, "spec"    # I

    .prologue
    .line 841
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 843
    .local v0, "width":I
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1304
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawTitle(Landroid/graphics/Canvas;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawLevel(Landroid/graphics/Canvas;)V

    .line 1310
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawLevelBound(Landroid/graphics/Canvas;)V

    .line 1313
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawBarBg(Landroid/graphics/Canvas;)V

    .line 1316
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawBarDivider(Landroid/graphics/Canvas;)V

    .line 1319
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawBarFg(Landroid/graphics/Canvas;)V

    .line 1322
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->drawPopup(Landroid/graphics/Canvas;)V

    .line 1301
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 12
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const v7, 0x7f060128

    const/4 v6, 0x0

    const v5, 0x7f06012e

    const/4 v4, 0x2

    .line 893
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 895
    if-eqz p1, :cond_a4

    .line 899
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v0

    .line 900
    .local v0, "iCurrValue":I
    const-string/jumbo v1, "SkySlideTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOnSkySlideListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-nez v0, :cond_74

    .line 902
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_6d

    .line 903
    const v1, 0x7f06012f

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 918
    :goto_3a
    const-string/jumbo v1, "SkySlideTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsDragging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsPopupBox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    if-eqz v1, :cond_6c

    .line 921
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-interface {v1, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;->onStartTrackingKey(Landroid/widget/SeekBar;)V

    .line 886
    :cond_6c
    :goto_6c
    return-void

    .line 905
    :cond_6d
    invoke-static {v7}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 906
    :cond_74
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_8f

    .line 907
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_88

    .line 908
    const v1, 0x7f06012b

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 910
    :cond_88
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 913
    :cond_8f
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_9d

    .line 914
    const v1, 0x7f060129

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 916
    :cond_9d
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 927
    .end local v0    # "iCurrValue":I
    :cond_a4
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v0

    .line 928
    .restart local v0    # "iCurrValue":I
    const-string/jumbo v1, "SkySlideTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOnSkySlideListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-nez v0, :cond_e4

    .line 930
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_dd

    .line 931
    const v1, 0x7f060131

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 946
    :goto_d1
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 947
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    if-eqz v1, :cond_6c

    .line 949
    iget-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-interface {v1, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;->onStopTrackingKey(Landroid/widget/SeekBar;)V

    goto :goto_6c

    .line 933
    :cond_dd
    invoke-static {v7}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_d1

    .line 934
    :cond_e4
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_ff

    .line 935
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_f8

    .line 936
    const v1, 0x7f06012d

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_d1

    .line 938
    :cond_f8
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_d1

    .line 941
    :cond_ff
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v4, :cond_10d

    .line 942
    const v1, 0x7f060133

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_d1

    .line 944
    :cond_10d
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_d1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v5, 0x7f06012e

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 956
    packed-switch p1, :pswitch_data_128

    .line 1054
    :pswitch_8
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 972
    :pswitch_d
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 973
    .local v0, "iCurrValue":I
    if-nez v0, :cond_6c

    .line 974
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_62

    .line 975
    const v2, 0x7f06012f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 991
    :goto_22
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v3

    if-ge v2, v3, :cond_61

    .line 993
    iput-boolean v4, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 994
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 995
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlideTheme;->setPressed(Z)V

    .line 997
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 998
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1000
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    if-eqz v2, :cond_54

    .line 1002
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 1005
    :cond_54
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v2, :cond_61

    .line 1007
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1010
    :cond_61
    return v4

    .line 977
    :cond_62
    const v2, 0x7f060128

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    .line 978
    :cond_6c
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v2

    if-ne v0, v2, :cond_87

    .line 979
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_80

    .line 980
    const v2, 0x7f06012b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    .line 982
    :cond_80
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    .line 985
    :cond_87
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_95

    .line 986
    const v2, 0x7f060129

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    .line 988
    :cond_95
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    .line 1014
    .end local v0    # "iCurrValue":I
    :pswitch_9c
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1015
    .local v1, "iCurrValue1":I
    if-nez v1, :cond_f7

    .line 1016
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_ed

    .line 1017
    const v2, 0x7f06012f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1033
    :goto_b1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    if-lez v2, :cond_ec

    .line 1035
    iput-boolean v4, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 1036
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 1037
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlideTheme;->setPressed(Z)V

    .line 1039
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1040
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1042
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    if-eqz v2, :cond_df

    .line 1044
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 1047
    :cond_df
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v2, :cond_ec

    .line 1049
    iget-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1052
    :cond_ec
    return v4

    .line 1019
    :cond_ed
    const v2, 0x7f060128

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b1

    .line 1020
    :cond_f7
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_112

    .line 1021
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_10b

    .line 1022
    const v2, 0x7f06012b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b1

    .line 1024
    :cond_10b
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b1

    .line 1027
    :cond_112
    sget v2, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v2, v3, :cond_120

    .line 1028
    const v2, 0x7f060129

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b1

    .line 1030
    :cond_120
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b1

    .line 956
    nop

    :pswitch_data_128
    .packed-switch 0x13
        :pswitch_8
        :pswitch_8
        :pswitch_9c
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1245
    if-eqz p1, :cond_5

    .line 1247
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->initLayout()V

    .line 1250
    :cond_5
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 1236
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->measureWidth(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlideTheme;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setMeasuredDimension(II)V

    .line 1292
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    const v3, 0x7f06012e

    const/4 v2, 0x2

    .line 364
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v0

    .line 365
    .local v0, "iCurrValue":I
    if-nez v0, :cond_25

    .line 366
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v2, :cond_1b

    .line 367
    const v1, 0x7f060131

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 382
    :goto_17
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onRtlPropertiesChanged(I)V

    .line 362
    return-void

    .line 369
    :cond_1b
    const v1, 0x7f060128

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_17

    .line 370
    :cond_25
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_40

    .line 371
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v2, :cond_39

    .line 372
    const v1, 0x7f06012d

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_17

    .line 374
    :cond_39
    invoke-static {v3}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_17

    .line 377
    :cond_40
    sget v1, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v1, v2, :cond_4e

    .line 378
    const v1, 0x7f060133

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_17

    .line 380
    :cond_4e
    invoke-static {v3}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v11, 0x7f06012e

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1060
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1062
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_180

    .line 1233
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1067
    :pswitch_1c
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1069
    return v9

    .line 1072
    :cond_23
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 1074
    return v9

    .line 1077
    :cond_2c
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1078
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1079
    iput-boolean v8, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 1081
    invoke-super {p0, v8}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1083
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v5, :cond_45

    .line 1085
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1088
    :cond_45
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    if-eqz v5, :cond_4e

    .line 1090
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1093
    :cond_4e
    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->Position2Value(I)I

    move-result v1

    .line 1103
    .local v1, "iCurrValue0":I
    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 1105
    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->Position2Value(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 1107
    sget v5, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v5, v10, :cond_87

    .line 1108
    const v5, 0x7f060135

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1113
    :goto_6c
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v5, :cond_79

    .line 1115
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1118
    :cond_79
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    if-eqz v5, :cond_86

    .line 1120
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 1122
    :cond_86
    return v8

    .line 1110
    :cond_87
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    .line 1128
    .end local v1    # "iCurrValue0":I
    :pswitch_8e
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_95

    .line 1131
    return v9

    .line 1134
    :cond_95
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->getBarPosX()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1136
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1138
    iget v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->Position2Value(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->setProgressWithNoDraw(I)V

    .line 1140
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 1142
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1145
    :cond_b6
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v2

    .line 1155
    .local v2, "iCurrValue1":I
    iput v2, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 1157
    sget v5, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v5, v10, :cond_dc

    .line 1158
    const v5, 0x7f060135

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1162
    :goto_c9
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v5, :cond_d2

    .line 1164
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-interface {v5, p0, v2, v8}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1167
    :cond_d2
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    if-eqz v5, :cond_db

    .line 1169
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-interface {v5, p0, v2, v8}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 1171
    :cond_db
    return v8

    .line 1160
    :cond_dc
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_c9

    .line 1176
    .end local v2    # "iCurrValue1":I
    :pswitch_e3
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_ea

    .line 1178
    return v9

    .line 1181
    :cond_ea
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v0

    .line 1182
    .local v0, "iCurrValue":I
    const-string/jumbo v5, "SkySlideTheme"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mOnSkySlideListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-nez v0, :cond_146

    .line 1184
    sget v5, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v5, v10, :cond_13c

    .line 1185
    const v5, 0x7f060131

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1201
    :goto_117
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    if-eqz v5, :cond_120

    .line 1203
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1206
    :cond_120
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    if-eqz v5, :cond_129

    .line 1208
    iget-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1211
    :cond_129
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v5

    iput v5, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1214
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1215
    iput-boolean v9, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 1217
    invoke-super {p0, v9}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1218
    return v8

    .line 1187
    :cond_13c
    const v5, 0x7f060128

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_117

    .line 1188
    :cond_146
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getMax()I

    move-result v5

    if-ne v0, v5, :cond_161

    .line 1189
    sget v5, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v5, v10, :cond_15a

    .line 1190
    const v5, 0x7f06012d

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_117

    .line 1192
    :cond_15a
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_117

    .line 1195
    :cond_161
    sget v5, Lcom/pantech/widget/SkySlideTheme;->mTheme:I

    if-ne v5, v10, :cond_16f

    .line 1196
    const v5, 0x7f060133

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_117

    .line 1198
    :cond_16f
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideTheme;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_117

    .line 1223
    .end local v0    # "iCurrValue":I
    :pswitch_176
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1224
    iput-boolean v9, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 1226
    invoke-super {p0, v9}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1227
    return v8

    .line 1062
    nop

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_e3
        :pswitch_8e
        :pswitch_176
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1642
    if-nez p1, :cond_15

    .line 1654
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 1655
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 1656
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDragging:Z

    .line 1658
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1641
    :cond_15
    return-void
.end method

.method public setDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsDivider:Z

    .line 711
    return-void
.end method

.method public setLevel(Z)V
    .registers 2
    .param p1, "level"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevel:Z

    .line 720
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->updateTouchArea()V

    .line 716
    return-void
.end method

.method public setLevelBounds(Z)V
    .registers 2
    .param p1, "isLevelBounds"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsLevelBounds:Z

    .line 814
    return-void
.end method

.method public setLvDNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 758
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM_D:I

    .line 756
    return-void
.end method

.method public setLvDTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 753
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT_D:I

    .line 751
    return-void
.end method

.method public setLvNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 746
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_NUM:I

    .line 744
    return-void
.end method

.method public setLvStrType(I)V
    .registers 2
    .param p1, "lvStrType"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/pantech/widget/SkySlideTheme;->mLvStrType:I

    .line 825
    return-void
.end method

.method public setLvTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 741
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_LV_TEXT:I

    .line 739
    return-void
.end method

.method public setMaxWithPositiveNegative(II)V
    .registers 5
    .param p1, "ne"    # I
    .param p2, "po"    # I

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "max":I
    neg-int v1, p1

    add-int v0, v1, p2

    .line 322
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlideTheme;->setMax(I)V

    .line 323
    iput p1, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I

    .line 324
    iput p2, p0, Lcom/pantech/widget/SkySlideTheme;->mPositivieValue:I

    .line 325
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkySlideTheme;->setPositiveNegativeMode(Z)V

    .line 318
    return-void
.end method

.method public setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 639
    return-void
.end method

.method public setOnSkySlideListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideListener;

    .line 634
    return-void
.end method

.method public setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 644
    return-void
.end method

.method public setOnlyHandleTouch(Z)V
    .registers 2
    .param p1, "fIsUse"    # Z

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsOnlyHandleTouch:Z

    .line 685
    return-void
.end method

.method public setPopupBox(Z)V
    .registers 2
    .param p1, "popup"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPopupBox:Z

    .line 708
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->updateTouchArea()V

    .line 704
    return-void
.end method

.method public setPositiveNegativeMode(Z)V
    .registers 2
    .param p1, "isPositiveNegativeMode"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsPositiveNegativeMode:Z

    .line 804
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 651
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 652
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 653
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 658
    .end local v0    # "tempProgress":I
    :goto_e
    iput p1, p0, Lcom/pantech/widget/SkySlideTheme;->mPrevValue:I

    .line 659
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mDividerInterval:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_27

    .line 661
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlideTheme;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideTheme;->mSlidePosX:I

    .line 662
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2d

    :cond_27
    monitor-exit p0

    .line 649
    return-void

    .line 655
    :cond_29
    :try_start_29
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_e

    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setProgressWithNoDraw(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 667
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 668
    iget v1, p0, Lcom/pantech/widget/SkySlideTheme;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 669
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .end local v0    # "tempProgress":I
    :goto_e
    monitor-exit p0

    .line 665
    return-void

    .line 671
    :cond_10
    :try_start_10
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_e

    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setRevitalized(Z)V
    .registers 2
    .param p1, "fStatus"    # Z

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsRevitalized:Z

    .line 792
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->setFocusableInTouchMode(Z)V

    .line 793
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->setEnabled(Z)V

    .line 794
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideTheme;->setFocusable(Z)V

    .line 796
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideTheme;->invalidate()V

    .line 788
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme;->mTitleText:Ljava/lang/CharSequence;

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideTheme;->mIsTitle:Z

    .line 701
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideTheme;->updateTouchArea()V

    .line 695
    return-void
.end method

.method public setTitleColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 731
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE:I

    .line 729
    return-void
.end method

.method public setTitleDColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 736
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideTheme;->C_TITLE_D:I

    .line 734
    return-void
.end method

.method public setUsingTouchFB(Z)V
    .registers 2
    .param p1, "isUse"    # Z

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideTheme;->mIsUsingTouchFB:Z

    .line 763
    return-void
.end method
