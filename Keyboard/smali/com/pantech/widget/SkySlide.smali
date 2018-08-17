.class public Lcom/pantech/widget/SkySlide;
.super Landroid/widget/SeekBar;
.source "SkySlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkySlide$OnSkySlideListener;,
        Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;,
        Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;
    }
.end annotation


# static fields
.field private static final C_POPUP_BOX:I

.field private static final DEBUG:Z = true

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

.field private static S_LV_NUM:I = 0x0

.field private static S_LV_TEXT:I = 0x0

.field private static S_POPUP_BOX:I = 0x0

.field private static S_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SkySlide"

.field private static W_DIVIDER:I = 0x0

.field private static W_IMG_HANDLE:I = 0x0

.field private static W_IMG_POPUP_BOX:I = 0x0

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

.field private mBg_d:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

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

.field private mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

.field private mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

.field private mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

.field private mPopupBox:Landroid/graphics/drawable/Drawable;

.field private mPopupBoxPaint:Landroid/graphics/Paint;

.field private mPositivieValue:I

.field private mPrevValue:I

.field private mSlidePosX:I

.field private mSlideRect:Landroid/graphics/Rect;

.field private mSlideWidth:I

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTouchFBTimer:Ljava/util/Timer;

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/pantech/widget/SkySlide;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsTouchFBPlaying:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xff

    .line 68
    sget v0, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlide;->X_INPROG:I

    .line 69
    sget v0, Lcom/pantech/widget/SkySlide;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlide;->Y_INPROG:I

    .line 83
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pantech/widget/SkySlide;->C_POPUP_BOX:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkySlide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 249
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    .line 255
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->resetLayout()V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "max"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x7c

    const/16 v3, 0x78

    const/16 v2, 0xa0

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    .line 78
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE_D:I

    .line 79
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    .line 80
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    .line 81
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    .line 82
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    .line 112
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 114
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mHeight:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    .line 120
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mLvStrType:I

    .line 128
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDivider:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsUsingTouchFB:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTouchFBPlaying:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsRevitalized:Z

    .line 136
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsOnlyHandleTouch:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsPositiveNegativeMode:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    .line 155
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .line 156
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .line 157
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .line 262
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, int max)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + max = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    .line 269
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->resetLayout()V

    .line 271
    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlide;->setMax(I)V

    .line 273
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->init()V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ne"    # I
    .param p3, "po"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x7c

    const/16 v3, 0x78

    const/16 v2, 0xa0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    .line 78
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE_D:I

    .line 79
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    .line 80
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    .line 81
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    .line 82
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    .line 112
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 114
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mHeight:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    .line 120
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mLvStrType:I

    .line 128
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDivider:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsUsingTouchFB:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTouchFBPlaying:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsRevitalized:Z

    .line 136
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsOnlyHandleTouch:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsPositiveNegativeMode:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    .line 155
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .line 156
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .line 157
    iput-object v5, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .line 283
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, int ne, int po)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/pantech/widget/SkySlide;->setMaxWithPositiveNegative(II)V

    .line 290
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->init()V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 233
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/widget/SkySlide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + attrs = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    .line 242
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->resetLayout()V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x78

    const/4 v8, 0x0

    const/16 v7, 0xa0

    const/4 v6, 0x0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    .line 78
    const/16 v3, 0x7c

    const/16 v4, 0x7c

    const/16 v5, 0x7c

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_TITLE_D:I

    .line 79
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    .line 80
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    .line 81
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    .line 82
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    .line 112
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 114
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    .line 115
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mHeight:I

    .line 116
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    .line 117
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    .line 118
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    .line 119
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    .line 120
    iput v6, p0, Lcom/pantech/widget/SkySlide;->mLvStrType:I

    .line 128
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    .line 129
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsDivider:Z

    .line 130
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    .line 131
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    .line 132
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 133
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsUsingTouchFB:Z

    .line 134
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlide;->mIsTouchFBPlaying:Z

    .line 135
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlide;->mIsRevitalized:Z

    .line 136
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsOnlyHandleTouch:Z

    .line 137
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsPositiveNegativeMode:Z

    .line 138
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    .line 155
    iput-object v8, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .line 156
    iput-object v8, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .line 157
    iput-object v8, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .line 199
    const-string/jumbo v3, "SkySlide"

    const-string/jumbo v4, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs, int defStyle)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string/jumbo v3, "SkySlide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<CLASS INFO>> + context = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string/jumbo v3, "SkySlide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<CLASS INFO>> + attrs = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v3, "SkySlide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<CLASS INFO>> + defStyle = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    .line 207
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->resetLayout()V

    .line 209
    if-eqz p2, :cond_100

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "defLev":Z
    sget-object v3, Lcom/pantech/res/R$styleable;->SkyDialogStyle:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 215
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_e7

    .line 217
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x1

    .line 220
    :cond_e7
    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide;->setLevel(Z)V

    .line 221
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide;->setPopupBox(Z)V

    .line 223
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide;->setDivider(Z)V

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defLev":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_100
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->init()V

    .line 195
    return-void
.end method

.method private Position2Value(I)I
    .registers 9
    .param p1, "iPosition"    # I

    .prologue
    .line 465
    const/4 v3, 0x0

    .line 466
    .local v3, "iValue":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getMax()I

    move-result v0

    .line 467
    .local v0, "iMax":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 468
    .local v1, "iQuotient":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    rem-float/2addr v4, v5

    float-to-int v2, v4

    .line 470
    .local v2, "iRemainder":I
    int-to-float v4, v2

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2b

    .line 472
    add-int/lit8 v3, v1, 0x1

    .line 479
    :goto_1b
    if-gez v3, :cond_1e

    .line 481
    const/4 v3, 0x0

    .line 484
    :cond_1e
    if-le v3, v0, :cond_21

    .line 486
    move v3, v0

    .line 488
    :cond_21
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPositiveNegativeMode()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 489
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I

    add-int/2addr v3, v4

    .line 491
    :cond_2a
    return v3

    .line 476
    :cond_2b
    move v3, v1

    goto :goto_1b
.end method

.method private Value2Position(I)I
    .registers 4
    .param p1, "iValue"    # I

    .prologue
    .line 460
    iget v0, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private createImage()V
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    .line 386
    const v0, 0x7f060161

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg:Landroid/graphics/drawable/Drawable;

    .line 388
    :cond_d
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mFg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    .line 389
    const v0, 0x7f060165

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mFg:Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_1a
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_27

    .line 392
    const v0, 0x7f060195

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 394
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_34

    .line 395
    const v0, 0x7f060163

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_34
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mFg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_41

    .line 398
    const v0, 0x7f060167

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 400
    :cond_41
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4e

    .line 401
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 403
    :cond_4e
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5b

    .line 404
    const v0, 0x7f06018b

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 406
    :cond_5b
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBox:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_68

    .line 407
    const v0, 0x7f06016e

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_68
    return-void
.end method

.method private doTouchFBDrag()V
    .registers 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->shouldFeedback()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 501
    :cond_7
    return-void
.end method

.method private drawBarBg(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1254
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1255
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1250
    :goto_22
    return-void

    .line 1259
    :cond_23
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg_d:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1260
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mBg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22
.end method

.method private drawBarDivider(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1266
    iget-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDivider:Z

    if-nez v1, :cond_5

    return-void

    .line 1268
    :cond_5
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 1270
    iget-object v1, p0, Lcom/pantech/widget/SkySlide;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosX()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1271
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v3

    .line 1272
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosX()I

    move-result v4

    sget v5, Lcom/pantech/widget/SkySlide;->W_DIVIDER:I

    add-int/2addr v4, v5

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1273
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v5

    iget v6, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    add-int/2addr v5, v6

    .line 1270
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1274
    iget-object v1, p0, Lcom/pantech/widget/SkySlide;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1264
    :cond_39
    return-void
.end method

.method private drawBarFg(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 1280
    sget v4, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    .line 1281
    .local v4, "sx":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosX()I

    move-result v5

    .line 1282
    .local v5, "x":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v7

    sget v8, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    add-int v6, v7, v8

    .line 1283
    .local v6, "y":I
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    sget v8, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 1284
    .local v0, "dx_max":I
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    sget v8, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 1286
    .local v1, "dy":I
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    if-gez v7, :cond_25

    iput v9, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 1287
    :cond_25
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    iget v8, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    if-le v7, v8, :cond_2f

    iget v7, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    iput v7, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 1289
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1291
    sget v7, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    add-int/2addr v8, v5

    add-int v9, v6, v1

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1293
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1295
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mFg:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1296
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1304
    :goto_54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1306
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    add-int/2addr v7, v5

    sget v8, Lcom/pantech/widget/SkySlide;->W_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 1307
    .local v2, "handleX":I
    sget v7, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1312
    .local v3, "handleY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1314
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1316
    sget v8, Lcom/pantech/widget/SkySlide;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1317
    sget v9, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1314
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1318
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1278
    :goto_85
    return-void

    .line 1300
    .end local v2    # "handleX":I
    .end local v3    # "handleY":I
    :cond_86
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mFg_d:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1301
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mFg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_54

    .line 1322
    .restart local v2    # "handleX":I
    .restart local v3    # "handleY":I
    :cond_98
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 1324
    sget v8, Lcom/pantech/widget/SkySlide;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1325
    sget v9, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1322
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1326
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mHandle_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_85
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1158
    iget-boolean v7, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    if-nez v7, :cond_5

    return-void

    .line 1160
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1162
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1163
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1173
    :goto_19
    const-string/jumbo v7, "SkySlide"

    const-string/jumbo v8, "drawLevel"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v7

    if-nez v7, :cond_77

    .line 1177
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlide;->X_TITLE:I

    sub-int v5, v7, v8

    .line 1179
    .local v5, "numX":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "levelNum":Ljava/lang/String;
    int-to-float v7, v5

    sget v8, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1183
    const-string/jumbo v1, "Lv."

    .line 1184
    .local v1, "levelText":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1185
    .local v4, "numWidth":F
    int-to-float v7, v5

    sub-float/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide;->W_LV_MARGIN:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1187
    .local v6, "strX":F
    sget v7, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1156
    .end local v0    # "levelNum":Ljava/lang/String;
    .end local v1    # "levelText":Ljava/lang/String;
    .end local v4    # "numWidth":F
    .end local v5    # "numX":I
    .end local v6    # "strX":F
    :cond_67
    :goto_67
    return-void

    .line 1168
    :cond_68
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1169
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1189
    :cond_77
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_67

    .line 1191
    iget v7, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlide;->X_TITLE:I

    sub-int v3, v7, v8

    .line 1192
    .local v3, "lvX":I
    const-string/jumbo v1, "db"

    .line 1193
    .restart local v1    # "levelText":Ljava/lang/String;
    int-to-float v7, v3

    sget v8, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1196
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1197
    .local v2, "lvTextWidth":F
    int-to-float v7, v3

    sub-float/2addr v7, v2

    sget v8, Lcom/pantech/widget/SkySlide;->W_LV_MARGIN:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1200
    .restart local v6    # "strX":F
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    .restart local v0    # "levelNum":Ljava/lang/String;
    sget v7, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_67
.end method

.method private drawLevelBound(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1211
    iget-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    if-nez v6, :cond_5

    return-void

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1215
    iget-object v6, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1216
    iget-object v6, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1224
    :goto_19
    const-string/jumbo v6, "SkySlide"

    const-string/jumbo v7, "drawLevelBound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v6

    if-nez v6, :cond_38

    .line 1209
    :cond_28
    :goto_28
    return-void

    .line 1220
    :cond_29
    iget-object v6, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1221
    iget-object v6, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1236
    :cond_38
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    .line 1238
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "levelNumLeft":Ljava/lang/String;
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlide;->mPositivieValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1240
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

    .line 1241
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

    .line 1242
    .local v4, "levelTextRight":Ljava/lang/String;
    const-string/jumbo v2, "0db"

    .line 1243
    .local v2, "levelTextCenter":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1244
    .local v5, "lvTextCenterWidth":F
    sget v6, Lcom/pantech/widget/SkySlide;->X_INPROG:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1245
    sget v6, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    sub-float/2addr v6, v7

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1246
    sget v6, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    add-int/2addr v6, v7

    sget v7, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_28
.end method

.method private drawPopup(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1332
    iget-boolean v8, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    if-eqz v8, :cond_8

    iget-boolean v7, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    :cond_8
    if-nez v7, :cond_b

    return-void

    .line 1334
    :cond_b
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosX()I

    move-result v7

    iget v8, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1335
    .local v3, "popupX":I
    sget v4, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX:I

    .line 1338
    .local v4, "popupY":I
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 1340
    sget v8, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    add-int/2addr v8, v3

    .line 1341
    sget v9, Lcom/pantech/widget/SkySlide;->H_IMG_POPUP_BOX:I

    add-int/2addr v9, v4

    .line 1338
    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1342
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1344
    sget v7, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    div-int/lit8 v7, v7, 0x2

    add-int v5, v3, v7

    .line 1345
    .local v5, "textX":I
    const/4 v6, 0x0

    .line 1350
    .local v6, "textY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v7

    if-nez v7, :cond_cb

    .line 1351
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1352
    .local v2, "level":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1353
    .local v0, "iTextLen":I
    if-lt v0, v10, :cond_98

    .line 1356
    sget v7, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v0, -0x3

    sget v10, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x2

    mul-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 1358
    .local v1, "iTextSize":I
    const-string/jumbo v7, "SkySlide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize1 = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1361
    sget v7, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v1, 0x2

    add-int v6, v7, v8

    .line 1371
    .end local v1    # "iTextSize":I
    :goto_90
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1330
    .end local v0    # "iTextLen":I
    .end local v2    # "level":Ljava/lang/String;
    :cond_97
    :goto_97
    return-void

    .line 1365
    .restart local v0    # "iTextLen":I
    .restart local v2    # "level":Ljava/lang/String;
    :cond_98
    const-string/jumbo v7, "SkySlide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize S_POPUP_BOX1 = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1367
    sget v7, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    add-int v6, v7, v8

    goto :goto_90

    .line 1372
    .end local v0    # "iTextLen":I
    .end local v2    # "level":Ljava/lang/String;
    :cond_cb
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getLvStrType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_97

    .line 1373
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1374
    .restart local v2    # "level":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1375
    .restart local v0    # "iTextLen":I
    if-lt v0, v10, :cond_136

    .line 1378
    sget v7, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v0, -0x3

    sget v10, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x2

    mul-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 1379
    .restart local v1    # "iTextSize":I
    const-string/jumbo v7, "SkySlide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize2 = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1382
    sget v7, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v1, 0x2

    add-int v6, v7, v8

    .line 1391
    .end local v1    # "iTextSize":I
    :goto_12d
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_97

    .line 1386
    :cond_136
    const-string/jumbo v7, "SkySlide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize S_POPUP_BOX2 = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v7, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1388
    sget v7, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    add-int v6, v7, v8

    goto :goto_12d
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    if-nez v0, :cond_5

    return-void

    .line 1142
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1144
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1151
    :goto_12
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "drawTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitleText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pantech/widget/SkySlide;->X_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    sget v3, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1138
    return-void

    .line 1148
    :cond_30
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_TITLE_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12
.end method

.method private getBarPosX()I
    .registers 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getBarPosY()I
    .registers 4

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 441
    sget v0, Lcom/pantech/widget/SkySlide;->Y_OUTPROG:I

    return v0

    .line 443
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    if-eqz v0, :cond_1c

    .line 445
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlide;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide;->H_SLIDE_MAX:I

    sget v2, Lcom/pantech/widget/SkySlide;->H_SLIDE_MID:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 449
    :cond_1c
    sget v0, Lcom/pantech/widget/SkySlide;->H_SLIDE_MIN:I

    iget v1, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMinHeight()I
    .registers 2

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 425
    sget v0, Lcom/pantech/widget/SkySlide;->H_SLIDE_MAX:I

    return v0

    .line 427
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    if-eqz v0, :cond_16

    .line 429
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlide;->H_SLIDE_MID:I

    return v0

    .line 433
    :cond_16
    sget v0, Lcom/pantech/widget/SkySlide;->H_SLIDE_MIN:I

    return v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    sget v0, Lcom/pantech/widget/SkySlide;->X_POPUP_BOX:I

    sget v1, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/pantech/widget/SkySlide;->X_POPUP_BOX:I

    sget v2, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/pantech/widget/SkySlide;->setPadding(IIII)V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide;->setFocusable(Z)V

    .line 315
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->initPaint()V

    .line 317
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->createImage()V

    .line 309
    return-void
.end method

.method private initLayout()V
    .registers 5

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getMax()I

    move-result v0

    .line 1070
    .local v0, "iMax":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    .line 1071
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mHeight:I

    .line 1073
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MAX:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_11f

    .line 1078
    sget v1, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MAX:I

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    .line 1085
    :goto_65
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    .line 1087
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    .line 1089
    sget v1, Lcom/pantech/widget/SkySlide;->H_IMG_OUTPROG:I

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    .line 1091
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSlideWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBarHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iMax = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    .line 1098
    const-string/jumbo v1, "SkySlide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDividerInterval = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 1102
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->updateTouchArea()V

    .line 1066
    return-void

    .line 1079
    :cond_11f
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MIN:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_130

    .line 1080
    sget v1, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MIN:I

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    goto/16 :goto_65

    .line 1082
    :cond_130
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlideWidth:I

    goto/16 :goto_65
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_27

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    .line 325
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 327
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_54

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 334
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 337
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 338
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    :cond_54
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_81

    .line 343
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 344
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 347
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_LV_NUM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    :cond_81
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_ae

    .line 353
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 354
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 355
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->C_POPUP_BOX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 361
    :cond_ae
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    if-nez v0, :cond_d4

    .line 363
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    .line 364
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 366
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    :cond_d4
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    if-nez v0, :cond_fa

    .line 374
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    .line 375
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 377
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 320
    :cond_fa
    return-void
.end method

.method private resetLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43700000    # 240.0f

    .line 1422
    iget-object v2, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1423
    .local v0, "density":F
    iget-object v2, p0, Lcom/pantech/widget/SkySlide;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1427
    .local v1, "densityDpi":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x432c0000    # 172.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_SLIDE_MAX:I

    .line 1428
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x43270000    # 167.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_SLIDE_MID:I

    .line 1429
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x42ac0000    # 86.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_SLIDE_MIN:I

    .line 1431
    const v2, 0x7f04008a

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->X_TITLE:I

    .line 1432
    const v2, 0x7f04008b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->Y_TITLE:I

    .line 1433
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_LV_MARGIN:I

    .line 1434
    const v2, 0x7f04008c

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    .line 1435
    const v2, 0x7f04008d

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->Y_OUTPROG:I

    .line 1436
    const v2, 0x7f04008e

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MAX:I

    .line 1437
    const v2, 0x7f04008f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_OUTPROG_MIN:I

    .line 1438
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    .line 1439
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    .line 1440
    sget v2, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlide;->W_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlide;->X_INPROG:I

    .line 1441
    sget v2, Lcom/pantech/widget/SkySlide;->Y_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlide;->H_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlide;->Y_INPROG:I

    .line 1442
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->X_POPUP_BOX:I

    .line 1443
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX:I

    .line 1444
    const v2, 0x7f040096

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->Y_POPUP_BOX_TEXT:I

    .line 1445
    const v2, 0x7f040099

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->POPUP_BOX_TEXT_SIZE:I

    .line 1446
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_DIVIDER:I

    .line 1448
    const v2, 0x7f040090

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->S_TITLE:I

    .line 1449
    const v2, 0x7f040091

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->S_LV_TEXT:I

    .line 1450
    const v2, 0x7f040092

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->S_LV_NUM:I

    .line 1451
    sget v2, Lcom/pantech/widget/SkySlide;->POPUP_BOX_TEXT_SIZE:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide;->S_POPUP_BOX:I

    .line 1453
    const v2, 0x7f040093

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_IMG_OUTPROG:I

    .line 1454
    const v2, 0x7f040094

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_IMG_HANDLE:I

    .line 1455
    const v2, 0x7f040095

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_IMG_HANDLE:I

    .line 1456
    const v2, 0x7f040097

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->W_IMG_POPUP_BOX:I

    .line 1457
    const v2, 0x7f040098

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide;->H_IMG_POPUP_BOX:I

    .line 1421
    return-void
.end method

.method private shouldFeedback()Z
    .registers 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTouchFBPlaying:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 498
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private startTimer(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    .line 515
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTouchFBTimer:Ljava/util/Timer;

    .line 516
    new-instance v1, Lcom/pantech/widget/SkySlide$1;

    invoke-direct {v1, p0}, Lcom/pantech/widget/SkySlide$1;-><init>(Lcom/pantech/widget/SkySlide;)V

    .line 515
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 513
    return-void
.end method

.method private updateTouchArea()V
    .registers 7

    .prologue
    .line 415
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mSlideRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mSlideRect:Landroid/graphics/Rect;

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mSlideRect:Landroid/graphics/Rect;

    sget v1, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v2

    .line 418
    sget v3, Lcom/pantech/widget/SkySlide;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide;->mBarHeight:I

    add-int/2addr v4, v5

    .line 417
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 413
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 755
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .line 756
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .line 757
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .line 759
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mTitleText:Ljava/lang/CharSequence;

    .line 760
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    .line 761
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 762
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 763
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    .line 767
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mSlideRect:Landroid/graphics/Rect;

    .line 769
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mBg:Landroid/graphics/drawable/Drawable;

    .line 770
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mFg:Landroid/graphics/drawable/Drawable;

    .line 771
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 772
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 773
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 774
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 775
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 776
    iput-object v1, p0, Lcom/pantech/widget/SkySlide;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 753
    return-void
.end method

.method public getLevelBounds()Z
    .registers 2

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    return v0
.end method

.method public getLevelNumPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelNumPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLevelStrPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mLevelStrPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLvStrType()I
    .registers 2

    .prologue
    .line 728
    iget v0, p0, Lcom/pantech/widget/SkySlide;->mLvStrType:I

    return v0
.end method

.method public getOnlyHandleTouch()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsOnlyHandleTouch:Z

    return v0
.end method

.method public getPopupBoxPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mPopupBoxPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPositiveNegativeMode()Z
    .registers 2

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsPositiveNegativeMode:Z

    return v0
.end method

.method public declared-synchronized getProgress()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 572
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 573
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 574
    .local v0, "tempProgress":I
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    add-int/2addr v0, v1

    monitor-exit p0

    .line 575
    return v0

    .line 577
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
    .line 621
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mTitlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUsingTouchFB()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsUsingTouchFB:Z

    return v0
.end method

.method public isRevitalized()Z
    .registers 2

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsRevitalized:Z

    return v0
.end method

.method public measureHeight(I)I
    .registers 4
    .param p1, "spec"    # I

    .prologue
    .line 747
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 748
    .local v0, "height":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->getMinHeight()I

    move-result v1

    .line 750
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
    .line 737
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 739
    .local v0, "width":I
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawTitle(Landroid/graphics/Canvas;)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawLevel(Landroid/graphics/Canvas;)V

    .line 1123
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawLevelBound(Landroid/graphics/Canvas;)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawBarBg(Landroid/graphics/Canvas;)V

    .line 1129
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawBarDivider(Landroid/graphics/Canvas;)V

    .line 1132
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawBarFg(Landroid/graphics/Canvas;)V

    .line 1135
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide;->drawPopup(Landroid/graphics/Canvas;)V

    .line 1114
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 784
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + gainFocus = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + direction = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + previouslyFocusedRect = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 791
    if-eqz p1, :cond_b6

    .line 793
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "++++++++++ FOCUS ON ++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const v0, 0x7f060179

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 796
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsDragging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsPopupBox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    if-eqz v0, :cond_b5

    .line 799
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    invoke-interface {v0, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;->onStartTrackingKey(Landroid/widget/SeekBar;)V

    .line 782
    :cond_b5
    :goto_b5
    return-void

    .line 804
    :cond_b6
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "++++++++++ FOCUS OFF ++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const v0, 0x7f060176

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 807
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    if-eqz v0, :cond_b5

    .line 809
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    invoke-interface {v0, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;->onStopTrackingKey(Landroid/widget/SeekBar;)V

    goto :goto_b5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 816
    packed-switch p1, :pswitch_data_b6

    .line 878
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 819
    :pswitch_9
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "@@@@@@@@@@ UP @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 823
    :pswitch_13
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "@@@@@@@@@@ DOWN @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 827
    :pswitch_1d
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "@@@@@@@@@@ CENTER @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 831
    :pswitch_27
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "@@@@@@@@@@ RIGHT @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 835
    iput-boolean v2, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 836
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide;->setProgress(I)V

    .line 837
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide;->setPressed(Z)V

    .line 839
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 840
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 842
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    if-eqz v0, :cond_62

    .line 844
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 847
    :cond_62
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v0, :cond_6f

    .line 849
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 852
    :cond_6f
    return v2

    .line 855
    :pswitch_70
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "@@@@@@@@@@ LEFT @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    if-lez v0, :cond_b4

    .line 859
    iput-boolean v2, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 860
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide;->setProgress(I)V

    .line 861
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide;->setPressed(Z)V

    .line 863
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 864
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 866
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    if-eqz v0, :cond_a7

    .line 868
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 871
    :cond_a7
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v0, :cond_b4

    .line 873
    iget-object v0, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 876
    :cond_b4
    return v2

    .line 816
    nop

    :pswitch_data_b6
    .packed-switch 0x13
        :pswitch_9
        :pswitch_13
        :pswitch_70
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1051
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> onLayout(boolean changed, int left, int top, int right,int bottom)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + changed = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + left = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + top = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + right = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + bottom = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    if-eqz p1, :cond_b3

    .line 1060
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->initLayout()V

    .line 1063
    :cond_b3
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 1049
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1107
    const-string/jumbo v0, "SkySlide"

    const-string/jumbo v1, "<<CLASS INFO>> onMeasure(int widthMeasureSpec, int heightMeasureSpec)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + widthMeasureSpec = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string/jumbo v0, "SkySlide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<CLASS INFO>> + heightMeasureSpec = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide;->measureWidth(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlide;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkySlide;->setMeasuredDimension(II)V

    .line 1105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0x7f060179

    const v8, 0x7f060176

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 884
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 886
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_210

    .line 1046
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 889
    :pswitch_1e
    const-string/jumbo v4, "SkySlide"

    const-string/jumbo v5, "========== ACTION_DOWN =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_34

    .line 893
    return v6

    .line 897
    :cond_34
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mSlideRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 899
    return v6

    .line 903
    :cond_3d
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    iput v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 904
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 905
    iput-boolean v7, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 907
    invoke-super {p0, v7}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 909
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v4, :cond_56

    .line 911
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-interface {v4, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 914
    :cond_56
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    if-eqz v4, :cond_5f

    .line 916
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    invoke-interface {v4, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 919
    :cond_5f
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkySlide;->Position2Value(I)I

    move-result v0

    .line 921
    .local v0, "iCurrValue0":I
    const-string/jumbo v4, "SkySlide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPrevValue = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string/jumbo v4, "SkySlide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iCurrValue0 = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    if-ne v4, v0, :cond_ae

    .line 926
    return v7

    .line 929
    :cond_ae
    iput v0, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 931
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkySlide;->Position2Value(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlide;->setProgress(I)V

    .line 933
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v4, :cond_cf

    .line 935
    const v4, 0x7f06017c

    invoke-static {v4}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 936
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v5

    invoke-interface {v4, p0, v5, v7}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 939
    :cond_cf
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    if-eqz v4, :cond_e5

    .line 941
    const v4, 0x7f06017c

    invoke-static {v4}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 942
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v5

    invoke-interface {v4, p0, v5, v7}, Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 944
    :cond_e5
    return v7

    .line 947
    .end local v0    # "iCurrValue0":I
    :pswitch_e6
    const-string/jumbo v4, "SkySlide"

    const-string/jumbo v5, "========== ACTION_MOVE =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string/jumbo v4, "SkySlide"

    const-string/jumbo v5, "========== ACTION_MOVE isFocused =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_10e

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_10e

    .line 952
    const-string/jumbo v4, "SkySlide"

    const-string/jumbo v5, "========== ACTION_MOVE not is Enabled =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v6

    .line 956
    :cond_10e
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    iput v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 957
    const-string/jumbo v4, "SkySlide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "========== ACTION_MOVE mSlidePosX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " =========="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 961
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkySlide;->Position2Value(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlide;->setProgressWithNoDraw(I)V

    .line 963
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_152

    .line 965
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 968
    :cond_152
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v1

    .line 970
    .local v1, "iCurrValue1":I
    const-string/jumbo v4, "SkySlide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPrevValue = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string/jumbo v4, "SkySlide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iNowProgressValue = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget v4, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    if-ne v4, v1, :cond_19f

    .line 975
    return v7

    .line 978
    :cond_19f
    iput v1, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 980
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v4, :cond_1b0

    .line 982
    invoke-static {v9}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 983
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-interface {v4, p0, v1, v7}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 986
    :cond_1b0
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    if-eqz v4, :cond_1bf

    .line 988
    invoke-static {v9}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 989
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    invoke-interface {v4, p0, v1, v7}, Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 991
    :cond_1bf
    return v7

    .line 994
    .end local v1    # "iCurrValue1":I
    :pswitch_1c0
    const-string/jumbo v4, "SkySlide"

    const-string/jumbo v5, "========== ACTION_UP =========="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1d6

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1d6

    .line 998
    return v6

    .line 1001
    :cond_1d6
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    if-eqz v4, :cond_1e5

    .line 1003
    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1004
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    invoke-interface {v4, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1007
    :cond_1e5
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    if-eqz v4, :cond_1f4

    .line 1009
    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/widget/SkySlide;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1010
    iget-object v4, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    invoke-interface {v4, p0}, Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1013
    :cond_1f4
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v4

    iput v4, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 1016
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 1017
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 1019
    invoke-super {p0, v6}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1020
    return v7

    .line 1036
    :pswitch_207
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 1037
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 1039
    invoke-super {p0, v6}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1040
    return v7

    .line 886
    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c0
        :pswitch_e6
        :pswitch_207
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1401
    if-nez p1, :cond_15

    .line 1413
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 1414
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 1415
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide;->mIsDragging:Z

    .line 1417
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1400
    :cond_15
    return-void
.end method

.method public setDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsDivider:Z

    .line 607
    return-void
.end method

.method public setLevel(Z)V
    .registers 2
    .param p1, "level"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsLevel:Z

    .line 616
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->updateTouchArea()V

    .line 612
    return-void
.end method

.method public setLevelBounds(Z)V
    .registers 2
    .param p1, "isLevelBounds"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsLevelBounds:Z

    .line 710
    return-void
.end method

.method public setLvDNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 654
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM_D:I

    .line 652
    return-void
.end method

.method public setLvDTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 649
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT_D:I

    .line 647
    return-void
.end method

.method public setLvNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 642
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_NUM:I

    .line 640
    return-void
.end method

.method public setLvStrType(I)V
    .registers 2
    .param p1, "lvStrType"    # I

    .prologue
    .line 723
    iput p1, p0, Lcom/pantech/widget/SkySlide;->mLvStrType:I

    .line 721
    return-void
.end method

.method public setLvTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 637
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_LV_TEXT:I

    .line 635
    return-void
.end method

.method public setMaxWithPositiveNegative(II)V
    .registers 5
    .param p1, "ne"    # I
    .param p2, "po"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "max":I
    neg-int v1, p1

    add-int v0, v1, p2

    .line 300
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide;->setMax(I)V

    .line 301
    iput p1, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I

    .line 302
    iput p2, p0, Lcom/pantech/widget/SkySlide;->mPositivieValue:I

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkySlide;->setPositiveNegativeMode(Z)V

    .line 296
    return-void
.end method

.method public setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide$OnSkySlideKeyListener;

    .line 535
    return-void
.end method

.method public setOnSkySlideListener(Lcom/pantech/widget/SkySlide$OnSkySlideListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide$OnSkySlideListener;

    .line 530
    return-void
.end method

.method public setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide$OnSkySlideTouchListener;

    .line 540
    return-void
.end method

.method public setOnlyHandleTouch(Z)V
    .registers 2
    .param p1, "fIsUse"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsOnlyHandleTouch:Z

    .line 581
    return-void
.end method

.method public setPopupBox(Z)V
    .registers 2
    .param p1, "popup"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsPopupBox:Z

    .line 604
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->updateTouchArea()V

    .line 600
    return-void
.end method

.method public setPositiveNegativeMode(Z)V
    .registers 2
    .param p1, "isPositiveNegativeMode"    # Z

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsPositiveNegativeMode:Z

    .line 700
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 547
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 548
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 549
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 554
    .end local v0    # "tempProgress":I
    :goto_e
    iput p1, p0, Lcom/pantech/widget/SkySlide;->mPrevValue:I

    .line 555
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mDividerInterval:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_27

    .line 557
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlide;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide;->mSlidePosX:I

    .line 558
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2d

    :cond_27
    monitor-exit p0

    .line 545
    return-void

    .line 551
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

    .line 563
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 564
    iget v1, p0, Lcom/pantech/widget/SkySlide;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 565
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .end local v0    # "tempProgress":I
    :goto_e
    monitor-exit p0

    .line 561
    return-void

    .line 567
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
    .line 686
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsRevitalized:Z

    .line 688
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide;->setFocusableInTouchMode(Z)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide;->setEnabled(Z)V

    .line 690
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide;->setFocusable(Z)V

    .line 692
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide;->invalidate()V

    .line 684
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/pantech/widget/SkySlide;->mTitleText:Ljava/lang/CharSequence;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide;->mIsTitle:Z

    .line 597
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide;->updateTouchArea()V

    .line 591
    return-void
.end method

.method public setTitleColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 627
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE:I

    .line 625
    return-void
.end method

.method public setTitleDColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 632
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide;->C_TITLE_D:I

    .line 630
    return-void
.end method

.method public setUsingTouchFB(Z)V
    .registers 2
    .param p1, "isUse"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide;->mIsUsingTouchFB:Z

    .line 659
    return-void
.end method
