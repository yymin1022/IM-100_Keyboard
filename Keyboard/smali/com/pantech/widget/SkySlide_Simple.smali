.class public Lcom/pantech/widget/SkySlide_Simple;
.super Landroid/widget/SeekBar;
.source "SkySlide_Simple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;,
        Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;,
        Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;
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

.field private static S_LV_NUM:I = 0x0

.field private static S_LV_TEXT:I = 0x0

.field private static S_POPUP_BOX:I = 0x0

.field private static S_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SkySlide_Simple"

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

.field private mIsOnlyHandleTouch:Z

.field private mIsPopupBox:Z

.field private mIsRevitalized:Z

.field private mIsTitle:Z

.field private mIsTouchFBPlaying:Z

.field private mIsUsingTouchFB:Z

.field private mLevelNumPaint:Landroid/graphics/Paint;

.field private mLevelStrPaint:Landroid/graphics/Paint;

.field private mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

.field private mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

.field private mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

.field private mPopupBox:Landroid/graphics/drawable/Drawable;

.field private mPopupBoxPaint:Landroid/graphics/Paint;

.field private mPrevValue:I

.field private mSlidePosX:I

.field private mSlideRect:Landroid/graphics/Rect;

.field private mSlideWidth:I

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTouchFBTimer:Ljava/util/Timer;

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/pantech/widget/SkySlide_Simple;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTouchFBPlaying:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xff

    .line 69
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlide_Simple;->X_INPROG:I

    .line 70
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/widget/SkySlide_Simple;->Y_INPROG:I

    .line 83
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pantech/widget/SkySlide_Simple;->C_POPUP_BOX:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkySlide_Simple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 239
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    .line 242
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->resetLayout()V

    .line 232
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

    .line 247
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE:I

    .line 78
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE_D:I

    .line 79
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT:I

    .line 80
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT_D:I

    .line 81
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM:I

    .line 82
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM_D:I

    .line 105
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    .line 107
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    .line 108
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mHeight:I

    .line 109
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    .line 110
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    .line 111
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    .line 112
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    .line 118
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    .line 119
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDivider:Z

    .line 120
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    .line 121
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    .line 122
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 123
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTouchFBPlaying:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsRevitalized:Z

    .line 126
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsOnlyHandleTouch:Z

    .line 142
    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    .line 143
    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    .line 144
    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    .line 249
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, int max)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 251
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 253
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    .line 256
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->resetLayout()V

    .line 258
    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlide_Simple;->setMax(I)V

    .line 260
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->init()V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/widget/SkySlide_Simple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 224
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 226
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->resetLayout()V

    .line 218
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

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE:I

    .line 78
    const/16 v3, 0x7c

    const/16 v4, 0x7c

    const/16 v5, 0x7c

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE_D:I

    .line 79
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT:I

    .line 80
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT_D:I

    .line 81
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM:I

    .line 82
    invoke-static {v9, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM_D:I

    .line 105
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    .line 107
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    .line 108
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mHeight:I

    .line 109
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    .line 110
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    .line 111
    iput v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    .line 112
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    .line 118
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    .line 119
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDivider:Z

    .line 120
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    .line 121
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    .line 122
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 123
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    .line 124
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTouchFBPlaying:Z

    .line 125
    iput-boolean v10, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsRevitalized:Z

    .line 126
    iput-boolean v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsOnlyHandleTouch:Z

    .line 142
    iput-object v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    .line 143
    iput-object v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    .line 144
    iput-object v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    .line 186
    const-string/jumbo v3, "SkySlide_Simple"

    const-string/jumbo v4, "<<CLASS INFO>> SkySlide(Context context, AttributeSet attrs, int defStyle)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v3, "SkySlide_Simple"

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

    .line 188
    const-string/jumbo v3, "SkySlide_Simple"

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

    .line 189
    const-string/jumbo v3, "SkySlide_Simple"

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

    .line 191
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->resetLayout()V

    .line 196
    if-eqz p2, :cond_fa

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "defLev":Z
    sget-object v3, Lcom/pantech/res/R$styleable;->SkyDialogStyle:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 202
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_e1

    .line 204
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide_Simple;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v1, 0x1

    .line 207
    :cond_e1
    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide_Simple;->setLevel(Z)V

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide_Simple;->setPopupBox(Z)V

    .line 210
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkySlide_Simple;->setDivider(Z)V

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "defLev":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_fa
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->init()V

    .line 182
    return-void
.end method

.method private Position2Value(I)I
    .registers 9
    .param p1, "iPosition"    # I

    .prologue
    .line 398
    const/4 v3, 0x0

    .line 399
    .local v3, "iValue":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getMax()I

    move-result v0

    .line 400
    .local v0, "iMax":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 401
    .local v1, "iQuotient":I
    int-to-float v4, p1

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    rem-float/2addr v4, v5

    float-to-int v2, v4

    .line 403
    .local v2, "iRemainder":I
    int-to-float v4, v2

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_22

    .line 405
    add-int/lit8 v3, v1, 0x1

    .line 412
    :goto_1b
    if-gez v3, :cond_1e

    .line 414
    const/4 v3, 0x0

    .line 417
    :cond_1e
    if-le v3, v0, :cond_21

    .line 419
    move v3, v0

    .line 422
    :cond_21
    return v3

    .line 409
    :cond_22
    move v3, v1

    goto :goto_1b
.end method

.method private Value2Position(I)I
    .registers 4
    .param p1, "iValue"    # I

    .prologue
    .line 393
    iget v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private createImage()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    .line 319
    const v0, 0x7f0600c6

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg:Landroid/graphics/drawable/Drawable;

    .line 321
    :cond_d
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    .line 322
    const v0, 0x7f0600d2

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg:Landroid/graphics/drawable/Drawable;

    .line 324
    :cond_1a
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_27

    .line 325
    const v0, 0x7f060178

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 327
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_34

    .line 328
    const v0, 0x7f060163

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_34
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_41

    .line 331
    const v0, 0x7f060167

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 333
    :cond_41
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle_d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4e

    .line 334
    const v0, 0x7f060169

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_4e
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5b

    .line 337
    const v0, 0x7f06018b

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 339
    :cond_5b
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBox:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_68

    .line 340
    const v0, 0x7f06016e

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 316
    :cond_68
    return-void
.end method

.method private doTouchFBDrag()V
    .registers 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->shouldFeedback()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 432
    :cond_7
    return-void
.end method

.method private drawBarBg(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1074
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1075
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1070
    :goto_22
    return-void

    .line 1079
    :cond_23
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg_d:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v2

    sget v3, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1080
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22
.end method

.method private drawBarDivider(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1086
    iget-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDivider:Z

    if-nez v1, :cond_5

    return-void

    .line 1088
    :cond_5
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 1090
    iget-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosX()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1091
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v3

    .line 1092
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosX()I

    move-result v4

    sget v5, Lcom/pantech/widget/SkySlide_Simple;->W_DIVIDER:I

    add-int/2addr v4, v5

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1093
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v5

    iget v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    add-int/2addr v5, v6

    .line 1090
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1094
    iget-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1084
    :cond_39
    return-void
.end method

.method private drawBarFg(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 1100
    sget v4, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    .line 1101
    .local v4, "sx":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosX()I

    move-result v5

    .line 1102
    .local v5, "x":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v7

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    add-int v6, v7, v8

    .line 1103
    .local v6, "y":I
    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 1104
    .local v0, "dx_max":I
    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 1106
    .local v1, "dy":I
    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    if-gez v7, :cond_25

    iput v9, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 1107
    :cond_25
    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    iget v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    if-le v7, v8, :cond_2f

    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    iput v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 1109
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1111
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    add-int/2addr v8, v5

    add-int v9, v6, v1

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1113
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1115
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1116
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1124
    :goto_54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1126
    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    add-int/2addr v7, v5

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 1127
    .local v2, "handleX":I
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_HANDLE:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1132
    .local v3, "handleY":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1134
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 1136
    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1137
    sget v9, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1134
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1138
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1098
    :goto_85
    return-void

    .line 1120
    .end local v2    # "handleX":I
    .end local v3    # "handleY":I
    :cond_86
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg_d:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    add-int/2addr v8, v4

    add-int v9, v5, v0

    add-int v10, v6, v1

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1121
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_54

    .line 1142
    .restart local v2    # "handleX":I
    .restart local v3    # "handleY":I
    :cond_98
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 1144
    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    add-int/2addr v8, v2

    .line 1145
    sget v9, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_HANDLE:I

    add-int/2addr v9, v3

    .line 1142
    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1146
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle_d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_85
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1042
    iget-boolean v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    if-nez v5, :cond_5

    return-void

    .line 1044
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1046
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1047
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1055
    :goto_19
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "drawLevel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->X_TITLE:I

    sub-int v3, v5, v6

    .line 1059
    .local v3, "numX":I
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "levelNum":Ljava/lang/String;
    int-to-float v5, v3

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->Y_TITLE:I

    sget v7, Lcom/pantech/widget/SkySlide_Simple;->S_TITLE:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1063
    const-string/jumbo v1, "Lv."

    .line 1064
    .local v1, "levelText":Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1065
    .local v2, "numWidth":F
    int-to-float v5, v3

    sub-float/2addr v5, v2

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->W_LV_MARGIN:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 1067
    .local v4, "strX":F
    sget v5, Lcom/pantech/widget/SkySlide_Simple;->Y_TITLE:I

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->S_TITLE:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1040
    return-void

    .line 1051
    .end local v0    # "levelNum":Ljava/lang/String;
    .end local v1    # "levelText":Ljava/lang/String;
    .end local v2    # "numWidth":F
    .end local v3    # "numX":I
    .end local v4    # "strX":F
    :cond_62
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT_D:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1052
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM_D:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19
.end method

.method private drawPopup(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1152
    iget-boolean v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    :goto_6
    if-nez v7, :cond_b

    return-void

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 1154
    :cond_b
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosX()I

    move-result v7

    iget v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    add-int/2addr v7, v8

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1155
    .local v3, "popupX":I
    sget v4, Lcom/pantech/widget/SkySlide_Simple;->Y_POPUP_BOX:I

    .line 1158
    .local v4, "popupY":I
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 1160
    sget v8, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    add-int/2addr v8, v3

    .line 1161
    sget v9, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_POPUP_BOX:I

    add-int/2addr v9, v4

    .line 1158
    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1162
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1164
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    div-int/lit8 v7, v7, 0x2

    add-int v5, v3, v7

    .line 1165
    .local v5, "textX":I
    const/4 v6, 0x0

    .line 1166
    .local v6, "textY":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1167
    .local v2, "level":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1169
    .local v0, "iTextLen":I
    const/4 v7, 0x3

    if-lt v0, v7, :cond_8d

    .line 1171
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    add-int/lit8 v8, v0, -0x3

    mul-int/lit8 v8, v8, 0x3

    rsub-int/lit8 v8, v8, 0x12

    add-int/lit8 v9, v0, -0x2

    mul-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 1173
    .local v1, "iTextSize":I
    const-string/jumbo v7, "SkySlide_Simple"

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

    .line 1175
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    int-to-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1176
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v1, 0x2

    add-int v6, v7, v8

    .line 1184
    .end local v1    # "iTextSize":I
    :goto_85
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1150
    return-void

    .line 1180
    :cond_8d
    iget-object v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1181
    sget v7, Lcom/pantech/widget/SkySlide_Simple;->Y_POPUP_BOX_TEXT:I

    add-int/2addr v7, v4

    sget v8, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    add-int v6, v7, v8

    goto :goto_85
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    if-nez v0, :cond_5

    return-void

    .line 1026
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1028
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1035
    :goto_12
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "drawTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitleText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->X_TITLE:I

    int-to-float v1, v1

    sget v2, Lcom/pantech/widget/SkySlide_Simple;->Y_TITLE:I

    sget v3, Lcom/pantech/widget/SkySlide_Simple;->S_TITLE:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1022
    return-void

    .line 1032
    :cond_30
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12
.end method

.method private getBarPosX()I
    .registers 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getBarPosY()I
    .registers 4

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 374
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->Y_OUTPROG:I

    return v0

    .line 376
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    if-eqz v0, :cond_1c

    .line 378
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->Y_OUTPROG:I

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MAX:I

    sget v2, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MID:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 382
    :cond_1c
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MIN:I

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMinHeight()I
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    if-eqz v0, :cond_7

    .line 358
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MAX:I

    return v0

    .line 360
    :cond_7
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    if-eqz v0, :cond_16

    .line 362
    :cond_13
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MID:I

    return v0

    .line 366
    :cond_16
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MIN:I

    return v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 265
    sget v0, Lcom/pantech/widget/SkySlide_Simple;->X_POPUP_BOX:I

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->X_POPUP_BOX:I

    sget v2, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/pantech/widget/SkySlide_Simple;->setPadding(IIII)V

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->setFocusable(Z)V

    .line 269
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->initPaint()V

    .line 271
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->createImage()V

    .line 263
    return-void
.end method

.method private initLayout()V
    .registers 5

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getMax()I

    move-result v0

    .line 957
    .local v0, "iMax":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    .line 958
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mHeight:I

    .line 960
    const-string/jumbo v1, "SkySlide_Simple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string/jumbo v1, "SkySlide_Simple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    sget v2, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    .line 974
    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mWidth:I

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    .line 976
    sget v1, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_OUTPROG:I

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    .line 978
    const-string/jumbo v1, "SkySlide_Simple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSlideWidth = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string/jumbo v1, "SkySlide_Simple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBarHeight = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string/jumbo v1, "SkySlide_Simple"

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

    .line 983
    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideWidth:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    .line 985
    const-string/jumbo v1, "SkySlide_Simple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDividerInterval = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 989
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->updateTouchArea()V

    .line 953
    return-void
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_27

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    .line 279
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->S_TITLE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 285
    :cond_27
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_54

    .line 287
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 288
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->S_LV_TEXT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 295
    :cond_54
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_81

    .line 297
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 298
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM_D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->S_LV_NUM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    :cond_81
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_ae

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 309
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->C_POPUP_BOX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    :cond_ae
    return-void
.end method

.method private resetLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43700000    # 240.0f

    .line 1210
    iget-object v2, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1211
    .local v0, "density":F
    iget-object v2, p0, Lcom/pantech/widget/SkySlide_Simple;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1215
    .local v1, "densityDpi":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x432c0000    # 172.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MAX:I

    .line 1216
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x43270000    # 167.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MID:I

    .line 1217
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x42ac0000    # 86.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_SLIDE_MIN:I

    .line 1219
    const v2, 0x7f04008a

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->X_TITLE:I

    .line 1220
    const v2, 0x7f04008b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->Y_TITLE:I

    .line 1221
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_LV_MARGIN:I

    .line 1222
    const v2, 0x7f04008c

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    .line 1223
    const v2, 0x7f04008d

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->Y_OUTPROG:I

    .line 1224
    const v2, 0x7f04008e

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_OUTPROG_MAX:I

    .line 1225
    const v2, 0x7f04008f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_OUTPROG_MIN:I

    .line 1226
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    .line 1227
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    .line 1228
    sget v2, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlide_Simple;->W_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->X_INPROG:I

    .line 1229
    sget v2, Lcom/pantech/widget/SkySlide_Simple;->Y_OUTPROG:I

    sget v3, Lcom/pantech/widget/SkySlide_Simple;->H_PROG_MARGIN:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->Y_INPROG:I

    .line 1230
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->X_POPUP_BOX:I

    .line 1231
    int-to-float v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->Y_POPUP_BOX:I

    .line 1232
    const v2, 0x7f04009f

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->Y_POPUP_BOX_TEXT:I

    .line 1233
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_DIVIDER:I

    .line 1235
    const v2, 0x7f040090

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->S_TITLE:I

    .line 1236
    const v2, 0x7f04009a

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->S_LV_TEXT:I

    .line 1237
    const v2, 0x7f04009b

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->S_LV_NUM:I

    .line 1238
    int-to-float v2, v1

    div-float/2addr v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->S_POPUP_BOX:I

    .line 1240
    const v2, 0x7f04009c

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_OUTPROG:I

    .line 1241
    const v2, 0x7f04009d

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    .line 1242
    const v2, 0x7f04009e

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_HANDLE:I

    .line 1243
    const v2, 0x7f0400a0

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_POPUP_BOX:I

    .line 1244
    const v2, 0x7f0400a1

    invoke-static {v2}, Lcom/pantech/widget/RR;->getDimension(I)I

    move-result v2

    sput v2, Lcom/pantech/widget/SkySlide_Simple;->H_IMG_POPUP_BOX:I

    .line 1209
    return-void
.end method

.method private shouldFeedback()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTouchFBPlaying:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 429
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private startTimer(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    .line 446
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTouchFBTimer:Ljava/util/Timer;

    .line 447
    new-instance v1, Lcom/pantech/widget/SkySlide_Simple$1;

    invoke-direct {v1, p0}, Lcom/pantech/widget/SkySlide_Simple$1;-><init>(Lcom/pantech/widget/SkySlide_Simple;)V

    .line 446
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 444
    return-void
.end method

.method private updateTouchArea()V
    .registers 7

    .prologue
    .line 348
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideRect:Landroid/graphics/Rect;

    .line 350
    :cond_b
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideRect:Landroid/graphics/Rect;

    sget v1, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v2

    .line 351
    sget v3, Lcom/pantech/widget/SkySlide_Simple;->X_OUTPROG:I

    iget v4, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarWidth:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getBarPosY()I

    move-result v4

    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mBarHeight:I

    add-int/2addr v4, v5

    .line 350
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 635
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    .line 636
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    .line 637
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    .line 639
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitleText:Ljava/lang/CharSequence;

    .line 640
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    .line 641
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    .line 642
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    .line 643
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    .line 647
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideRect:Landroid/graphics/Rect;

    .line 649
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg:Landroid/graphics/drawable/Drawable;

    .line 650
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg:Landroid/graphics/drawable/Drawable;

    .line 651
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 652
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mBg_d:Landroid/graphics/drawable/Drawable;

    .line 653
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mFg_d:Landroid/graphics/drawable/Drawable;

    .line 654
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle_d:Landroid/graphics/drawable/Drawable;

    .line 655
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 656
    iput-object v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBox:Landroid/graphics/drawable/Drawable;

    .line 633
    return-void
.end method

.method public getLevelNumPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelNumPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLevelStrPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mLevelStrPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOnlyHandleTouch()Z
    .registers 2

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsOnlyHandleTouch:Z

    return v0
.end method

.method public getPopupBoxPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPopupBoxPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 491
    :try_start_1
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTitlePaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUsingTouchFB()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    return v0
.end method

.method public isRevitalized()Z
    .registers 2

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsRevitalized:Z

    return v0
.end method

.method public measureHeight(I)I
    .registers 4
    .param p1, "spec"    # I

    .prologue
    .line 627
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 628
    .local v0, "height":I
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->getMinHeight()I

    move-result v1

    .line 630
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
    .line 617
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 619
    .local v0, "width":I
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawTitle(Landroid/graphics/Canvas;)V

    .line 1007
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawLevel(Landroid/graphics/Canvas;)V

    .line 1010
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawBarBg(Landroid/graphics/Canvas;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawBarDivider(Landroid/graphics/Canvas;)V

    .line 1016
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawBarFg(Landroid/graphics/Canvas;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->drawPopup(Landroid/graphics/Canvas;)V

    .line 1001
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 664
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 666
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 667
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 669
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 671
    if-eqz p1, :cond_84

    .line 673
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "++++++++++ FOCUS ON ++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    if-eqz v0, :cond_83

    .line 677
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    invoke-interface {v0, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;->onStartTrackingKey(Landroid/widget/SeekBar;)V

    .line 662
    :cond_83
    :goto_83
    return-void

    .line 682
    :cond_84
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "++++++++++ FOCUS OFF ++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    if-eqz v0, :cond_83

    .line 686
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    invoke-interface {v0, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;->onStopTrackingKey(Landroid/widget/SeekBar;)V

    goto :goto_83
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 693
    packed-switch p1, :pswitch_data_b2

    .line 753
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 696
    :pswitch_9
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "@@@@@@@@@@ UP @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 700
    :pswitch_13
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "@@@@@@@@@@ DOWN @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 704
    :pswitch_1d
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "@@@@@@@@@@ CENTER @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 708
    :pswitch_27
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "@@@@@@@@@@ RIGHT @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 712
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->setProgress(I)V

    .line 713
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide_Simple;->setPressed(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 716
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 718
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    if-eqz v0, :cond_60

    .line 720
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 723
    :cond_60
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v0, :cond_6d

    .line 725
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 728
    :cond_6d
    return v2

    .line 731
    :pswitch_6e
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "@@@@@@@@@@ LEFT @@@@@@@@@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    if-lez v0, :cond_b0

    .line 735
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->setProgress(I)V

    .line 736
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkySlide_Simple;->setPressed(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 739
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 741
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    if-eqz v0, :cond_a3

    .line 743
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;->onProgressChangedKey(Landroid/widget/SeekBar;IZ)V

    .line 746
    :cond_a3
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v0, :cond_b0

    .line 748
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 751
    :cond_b0
    return v2

    .line 693
    nop

    :pswitch_data_b2
    .packed-switch 0x13
        :pswitch_9
        :pswitch_13
        :pswitch_6e
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
    .line 938
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> onLayout(boolean changed, int left, int top, int right,int bottom)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 940
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 941
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 942
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 943
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 945
    if-eqz p1, :cond_b3

    .line 947
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->initLayout()V

    .line 950
    :cond_b3
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 936
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 994
    const-string/jumbo v0, "SkySlide_Simple"

    const-string/jumbo v1, "<<CLASS INFO>> onMeasure(int widthMeasureSpec, int heightMeasureSpec)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 996
    const-string/jumbo v0, "SkySlide_Simple"

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

    .line 998
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->measureWidth(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/pantech/widget/SkySlide_Simple;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkySlide_Simple;->setMeasuredDimension(II)V

    .line 992
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v10, 0x7f06017b

    const v9, 0x7f060178

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 759
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 761
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_26a

    .line 933
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 764
    :pswitch_1e
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_DOWN =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_34

    .line 768
    return v7

    .line 771
    :cond_34
    iget-boolean v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsOnlyHandleTouch:Z

    if-eqz v5, :cond_5d

    .line 773
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingLeft()I

    move-result v5

    sub-int v2, v3, v5

    .line 775
    .local v2, "iPosXTemp":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v5

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_5c

    .line 776
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v5

    sget v6, Lcom/pantech/widget/SkySlide_Simple;->W_IMG_HANDLE:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-le v2, v5, :cond_5d

    .line 778
    :cond_5c
    return v7

    .line 782
    .end local v2    # "iPosXTemp":I
    :cond_5d
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_66

    .line 784
    return v7

    .line 787
    :cond_66
    iget-boolean v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    if-eqz v5, :cond_6a

    .line 792
    :cond_6a
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 793
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 794
    iput-boolean v8, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 796
    invoke-super {p0, v8}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 798
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v5, :cond_83

    .line 800
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 803
    :cond_83
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    if-eqz v5, :cond_8c

    .line 805
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 808
    :cond_8c
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Position2Value(I)I

    move-result v0

    .line 810
    .local v0, "iCurrValue0":I
    const-string/jumbo v5, "SkySlide_Simple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPrevValue = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string/jumbo v5, "SkySlide_Simple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iCurrValue0 = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    if-ne v5, v0, :cond_db

    .line 815
    return v8

    .line 818
    :cond_db
    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    .line 820
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Position2Value(I)I

    move-result v5

    invoke-super {p0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 822
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v5, :cond_fc

    .line 824
    const v5, 0x7f06017e

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 825
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 828
    :cond_fc
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    if-eqz v5, :cond_112

    .line 830
    const v5, 0x7f06017e

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 831
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v6

    invoke-interface {v5, p0, v6, v8}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 833
    :cond_112
    return v8

    .line 836
    .end local v0    # "iCurrValue0":I
    :pswitch_113
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_MOVE =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_MOVE isFocused =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_13b

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_13b

    .line 841
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_MOVE not is Enabled =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v7

    .line 845
    :cond_13b
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 846
    const-string/jumbo v5, "SkySlide_Simple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "========== ACTION_MOVE mSlidePosX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " =========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 848
    iget-boolean v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    if-eqz v5, :cond_170

    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->doTouchFBDrag()V

    .line 850
    :cond_170
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Position2Value(I)I

    move-result v5

    invoke-super {p0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 852
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_186

    .line 854
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 857
    :cond_186
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v1

    .line 859
    .local v1, "iCurrValue1":I
    const-string/jumbo v5, "SkySlide_Simple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPrevValue = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string/jumbo v5, "SkySlide_Simple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iNowProgressValue = ["

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

    .line 862
    iget v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    if-ne v5, v1, :cond_1d3

    .line 864
    return v8

    .line 867
    :cond_1d3
    iput v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    .line 869
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v5, :cond_1e4

    .line 871
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 872
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-interface {v5, p0, v1, v8}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 875
    :cond_1e4
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    if-eqz v5, :cond_1f3

    .line 877
    invoke-static {v10}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 878
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    invoke-interface {v5, p0, v1, v8}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;->onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V

    .line 880
    :cond_1f3
    return v8

    .line 883
    .end local v1    # "iCurrValue1":I
    :pswitch_1f4
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_UP =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_20a

    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_20a

    .line 887
    return v7

    .line 890
    :cond_20a
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v5, :cond_219

    .line 892
    invoke-static {v9}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 893
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 896
    :cond_219
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    if-eqz v5, :cond_228

    .line 898
    invoke-static {v9}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 899
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 902
    :cond_228
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v5

    iput v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 903
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 904
    iput-boolean v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 906
    invoke-super {p0, v7}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 907
    return v8

    .line 910
    :pswitch_23b
    const-string/jumbo v5, "SkySlide_Simple"

    const-string/jumbo v6, "========== ACTION_CANCEL =========="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    if-eqz v5, :cond_24d

    .line 914
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 917
    :cond_24d
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    if-eqz v5, :cond_256

    .line 919
    iget-object v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    invoke-interface {v5, p0}, Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 922
    :cond_256
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v5

    iput v5, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 923
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 924
    iput-boolean v7, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 926
    invoke-super {p0, v7}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 927
    return v8

    .line 761
    nop

    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f4
        :pswitch_113
        :pswitch_23b
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1189
    if-nez p1, :cond_15

    .line 1201
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 1202
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 1203
    iput-boolean v1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDragging:Z

    .line 1205
    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 1188
    :cond_15
    return-void
.end method

.method public setDivider(Z)V
    .registers 2
    .param p1, "divider"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsDivider:Z

    .line 520
    return-void
.end method

.method public setLevel(Z)V
    .registers 2
    .param p1, "level"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsLevel:Z

    .line 529
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->updateTouchArea()V

    .line 525
    return-void
.end method

.method public setLvDNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 567
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM_D:I

    .line 565
    return-void
.end method

.method public setLvDTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 562
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT_D:I

    .line 560
    return-void
.end method

.method public setLvNumColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 555
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_NUM:I

    .line 553
    return-void
.end method

.method public setLvTextColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 550
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_LV_TEXT:I

    .line 548
    return-void
.end method

.method public setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;)V
    .registers 2
    .param p1, "onSkySlideKeyListener"    # Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideKeyListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideKeyListener;

    .line 466
    return-void
.end method

.method public setOnSkySlideListener(Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;)V
    .registers 2
    .param p1, "onSkySlideListener"    # Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSkySlideListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideListener;

    .line 461
    return-void
.end method

.method public setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;)V
    .registers 2
    .param p1, "onSkySlideTouchListener"    # Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mOnSlideTouchListener:Lcom/pantech/widget/SkySlide_Simple$OnSkySlideTouchListener;

    .line 471
    return-void
.end method

.method public setOnlyHandleTouch(Z)V
    .registers 2
    .param p1, "fIsUse"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsOnlyHandleTouch:Z

    .line 494
    return-void
.end method

.method public setPopupBox(Z)V
    .registers 2
    .param p1, "popup"    # Z

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsPopupBox:Z

    .line 517
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->updateTouchArea()V

    .line 513
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 478
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 480
    iput p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mPrevValue:I

    .line 482
    iget v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mDividerInterval:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 484
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkySlide_Simple;->Value2Position(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mSlidePosX:I

    .line 485
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    .line 476
    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRevitalized(Z)V
    .registers 2
    .param p1, "fStatus"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsRevitalized:Z

    .line 601
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->setFocusableInTouchMode(Z)V

    .line 602
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->setEnabled(Z)V

    .line 603
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkySlide_Simple;->setFocusable(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/pantech/widget/SkySlide_Simple;->invalidate()V

    .line 597
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mTitleText:Ljava/lang/CharSequence;

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsTitle:Z

    .line 510
    invoke-direct {p0}, Lcom/pantech/widget/SkySlide_Simple;->updateTouchArea()V

    .line 504
    return-void
.end method

.method public setTitleColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 540
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE:I

    .line 538
    return-void
.end method

.method public setTitleDColor(III)V
    .registers 5
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 545
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkySlide_Simple;->C_TITLE_D:I

    .line 543
    return-void
.end method

.method public setUsingTouchFB(Z)V
    .registers 2
    .param p1, "isUse"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/pantech/widget/SkySlide_Simple;->mIsUsingTouchFB:Z

    .line 572
    return-void
.end method
