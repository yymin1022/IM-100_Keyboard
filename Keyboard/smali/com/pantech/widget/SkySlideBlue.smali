.class public Lcom/pantech/widget/SkySlideBlue;
.super Landroid/widget/SeekBar;
.source "SkySlideBlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;,
        Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;,
        Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;
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

.field private static final TAG:Ljava/lang/String; = "SkySlideBlue"

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

.field private mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

.field private mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

.field private mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

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
.method static synthetic -set0(Lcom/pantech/widget/SkySlideBlue;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTouchFBPlaying:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xff

    .line 69
    sget v0, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlideBlue;->X_INPROG:I

    .line 70
    sget v0, Lcom/pantech/widget/SkySlideBlue;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlideBlue;->Y_INPROG:I

    .line 84
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pantech/widget/SkySlideBlue;->C_POPUP_BOX:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkySlideBlue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 249
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v0, "SkySlideBlue"

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
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    .line 255
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->resetLayout()V

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

    .line 78
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    .line 79
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE_D:I

    .line 80
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    .line 81
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    .line 82
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    .line 83
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    .line 113
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHeight:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    .line 119
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    .line 121
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mLvStrType:I

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDivider:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsUsingTouchFB:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTouchFBPlaying:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsRevitalized:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    .line 155
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .line 156
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .line 157
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .line 262
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, int max)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v0, "SkySlideBlue"

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
    const-string/jumbo v0, "SkySlideBlue"

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
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    .line 269
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->resetLayout()V

    .line 271
    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlideBlue;->setMax(I)V

    .line 273
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->init()V

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

    .line 78
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    .line 79
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE_D:I

    .line 80
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    .line 81
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    .line 82
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    .line 83
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    .line 113
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 115
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    .line 116
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHeight:I

    .line 117
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    .line 118
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    .line 119
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    .line 121
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mLvStrType:I

    .line 129
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    .line 130
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDivider:Z

    .line 131
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    .line 132
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    .line 133
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 134
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsUsingTouchFB:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTouchFBPlaying:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsRevitalized:Z

    .line 137
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    .line 155
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .line 156
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .line 157
    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .line 283
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, int ne, int po)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string/jumbo v0, "SkySlideBlue"

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
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/pantech/widget/SkySlideBlue;->setMaxWithPositiveNegative(II)V

    .line 290
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->init()V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/widget/SkySlideBlue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v0, "SkySlideBlue"

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
    const-string/jumbo v0, "SkySlideBlue"

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
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    .line 242
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->resetLayout()V

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

    .line 78
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    .line 79
    const/16 v3, 0x7c

    const/16 v4, 0x7c

    const/16 v5, 0x7c

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE_D:I

    .line 80
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    .line 81
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    .line 82
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    .line 83
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    .line 113
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 115
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    .line 116
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mHeight:I

    .line 117
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    .line 118
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    .line 119
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    .line 120
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    .line 121
    iput v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLvStrType:I

    .line 129
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    .line 130
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDivider:Z

    .line 131
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    .line 132
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    .line 133
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 134
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsUsingTouchFB:Z

    .line 135
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTouchFBPlaying:Z

    .line 136
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlideBlue;->mIsRevitalized:Z

    .line 137
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsOnlyHandleTouch:Z

    .line 138
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPositiveNegativeMode:Z

    .line 139
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    .line 155
    iput-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .line 156
    iput-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .line 157
    iput-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .line 199
    const-string/jumbo v3, "SkySlideBlue"

    const-string/jumbo v4, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs, int defStyle)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string/jumbo v3, "SkySlideBlue"

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
    const-string/jumbo v3, "SkySlideBlue"

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
    const-string/jumbo v3, "SkySlideBlue"

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
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    .line 207
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->resetLayout()V

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
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlideBlue;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x1

    .line 220
    :cond_e7
    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlideBlue;->setLevel(Z)V

    .line 221
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlideBlue;->setPopupBox(Z)V

    .line 223
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlideBlue;->setDivider(Z)V

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defLev":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_100
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->init()V

    .line 195
    return-void
.end method

.method private Position2Value(I)I
    .registers 9
    .param p1, "iPosition"    # I

    .prologue
    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, "iValue":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v0

    .line 483
    .local v0, "iMax":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 484
    .local v1, "iQuotient":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    rem-float/2addr v4, v5

    float-to-int v2, v4

    .line 486
    .local v2, "iRemainder":I
    int-to-float v4, v2

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2b

    .line 488
    add-int/lit8 v3, v1, 0x1

    .line 495
    :goto_1b
    if-gez v3, :cond_1e

    .line 497
    const/4 v3, 0x0

    .line 500
    :cond_1e
    if-le v3, v0, :cond_21

    .line 502
    move v3, v0

    .line 504
    :cond_21
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPositiveNegativeMode()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 505
    iget v4, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I

    add-int/2addr v3, v4

    .line 507
    :cond_2a
    return v3

    .line 492
    :cond_2b
    move v3, v1

    goto :goto_1b
.end method

.method private Value2Position(I)I
    .registers 4
    .param p1, "iValue"    # I

    .prologue
    .line 476
    iget v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private createImage()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    .line 402
    const v0, 0x7f060162

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg:Landroid/graphics/drawable/Drawable;

    .line 404
    :cond_d
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mFg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    .line 405
    const v0, 0x7f060166

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mFg:Landroid/graphics/drawable/Drawable;

    .line 407
    :cond_1a
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_27

    .line 408
    const v0, 0x7f060177

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 410
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_34

    .line 411
    const v0, 0x7f060164

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 413
    :cond_34
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mFg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_41

    .line 414
    const v0, 0x7f060168

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 416
    :cond_41
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4e

    .line 417
    const v0, 0x7f06016b

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 419
    :cond_4e
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5b

    .line 420
    const v0, 0x7f06018b

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 422
    :cond_5b
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBox:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_68

    .line 423
    const v0, 0x7f06016f

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 399
    :cond_68
    return-void
.end method

.method private doTouchFBDrag()V
    .registers 2

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->shouldFeedback()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 517
    :cond_7
    return-void
.end method

.method private drawBarBg(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1333
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1334
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1329
    :goto_22
    return-void

    .line 1338
    :cond_23
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg_d:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1339
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mBg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22
.end method

.method private drawBarDivider(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1345
    iget-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDivider:Z

    if-nez v1, :cond_5

    return-void

    .line 1347
    :cond_5
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 1349
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosX()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1350
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v3

    .line 1351
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosX()I

    move-result v4

    sget v5, Lcom/pantech/widget/SkySlideBlue;->W_DIVIDER:I

    add-int/2addr v4, v5

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1352
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v5

    iget v6, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    add-int/2addr v5, v6

    .line 1349
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1353
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1343
    :cond_39
    return-void
.end method

.method private drawBarFg(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 1359
    sget v4, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    .line 1360
    .local v4, "sx":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosX()I

    move-result v5

    .line 1361
    .local v5, "x":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v7

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    add-int v6, v7, v8

    .line 1362
    .local v6, "y":I
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 1363
    .local v0, "dx_max":I
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 1365
    .local v1, "dy":I
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    if-gez v7, :cond_25

    iput v9, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1366
    :cond_25
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    if-le v7, v8, :cond_2f

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    iput v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1368
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1370
    sget v7, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    add-int/2addr v8, v5

    add-int v9, v6, v1

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1372
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1374
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mFg:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1375
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    :goto_54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1385
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    add-int/2addr v7, v5

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 1386
    .local v2, "handleX":I
    sget v7, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1391
    .local v3, "handleY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1393
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1395
    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1396
    sget v9, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1393
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1397
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1357
    :goto_85
    return-void

    .line 1379
    .end local v2    # "handleX":I
    .end local v3    # "handleY":I
    :cond_86
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mFg_d:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1380
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mFg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_54

    .line 1401
    .restart local v2    # "handleX":I
    .restart local v3    # "handleY":I
    :cond_98
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 1403
    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1404
    sget v9, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1401
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1405
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_85
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1237
    iget-boolean v7, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    if-nez v7, :cond_5

    return-void

    .line 1239
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1241
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1242
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1252
    :goto_19
    const-string/jumbo v7, "SkySlideBlue"

    const-string/jumbo v8, "drawLevel"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v7

    if-nez v7, :cond_77

    .line 1256
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->X_TITLE:I

    sub-int v5, v7, v8

    .line 1258
    .local v5, "numX":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "levelNum":Ljava/lang/String;
    int-to-float v7, v5

    sget v8, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1262
    const-string/jumbo v1, "Lv."

    .line 1263
    .local v1, "levelText":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1264
    .local v4, "numWidth":F
    int-to-float v7, v5

    sub-float/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_LV_MARGIN:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1266
    .local v6, "strX":F
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1235
    .end local v0    # "levelNum":Ljava/lang/String;
    .end local v1    # "levelText":Ljava/lang/String;
    .end local v4    # "numWidth":F
    .end local v5    # "numX":I
    .end local v6    # "strX":F
    :cond_67
    :goto_67
    return-void

    .line 1247
    :cond_68
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1248
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1268
    :cond_77
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_67

    .line 1270
    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->X_TITLE:I

    sub-int v3, v7, v8

    .line 1271
    .local v3, "lvX":I
    const-string/jumbo v1, "db"

    .line 1272
    .restart local v1    # "levelText":Ljava/lang/String;
    int-to-float v7, v3

    sget v8, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    sget v9, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1275
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1276
    .local v2, "lvTextWidth":F
    int-to-float v7, v3

    sub-float/2addr v7, v2

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_LV_MARGIN:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 1279
    .restart local v6    # "strX":F
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .restart local v0    # "levelNum":Ljava/lang/String;
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_67
.end method

.method private drawLevelBound(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1290
    iget-boolean v6, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    if-nez v6, :cond_5

    return-void

    .line 1292
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1294
    iget-object v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1295
    iget-object v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1303
    :goto_19
    const-string/jumbo v6, "SkySlideBlue"

    const-string/jumbo v7, "drawLevelBound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v6

    if-nez v6, :cond_38

    .line 1288
    :cond_28
    :goto_28
    return-void

    .line 1299
    :cond_29
    iget-object v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1300
    iget-object v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 1315
    :cond_38
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    .line 1317
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "levelNumLeft":Ljava/lang/String;
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPositivieValue:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1319
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

    .line 1320
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

    .line 1321
    .local v4, "levelTextRight":Ljava/lang/String;
    const-string/jumbo v2, "0db"

    .line 1322
    .local v2, "levelTextCenter":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1323
    .local v5, "lvTextCenterWidth":F
    sget v6, Lcom/pantech/widget/SkySlideBlue;->X_INPROG:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1324
    sget v6, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    sub-float/2addr v6, v7

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1325
    sget v6, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    add-int/2addr v6, v7

    sget v7, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_28
.end method

.method private drawPopup(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1411
    iget-boolean v8, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    if-eqz v8, :cond_8

    iget-boolean v7, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    :cond_8
    if-nez v7, :cond_b

    return-void

    .line 1413
    :cond_b
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosX()I

    move-result v7

    iget v8, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1414
    .local v3, "popupX":I
    sget v4, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX:I

    .line 1417
    .local v4, "popupY":I
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 1419
    sget v8, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    add-int/2addr v8, v3

    .line 1420
    sget v9, Lcom/pantech/widget/SkySlideBlue;->H_IMG_POPUP_BOX:I

    add-int/2addr v9, v4

    .line 1417
    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1421
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1423
    sget v7, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    div-int/lit8 v7, v7, 0x2

    add-int v5, v3, v7

    .line 1424
    .local v5, "textX":I
    const/4 v6, 0x0

    .line 1429
    .local v6, "textY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v7

    if-nez v7, :cond_a8

    .line 1430
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "level":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1432
    .local v0, "iTextLen":I
    if-lt v0, v10, :cond_98

    .line 1434
    sget v7, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v0, -0x3

    sget v10, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x2

    mul-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 1437
    .local v1, "iTextSize":I
    const-string/jumbo v7, "SkySlideBlue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize = ["

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

    .line 1439
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1440
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v1, 0x2

    add-int v6, v7, v8

    .line 1449
    .end local v1    # "iTextSize":I
    :goto_90
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1409
    .end local v0    # "iTextLen":I
    .end local v2    # "level":Ljava/lang/String;
    :cond_97
    :goto_97
    return-void

    .line 1444
    .restart local v0    # "iTextLen":I
    .restart local v2    # "level":Ljava/lang/String;
    :cond_98
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1445
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    add-int v6, v7, v8

    goto :goto_90

    .line 1450
    .end local v0    # "iTextLen":I
    .end local v2    # "level":Ljava/lang/String;
    :cond_a8
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getLvStrType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_97

    .line 1451
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1452
    .restart local v2    # "level":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1453
    .restart local v0    # "iTextLen":I
    if-lt v0, v10, :cond_112

    .line 1455
    sget v7, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v0, -0x3

    sget v10, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x2

    mul-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 1458
    .restart local v1    # "iTextSize":I
    const-string/jumbo v7, "SkySlideBlue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "iTextSize = ["

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

    .line 1460
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1461
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v1, 0x2

    add-int v6, v7, v8

    .line 1469
    .end local v1    # "iTextSize":I
    :goto_10a
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_97

    .line 1465
    :cond_112
    iget-object v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1466
    sget v7, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    add-int v6, v7, v8

    goto :goto_10a
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    if-nez v0, :cond_5

    return-void

    .line 1221
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1223
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    :goto_12
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "drawTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitleText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pantech/widget/SkySlideBlue;->X_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    sget v3, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1217
    return-void

    .line 1227
    :cond_30
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12
.end method

.method private getBarPosX()I
    .registers 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getBarPosY()I
    .registers 4

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 457
    sget v0, Lcom/pantech/widget/SkySlideBlue;->Y_OUTPROG:I

    return v0

    .line 459
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    if-eqz v0, :cond_1c

    .line 461
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlideBlue;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MAX:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MID:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 465
    :cond_1c
    sget v0, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MIN:I

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMinHeight()I
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 441
    sget v0, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MAX:I

    return v0

    .line 443
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    if-eqz v0, :cond_16

    .line 445
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MID:I

    return v0

    .line 449
    :cond_16
    sget v0, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MIN:I

    return v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    sget v0, Lcom/pantech/widget/SkySlideBlue;->X_POPUP_BOX:I

    sget v1, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/pantech/widget/SkySlideBlue;->X_POPUP_BOX:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/pantech/widget/SkySlideBlue;->setPadding(IIII)V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlideBlue;->setFocusable(Z)V

    .line 315
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->initPaint()V

    .line 317
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->createImage()V

    .line 309
    return-void
.end method

.method private initLayout()V
    .registers 5

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v0

    .line 1149
    .local v0, "iMax":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    .line 1150
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHeight:I

    .line 1152
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlideBlue;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MAX:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_11f

    .line 1157
    sget v1, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MAX:I

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    .line 1164
    :goto_65
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    .line 1166
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    .line 1168
    sget v1, Lcom/pantech/widget/SkySlideBlue;->H_IMG_OUTPROG:I

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    .line 1170
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSlideWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBarHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string/jumbo v1, "SkySlideBlue"

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

    .line 1175
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    .line 1177
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDividerInterval = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1181
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->updateTouchArea()V

    .line 1145
    return-void

    .line 1158
    :cond_11f
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MIN:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_130

    .line 1159
    sget v1, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MIN:I

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    goto/16 :goto_65

    .line 1161
    :cond_130
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideWidth:I

    goto/16 :goto_65
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 338
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_27

    .line 340
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    .line 341
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 343
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_54

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 350
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 353
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    :cond_54
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_81

    .line 359
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 360
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 363
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_LV_NUM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 367
    :cond_81
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_ae

    .line 369
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 370
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->C_POPUP_BOX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 374
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 377
    :cond_ae
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    if-nez v0, :cond_d4

    .line 379
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    .line 380
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 382
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintLeft:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    :cond_d4
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    if-nez v0, :cond_fa

    .line 390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    .line 391
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelBoundsStrPaintRight:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 336
    :cond_fa
    return-void
.end method

.method private resetLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43700000    # 240.0f

    .line 1500
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1501
    .local v0, "density":F
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1505
    .local v1, "densityDpi":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x432c0000    # 172.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MAX:I

    .line 1506
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x43270000    # 167.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MID:I

    .line 1507
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x42ac0000    # 86.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_SLIDE_MIN:I

    .line 1509
    const v2, 0x7f04008a

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->X_TITLE:I

    .line 1510
    const v2, 0x7f04008b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->Y_TITLE:I

    .line 1511
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_LV_MARGIN:I

    .line 1512
    const v2, 0x7f04008c

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    .line 1513
    const v2, 0x7f04008d

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->Y_OUTPROG:I

    .line 1514
    const v2, 0x7f04008e

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MAX:I

    .line 1515
    const v2, 0x7f04008f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_OUTPROG_MIN:I

    .line 1516
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    .line 1517
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    .line 1518
    sget v2, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlideBlue;->W_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlideBlue;->X_INPROG:I

    .line 1519
    sget v2, Lcom/pantech/widget/SkySlideBlue;->Y_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlideBlue;->H_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlideBlue;->Y_INPROG:I

    .line 1520
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->X_POPUP_BOX:I

    .line 1521
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX:I

    .line 1522
    const v2, 0x7f040096

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->Y_POPUP_BOX_TEXT:I

    .line 1523
    const v2, 0x7f040099

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->POPUP_BOX_TEXT_SIZE:I

    .line 1524
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_DIVIDER:I

    .line 1526
    const v2, 0x7f040090

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->S_TITLE:I

    .line 1527
    const v2, 0x7f040091

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->S_LV_TEXT:I

    .line 1528
    const v2, 0x7f040092

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->S_LV_NUM:I

    .line 1529
    sget v2, Lcom/pantech/widget/SkySlideBlue;->POPUP_BOX_TEXT_SIZE:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->S_POPUP_BOX:I

    .line 1531
    const v2, 0x7f040093

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_IMG_OUTPROG:I

    .line 1532
    const v2, 0x7f040094

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_IMG_HANDLE:I

    .line 1533
    const v2, 0x7f040095

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_IMG_HANDLE:I

    .line 1534
    const v2, 0x7f040097

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->W_IMG_POPUP_BOX:I

    .line 1535
    const v2, 0x7f040098

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlideBlue;->H_IMG_POPUP_BOX:I

    .line 1499
    return-void
.end method

.method private shouldFeedback()Z
    .registers 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTouchFBPlaying:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 514
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private startTimer(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    .line 531
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTouchFBTimer:Ljava/util/Timer;

    .line 532
    new-instance v1, Lcom/pantech/widget/SkySlideBlue$1;

    invoke-direct {v1, p0}, Lcom/pantech/widget/SkySlideBlue$1;-><init>(Lcom/pantech/widget/SkySlideBlue;)V

    .line 531
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 529
    return-void
.end method

.method private updateTouchArea()V
    .registers 7

    .prologue
    .line 431
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideRect:Landroid/graphics/Rect;

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideRect:Landroid/graphics/Rect;

    sget v1, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v2

    .line 434
    sget v3, Lcom/pantech/widget/SkySlideBlue;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlideBlue;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mBarHeight:I

    add-int/2addr v4, v5

    .line 433
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 429
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 771
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .line 772
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .line 773
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .line 775
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mTitleText:Ljava/lang/CharSequence;

    .line 776
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    .line 777
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 778
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 779
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 781
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    .line 783
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideRect:Landroid/graphics/Rect;

    .line 785
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBg:Landroid/graphics/drawable/Drawable;

    .line 786
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mFg:Landroid/graphics/drawable/Drawable;

    .line 787
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 788
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 789
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 790
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 791
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 792
    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 769
    return-void
.end method

.method public getLevelBounds()Z
    .registers 2

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    return v0
.end method

.method public getLevelNumPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelNumPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLevelStrPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLevelStrPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLvStrType()I
    .registers 2

    .prologue
    .line 744
    iget v0, p0, Lcom/pantech/widget/SkySlideBlue;->mLvStrType:I

    return v0
.end method

.method public getOnlyHandleTouch()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsOnlyHandleTouch:Z

    return v0
.end method

.method public getPopupBoxPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mPopupBoxPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPositiveNegativeMode()Z
    .registers 2

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPositiveNegativeMode:Z

    return v0
.end method

.method public declared-synchronized getProgress()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 588
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 589
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 590
    .local v0, "tempProgress":I
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    add-int/2addr v0, v1

    monitor-exit p0

    .line 591
    return v0

    .line 593
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
    .line 637
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue;->mTitlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUsingTouchFB()Z
    .registers 2

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsUsingTouchFB:Z

    return v0
.end method

.method public isRevitalized()Z
    .registers 2

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsRevitalized:Z

    return v0
.end method

.method public measureHeight(I)I
    .registers 4
    .param p1, "spec"    # I

    .prologue
    .line 763
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 764
    .local v0, "height":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->getMinHeight()I

    move-result v1

    .line 766
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
    .line 753
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 755
    .local v0, "width":I
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawTitle(Landroid/graphics/Canvas;)V

    .line 1199
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawLevel(Landroid/graphics/Canvas;)V

    .line 1202
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawLevelBound(Landroid/graphics/Canvas;)V

    .line 1205
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawBarBg(Landroid/graphics/Canvas;)V

    .line 1208
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawBarDivider(Landroid/graphics/Canvas;)V

    .line 1211
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawBarFg(Landroid/graphics/Canvas;)V

    .line 1214
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->drawPopup(Landroid/graphics/Canvas;)V

    .line 1193
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const v6, 0x7f060177

    const v5, 0x7f06016d

    const/4 v4, 0x0

    .line 800
    const-string/jumbo v1, "SkySlideBlue"

    const-string/jumbo v2, "<<CLASS INFO>> onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<CLASS INFO>> + gainFocus = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<CLASS INFO>> + direction = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<CLASS INFO>> + previouslyFocusedRect = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 807
    if-eqz p1, :cond_fa

    .line 809
    const-string/jumbo v1, "SkySlideBlue"

    const-string/jumbo v2, "++++++++++ FOCUS ON ++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 812
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    .line 813
    .local v0, "iCurrValue":I
    const-string/jumbo v1, "SkySlideBlue"

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

    .line 814
    if-nez v0, :cond_e3

    .line 815
    const v1, 0x7f060174

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 822
    :goto_b0
    const-string/jumbo v1, "SkySlideBlue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsDragging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsPopupBox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    if-eqz v1, :cond_e2

    .line 825
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    invoke-interface {v1, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;->onStartTrackingKey(Landroid/widget/SeekBar;)V

    .line 798
    :cond_e2
    :goto_e2
    return-void

    .line 816
    :cond_e3
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_f3

    .line 817
    const v1, 0x7f060172

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b0

    .line 820
    :cond_f3
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b0

    .line 830
    .end local v0    # "iCurrValue":I
    :cond_fa
    const-string/jumbo v1, "SkySlideBlue"

    const-string/jumbo v2, "++++++++++ FOCUS OFF ++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 832
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    .line 833
    .restart local v0    # "iCurrValue":I
    const-string/jumbo v1, "SkySlideBlue"

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

    .line 834
    if-nez v0, :cond_13e

    .line 835
    const v1, 0x7f060175

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 842
    :goto_132
    iput-boolean v4, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 843
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    if-eqz v1, :cond_e2

    .line 845
    iget-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    invoke-interface {v1, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;->onStopTrackingKey(Landroid/widget/SeekBar;)V

    goto :goto_e2

    .line 836
    :cond_13e
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_14e

    .line 837
    const v1, 0x7f060173

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_132

    .line 840
    :cond_14e
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_132
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v6, 0x7f060172

    const v5, 0x7f06016d

    const/4 v4, 0x1

    .line 852
    packed-switch p1, :pswitch_data_106

    .line 932
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 855
    :pswitch_f
    const-string/jumbo v2, "SkySlideBlue"

    const-string/jumbo v3, "@@@@@@@@@@ UP @@@@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 859
    :pswitch_19
    const-string/jumbo v2, "SkySlideBlue"

    const-string/jumbo v3, "@@@@@@@@@@ DOWN @@@@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 863
    :pswitch_23
    const-string/jumbo v2, "SkySlideBlue"

    const-string/jumbo v3, "@@@@@@@@@@ CENTER @@@@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 867
    :pswitch_2d
    const-string/jumbo v2, "SkySlideBlue"

    const-string/jumbo v3, "@@@@@@@@@@ RIGHT @@@@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 869
    .local v0, "iCurrValue":I
    if-nez v0, :cond_87

    .line 870
    const v2, 0x7f060174

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 878
    :goto_47
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v3

    if-ge v2, v3, :cond_86

    .line 880
    iput-boolean v4, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 881
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlideBlue;->setProgress(I)V

    .line 882
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlideBlue;->setPressed(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 885
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 887
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    if-eqz v2, :cond_79

    .line 889
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 892
    :cond_79
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v2, :cond_86

    .line 894
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 897
    :cond_86
    return v4

    .line 871
    :cond_87
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v2

    if-ne v0, v2, :cond_94

    .line 872
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 875
    :cond_94
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 900
    .end local v0    # "iCurrValue":I
    :pswitch_9b
    const-string/jumbo v2, "SkySlideBlue"

    const-string/jumbo v3, "@@@@@@@@@@ LEFT @@@@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 902
    .local v1, "iCurrValue1":I
    if-nez v1, :cond_f1

    .line 903
    const v2, 0x7f060174

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 911
    :goto_b5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    if-lez v2, :cond_f0

    .line 913
    iput-boolean v4, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 914
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlideBlue;->setProgress(I)V

    .line 915
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkySlideBlue;->setPressed(Z)V

    .line 917
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 918
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 920
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    if-eqz v2, :cond_e3

    .line 922
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 925
    :cond_e3
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v2, :cond_f0

    .line 927
    iget-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v4}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 930
    :cond_f0
    return v4

    .line 904
    :cond_f1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_fe

    .line 905
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b5

    .line 908
    :cond_fe
    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_b5

    .line 852
    nop

    :pswitch_data_106
    .packed-switch 0x13
        :pswitch_f
        :pswitch_19
        :pswitch_9b
        :pswitch_2d
        :pswitch_23
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
    .line 1130
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> onLayout(boolean changed, int left, int top, int right,int bottom)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1132
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1133
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1134
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1135
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1137
    if-eqz p1, :cond_b3

    .line 1139
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->initLayout()V

    .line 1142
    :cond_b3
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 1128
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1186
    const-string/jumbo v0, "SkySlideBlue"

    const-string/jumbo v1, "<<CLASS INFO>> onMeasure(int widthMeasureSpec, int heightMeasureSpec)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1188
    const-string/jumbo v0, "SkySlideBlue"

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

    .line 1190
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->measureWidth(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlideBlue;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkySlideBlue;->setMeasuredDimension(II)V

    .line 1184
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    .line 324
    .local v0, "iCurrValue":I
    if-nez v0, :cond_13

    .line 325
    const v1, 0x7f060175

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 332
    :goto_f
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onRtlPropertiesChanged(I)V

    .line 321
    return-void

    .line 326
    :cond_13
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 327
    const v1, 0x7f060173

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    .line 330
    :cond_23
    const v1, 0x7f060177

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v11, 0x7f060173

    const v10, 0x7f060177

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 938
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 940
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_290

    .line 1125
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 943
    :pswitch_1e
    const-string/jumbo v5, "SkySlideBlue"

    const-string/jumbo v6, "========== ACTION_DOWN =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_34

    .line 947
    return v9

    .line 951
    :cond_34
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 953
    return v9

    .line 957
    :cond_3d
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 958
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 959
    iput-boolean v8, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 961
    invoke-super {p0, v8}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 963
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v5, :cond_56

    .line 965
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 968
    :cond_56
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    if-eqz v5, :cond_5f

    .line 970
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 973
    :cond_5f
    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->Position2Value(I)I

    move-result v1

    .line 975
    .local v1, "iCurrValue0":I
    const-string/jumbo v5, "SkySlideBlue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPrevValue = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string/jumbo v5, "SkySlideBlue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iCurrValue0 = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    if-ne v5, v1, :cond_ae

    .line 980
    return v8

    .line 983
    :cond_ae
    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 985
    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->Position2Value(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->setProgress(I)V

    .line 987
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v5, :cond_cf

    .line 989
    const v5, 0x7f06017d

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 990
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 993
    :cond_cf
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    if-eqz v5, :cond_e5

    .line 995
    const v5, 0x7f06017d

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 996
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 998
    :cond_e5
    return v8

    .line 1001
    .end local v1    # "iCurrValue0":I
    :pswitch_e6
    const-string/jumbo v5, "SkySlideBlue"

    const-string/jumbo v6, "========== ACTION_MOVE =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string/jumbo v5, "SkySlideBlue"

    const-string/jumbo v6, "========== ACTION_MOVE isFocused =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_10e

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_10e

    .line 1006
    const-string/jumbo v5, "SkySlideBlue"

    const-string/jumbo v6, "========== ACTION_MOVE not is Enabled =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return v9

    .line 1010
    :cond_10e
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1011
    const-string/jumbo v5, "SkySlideBlue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "========== ACTION_MOVE mSlidePosX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " =========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 1015
    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->Position2Value(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->setProgressWithNoDraw(I)V

    .line 1017
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_152

    .line 1019
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1022
    :cond_152
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v2

    .line 1024
    .local v2, "iCurrValue1":I
    const-string/jumbo v5, "SkySlideBlue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPrevValue = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string/jumbo v5, "SkySlideBlue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iNowProgressValue = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget v5, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    if-ne v5, v2, :cond_19f

    .line 1029
    return v8

    .line 1032
    :cond_19f
    iput v2, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 1034
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v5, :cond_1b3

    .line 1036
    const v5, 0x7f06017a

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1037
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-interface {v5, p0, v2, v8}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1040
    :cond_1b3
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    if-eqz v5, :cond_1c5

    .line 1042
    const v5, 0x7f06017a

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1043
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    invoke-interface {v5, p0, v2, v8}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 1045
    :cond_1c5
    return v8

    .line 1048
    .end local v2    # "iCurrValue1":I
    :pswitch_1c6
    const-string/jumbo v5, "SkySlideBlue"

    const-string/jumbo v6, "========== ACTION_UP =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1dc

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_1dc

    .line 1052
    return v9

    .line 1055
    :cond_1dc
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    if-eqz v5, :cond_214

    .line 1057
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1060
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    .line 1061
    .local v0, "iCurrValue":I
    const-string/jumbo v5, "SkySlideBlue"

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

    .line 1062
    if-nez v0, :cond_25f

    .line 1063
    const v5, 0x7f060175

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1071
    :goto_20f
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1074
    .end local v0    # "iCurrValue":I
    :cond_214
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    if-eqz v5, :cond_24c

    .line 1076
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1079
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    .line 1080
    .restart local v0    # "iCurrValue":I
    const-string/jumbo v5, "SkySlideBlue"

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

    .line 1081
    if-nez v0, :cond_273

    .line 1082
    const v5, 0x7f060175

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1089
    :goto_247
    iget-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1092
    .end local v0    # "iCurrValue":I
    :cond_24c
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v5

    iput v5, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1095
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 1096
    iput-boolean v9, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 1098
    invoke-super {p0, v9}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1099
    return v8

    .line 1064
    .restart local v0    # "iCurrValue":I
    :cond_25f
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v5

    if-ne v0, v5, :cond_26c

    .line 1065
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_20f

    .line 1068
    :cond_26c
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_20f

    .line 1083
    :cond_273
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getMax()I

    move-result v5

    if-ne v0, v5, :cond_280

    .line 1084
    invoke-static {v11}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_247

    .line 1087
    :cond_280
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlideBlue;->mHandle:Landroid/graphics/drawable/Drawable;

    goto :goto_247

    .line 1115
    .end local v0    # "iCurrValue":I
    :pswitch_287
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 1116
    iput-boolean v9, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 1118
    invoke-super {p0, v9}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1119
    return v8

    .line 940
    :pswitch_data_290
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c6
        :pswitch_e6
        :pswitch_287
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1479
    if-nez p1, :cond_15

    .line 1491
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 1492
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 1493
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDragging:Z

    .line 1495
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1478
    :cond_15
    return-void
.end method

.method public setDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsDivider:Z

    .line 623
    return-void
.end method

.method public setLevel(Z)V
    .registers 2
    .param p1, "level"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevel:Z

    .line 632
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->updateTouchArea()V

    .line 628
    return-void
.end method

.method public setLevelBounds(Z)V
    .registers 2
    .param p1, "isLevelBounds"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsLevelBounds:Z

    .line 726
    return-void
.end method

.method public setLvDNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 670
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM_D:I

    .line 668
    return-void
.end method

.method public setLvDTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 665
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT_D:I

    .line 663
    return-void
.end method

.method public setLvNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 658
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_NUM:I

    .line 656
    return-void
.end method

.method public setLvStrType(I)V
    .registers 2
    .param p1, "lvStrType"    # I

    .prologue
    .line 739
    iput p1, p0, Lcom/pantech/widget/SkySlideBlue;->mLvStrType:I

    .line 737
    return-void
.end method

.method public setLvTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 653
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_LV_TEXT:I

    .line 651
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
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlideBlue;->setMax(I)V

    .line 301
    iput p1, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I

    .line 302
    iput p2, p0, Lcom/pantech/widget/SkySlideBlue;->mPositivieValue:I

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkySlideBlue;->setPositiveNegativeMode(Z)V

    .line 296
    return-void
.end method

.method public setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideKeyListener;

    .line 551
    return-void
.end method

.method public setOnSkySlideListener(Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSkySlideListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideListener;

    .line 546
    return-void
.end method

.method public setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;)V
    .registers 2
    .param p1, "sl"    # Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlideBlue$OnSkySlideTouchListener;

    .line 556
    return-void
.end method

.method public setOnlyHandleTouch(Z)V
    .registers 2
    .param p1, "fIsUse"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsOnlyHandleTouch:Z

    .line 597
    return-void
.end method

.method public setPopupBox(Z)V
    .registers 2
    .param p1, "popup"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPopupBox:Z

    .line 620
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->updateTouchArea()V

    .line 616
    return-void
.end method

.method public setPositiveNegativeMode(Z)V
    .registers 2
    .param p1, "isPositiveNegativeMode"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsPositiveNegativeMode:Z

    .line 716
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 563
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 564
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 565
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 570
    .end local v0    # "tempProgress":I
    :goto_e
    iput p1, p0, Lcom/pantech/widget/SkySlideBlue;->mPrevValue:I

    .line 571
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mDividerInterval:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_27

    .line 573
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlideBlue;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlideBlue;->mSlidePosX:I

    .line 574
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2d

    :cond_27
    monitor-exit p0

    .line 561
    return-void

    .line 567
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

    .line 579
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->getPositiveNegativeMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 580
    iget v1, p0, Lcom/pantech/widget/SkySlideBlue;->mNegativeValue:I

    sub-int v0, p1, v1

    .line 581
    .local v0, "tempProgress":I
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .end local v0    # "tempProgress":I
    :goto_e
    monitor-exit p0

    .line 577
    return-void

    .line 583
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
    .line 702
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsRevitalized:Z

    .line 704
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->setFocusableInTouchMode(Z)V

    .line 705
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->setEnabled(Z)V

    .line 706
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlideBlue;->setFocusable(Z)V

    .line 708
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlideBlue;->invalidate()V

    .line 700
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue;->mTitleText:Ljava/lang/CharSequence;

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlideBlue;->mIsTitle:Z

    .line 613
    invoke-direct {p0}, Lcom/pantech/widget/SkySlideBlue;->updateTouchArea()V

    .line 607
    return-void
.end method

.method public setTitleColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 643
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE:I

    .line 641
    return-void
.end method

.method public setTitleDColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 648
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlideBlue;->C_TITLE_D:I

    .line 646
    return-void
.end method

.method public setUsingTouchFB(Z)V
    .registers 2
    .param p1, "isUse"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlideBlue;->mIsUsingTouchFB:Z

    .line 675
    return-void
.end method
