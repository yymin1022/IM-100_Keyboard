.class public Lcom/pantech/widget/SkyStaticText;
.super Landroid/view/View;
.source "SkyStaticText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyStaticText$Marquee;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG_GROUP:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SkyStaticText"

.field public static final Vertical_Bottom:I = 0x1

.field public static final Vertical_Center:I = 0x2

.field public static final Vertical_Top:I

.field protected static smStyleable:[I


# instance fields
.field protected mAlignment:Landroid/text/Layout$Alignment;

.field protected mLayout:Landroid/text/BoringLayout;

.field private mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

.field protected mMetrics:Landroid/text/BoringLayout$Metrics;

.field protected mPaint:Landroid/text/TextPaint;

.field protected mRectClip:Landroid/graphics/Rect;

.field protected mbRequestReCalLayoutWidth:Z

.field protected mfFontSize:F

.field protected miAlignVertical:I

.field protected miColorTable:[I

.field protected miDrawTextWidth:I

.field protected miFontTypefaceIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/widget/SkyStaticText;->smStyleable:[I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 35
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 36
    const/high16 v0, 0x42080000    # 34.0f

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miFontTypefaceIndex:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    .line 42
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 43
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    .line 45
    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 46
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    .line 55
    iput-boolean v2, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/pantech/widget/SkyStaticText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 35
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 36
    const/high16 v0, 0x42080000    # 34.0f

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miFontTypefaceIndex:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    .line 42
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 43
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    .line 45
    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 46
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    .line 55
    iput-boolean v2, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyStaticText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 35
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 36
    const/high16 v0, 0x42080000    # 34.0f

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miFontTypefaceIndex:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    .line 42
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 43
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    .line 45
    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 46
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    .line 55
    iput-boolean v2, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyStaticText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 80
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 81
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 87
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const v3, -0x7f7f80

    aput v3, v2, v8

    .line 88
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const v3, -0xf0f0f1

    aput v3, v2, v6

    .line 89
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aput v5, v2, v7

    .line 90
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aput v5, v2, v9

    .line 91
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v3, 0x4

    aput v5, v2, v3

    .line 92
    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 94
    if-eqz p2, :cond_b6

    .line 97
    sget-object v2, Lcom/pantech/widget/SkyStaticText;->smStyleable:[I

    if-nez v2, :cond_bf

    .line 98
    sget-object v2, Lcom/pantech/res/R$styleable;->SkyStaticText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_3c
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const v3, -0x7f7f80

    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v8

    .line 114
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v3, 0x4

    const v4, -0xf0f0f1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v6

    .line 115
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v7

    .line 116
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v9

    .line 117
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x4

    aput v3, v2, v4

    .line 118
    iget v2, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    float-to-int v2, v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 119
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    .line 121
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_ac

    .line 123
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyStaticText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const-string/jumbo v2, "SkyStaticText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_ac
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 141
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "s":Ljava/lang/CharSequence;
    :cond_b6
    invoke-virtual {p0, v6}, Lcom/pantech/widget/SkyStaticText;->setHorizontalFadingEdgeEnabled(Z)V

    .line 142
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyStaticText;->setFadingEdgeLength(I)V

    .line 77
    return-void

    .line 100
    :cond_bf
    sget-object v2, Lcom/pantech/widget/SkyStaticText;->smStyleable:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_3c
.end method

.method public static initStyleable([I)V
    .registers 1
    .param p0, "iStyleable"    # [I

    .prologue
    .line 74
    sput-object p0, Lcom/pantech/widget/SkyStaticText;->smStyleable:[I

    .line 73
    return-void
.end method

.method private startMarquee()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_5

    .line 150
    return-void

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v0}, Landroid/text/BoringLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_12

    .line 153
    return-void

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 157
    :cond_1e
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-nez v0, :cond_29

    .line 158
    new-instance v0, Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-direct {v0, p0}, Lcom/pantech/widget/SkyStaticText$Marquee;-><init>(Lcom/pantech/widget/SkyStaticText;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 159
    :cond_29
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyStaticText$Marquee;->start(I)V

    .line 161
    const-string/jumbo v0, "SkyStaticText"

    const-string/jumbo v1, "Start Mareuee !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_38
    return-void

    .line 163
    :cond_39
    const-string/jumbo v0, "SkyStaticText"

    const-string/jumbo v1, "can\'t start Mareuee"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method private stopMarquee()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 167
    :cond_c
    :goto_c
    return-void

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->stop()V

    goto :goto_c
.end method


# virtual methods
.method public SetAlignment(Landroid/text/Layout$Alignment;Z)V
    .registers 4
    .param p1, "alig"    # Landroid/text/Layout$Alignment;
    .param p2, "bUpdate"    # Z

    .prologue
    .line 513
    iput-object p1, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    .line 514
    if-eqz p2, :cond_b

    .line 515
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText;->resetText(I)V

    .line 512
    :cond_b
    return-void
.end method

.method public clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 340
    :cond_d
    :goto_d
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 341
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 342
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 343
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 344
    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    .line 336
    return-void

    .line 338
    :cond_18
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->stop()V

    goto :goto_d
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v0, :cond_16

    .line 410
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->getScroll()F

    move-result v0

    float-to-int v0, v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 412
    :cond_16
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v0}, Landroid/text/BoringLayout;->getWidth()I

    move-result v0

    return v0

    .line 397
    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_15

    .line 403
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v0}, Landroid/text/BoringLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 404
    :cond_15
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 332
    invoke-super {p0}, Landroid/view/View;->finalize()V

    .line 333
    const-string/jumbo v0, "SkyStaticText"

    const-string/jumbo v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method protected getDrawWidth(Ljava/lang/CharSequence;)I
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-array v3, v4, [F

    .line 382
    .local v3, "widths":[F
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 383
    .local v0, "count":I
    const/4 v2, 0x0

    .line 385
    .local v2, "total":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1b

    .line 386
    aget v4, v3, v1

    add-float/2addr v2, v4

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 389
    :cond_1b
    float-to-int v4, v2

    return v4
.end method

.method protected getEllipsisWidth(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "iViewWidth"    # I

    .prologue
    const/4 v7, 0x0

    .line 359
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v4, v5, [F

    .line 360
    .local v4, "widths":[F
    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, p1, v7, v6, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 361
    .local v0, "count":I
    const/4 v2, 0x0

    .line 362
    .local v2, "total":F
    int-to-float v3, p2

    .line 364
    .local v3, "viewWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_1b

    .line 365
    cmpl-float v5, v2, v3

    if-nez v5, :cond_1c

    .line 366
    float-to-int p2, v2

    .line 377
    :cond_1b
    :goto_1b
    return p2

    .line 368
    :cond_1c
    cmpl-float v5, v2, v3

    if-lez v5, :cond_29

    .line 369
    if-lez v1, :cond_27

    .line 370
    add-int/lit8 v5, v1, -0x1

    aget v5, v4, v5

    sub-float/2addr v2, v5

    .line 371
    :cond_27
    float-to-int p2, v2

    .line 372
    goto :goto_1b

    .line 374
    :cond_29
    aget v5, v4, v1

    add-float/2addr v2, v5

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 417
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyStaticText$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 425
    :cond_c
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    return v1

    .line 418
    :cond_11
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 419
    .local v0, "marquee":Lcom/pantech/widget/SkyStaticText$Marquee;
    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 420
    iget v1, v0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1

    .line 422
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 430
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyStaticText$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 434
    :cond_c
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v1

    return v1

    .line 431
    :cond_11
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    .line 432
    .local v0, "marquee":Lcom/pantech/widget/SkyStaticText$Marquee;
    iget v1, v0, Lcom/pantech/widget/SkyStaticText$Marquee;->mMaxFadeScroll:F

    iget v2, v0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 549
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 550
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v4, :cond_88

    const/4 v2, 0x0

    .line 552
    .local v2, "iLength":I
    :goto_a
    if-lez v2, :cond_87

    .line 553
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingLeft()I

    move-result v4

    int-to-float v1, v4

    .line 561
    .local v1, "fLeftPadding":F
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_94

    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 568
    :goto_20
    iget v4, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    packed-switch v4, :pswitch_data_f0

    .line 577
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v5}, Landroid/text/BoringLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 581
    .local v0, "fCenterY":F
    :goto_33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 582
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 583
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget v6, v6, Landroid/text/BoringLayout$Metrics;->width:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 584
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mRectClip:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 586
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    if-eqz v4, :cond_e7

    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyStaticText$Marquee;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 587
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyStaticText$Marquee;->getScroll()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 588
    .local v3, "iScroll":I
    int-to-float v4, v3

    add-float/2addr v4, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 590
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v4, p1, v7, v7, v8}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 592
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyStaticText$Marquee;->shouldDrawGhost()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 593
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mMarquee:Lcom/pantech/widget/SkyStaticText$Marquee;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyStaticText$Marquee;->getGhostOffset()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 594
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v4, p1, v7, v7, v8}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 601
    .end local v3    # "iScroll":I
    :cond_84
    :goto_84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 548
    .end local v0    # "fCenterY":F
    .end local v1    # "fLeftPadding":F
    :cond_87
    return-void

    .line 550
    .end local v2    # "iLength":I
    :cond_88
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .restart local v2    # "iLength":I
    goto/16 :goto_a

    .line 562
    .restart local v1    # "fLeftPadding":F
    :cond_94
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_20

    .line 563
    :cond_a6
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_20

    .line 564
    :cond_b8
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_ca

    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_20

    .line 565
    :cond_ca
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_20

    .line 570
    :pswitch_d6
    const/4 v0, 0x0

    .line 571
    .restart local v0    # "fCenterY":F
    goto/16 :goto_33

    .line 573
    .end local v0    # "fCenterY":F
    :pswitch_d9
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v5}, Landroid/text/BoringLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 574
    .restart local v0    # "fCenterY":F
    goto/16 :goto_33

    .line 597
    :cond_e7
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 598
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v4, p1, v7, v7, v8}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_84

    .line 568
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_d9
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyStaticText;->startStopMarquee(Z)V

    .line 327
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 324
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 608
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 609
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 610
    .local v3, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 611
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 612
    .local v4, "heightSize":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredWidth()I

    move-result v5

    .line 615
    .local v5, "iOldViewWidth":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 618
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne v7, v11, :cond_33

    .line 620
    move v6, v8

    .line 635
    .local v6, "width":I
    :goto_1d
    if-ne v3, v11, :cond_58

    .line 637
    move v2, v4

    .line 656
    .local v2, "height":I
    :goto_20
    invoke-virtual {p0, v6, v2}, Lcom/pantech/widget/SkyStaticText;->setMeasuredDimension(II)V

    .line 658
    if-eq v6, v5, :cond_28

    .line 659
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 662
    :cond_28
    iget-boolean v9, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    if-eqz v9, :cond_32

    .line 664
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 665
    invoke-virtual {p0, v6}, Lcom/pantech/widget/SkyStaticText;->resetText(I)V

    .line 607
    :cond_32
    return-void

    .line 622
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_33
    iget-object v9, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    if-nez v9, :cond_53

    const/4 v6, 0x0

    .line 623
    .restart local v6    # "width":I
    :goto_38
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getSuggestedMinimumWidth()I

    move-result v1

    .line 624
    .local v1, "dSize":I
    if-lt v1, v6, :cond_3f

    .line 625
    move v6, v1

    .line 627
    :cond_3f
    if-eqz v0, :cond_48

    .line 628
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 629
    if-ge v6, v1, :cond_48

    .line 630
    move v6, v1

    .line 632
    :cond_48
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_1d

    .line 622
    .end local v1    # "dSize":I
    .end local v6    # "width":I
    :cond_53
    iget-object v9, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget v6, v9, Landroid/text/BoringLayout$Metrics;->width:I

    .restart local v6    # "width":I
    goto :goto_38

    .line 639
    :cond_58
    iget-object v9, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v9

    float-to-int v2, v9

    .line 640
    .restart local v2    # "height":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getSuggestedMinimumHeight()I

    move-result v1

    .line 641
    .restart local v1    # "dSize":I
    if-lt v1, v2, :cond_66

    .line 642
    move v2, v1

    .line 644
    :cond_66
    if-eqz v0, :cond_6f

    .line 645
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 646
    if-ge v2, v1, :cond_6f

    .line 647
    move v2, v1

    .line 650
    :cond_6f
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    goto :goto_20
.end method

.method protected resetText(I)V
    .registers 12
    .param p1, "iViewWidth"    # I

    .prologue
    .line 468
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_5

    .line 469
    return-void

    .line 471
    :cond_5
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v1}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 472
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_10

    .line 473
    const-string/jumbo v0, ""

    .line 475
    :cond_10
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v1, v2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 476
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    if-nez v1, :cond_2b

    .line 477
    const-string/jumbo v1, "H"

    iget-object v2, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v2, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 479
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText;->getDrawWidth(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 480
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget v2, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    iput v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    .line 481
    iget p1, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 483
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_52

    .line 484
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 485
    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x1

    move v2, p1

    .line 484
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 490
    :goto_4e
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 466
    return-void

    .line 487
    :cond_52
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 488
    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v9, 0x1

    move-object v2, v0

    move v4, p1

    .line 487
    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    goto :goto_4e
.end method

.method public setAlignmentVertical(I)Z
    .registers 4
    .param p1, "alig"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    if-ltz p1, :cond_a

    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    .line 524
    iput p1, p0, Lcom/pantech/widget/SkyStaticText;->miAlignVertical:I

    .line 525
    const/4 v0, 0x1

    return v0

    .line 528
    :cond_a
    return v1
.end method

.method public setColor([I)Z
    .registers 9
    .param p1, "iColorTable"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    array-length v0, p1

    const/4 v1, 0x5

    if-le v1, v0, :cond_a

    .line 536
    return v2

    .line 537
    :cond_a
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 538
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 539
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v1, p1, v4

    aput v1, v0, v4

    .line 540
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v1, p1, v5

    aput v1, v0, v5

    .line 541
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->miColorTable:[I

    aget v1, p1, v6

    aput v1, v0, v6

    .line 542
    return v3
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->getMeasuredWidth()I

    move-result v2

    .line 440
    .local v2, "iViewWidth":I
    if-nez p1, :cond_9

    .line 441
    const-string/jumbo p1, ""

    .line 443
    :cond_9
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    invoke-static {p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 444
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    if-nez v0, :cond_24

    .line 445
    const-string/jumbo v0, "H"

    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v1, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 447
    :cond_24
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyStaticText;->getDrawWidth(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 448
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget v1, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 449
    if-gtz v2, :cond_35

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyStaticText;->mbRequestReCalLayoutWidth:Z

    .line 452
    :cond_35
    iget v2, p0, Lcom/pantech/widget/SkyStaticText;->miDrawTextWidth:I

    .line 454
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_50

    .line 455
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 456
    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x1

    move-object v0, p1

    .line 455
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    .line 462
    :goto_4c
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 437
    return-void

    .line 458
    :cond_50
    iget-object v3, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    iget-object v5, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    .line 459
    iget-object v7, p0, Lcom/pantech/widget/SkyStaticText;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/widget/SkyStaticText;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v11, 0x1

    move-object v4, p1

    move v6, v2

    .line 458
    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    goto :goto_4c
.end method

.method public setTextSize(F)V
    .registers 4
    .param p1, "fSize"    # F

    .prologue
    .line 498
    iget v0, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 499
    iput p1, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    .line 500
    iget-object v0, p0, Lcom/pantech/widget/SkyStaticText;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/pantech/widget/SkyStaticText;->mfFontSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 501
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 497
    :cond_12
    return-void
.end method

.method public startStopMarquee(Z)V
    .registers 2
    .param p1, "start"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/pantech/widget/SkyStaticText;->startMarquee()V

    .line 173
    :goto_5
    return-void

    .line 177
    :cond_6
    invoke-direct {p0}, Lcom/pantech/widget/SkyStaticText;->stopMarquee()V

    goto :goto_5
.end method

.method public updateFontTypeface()V
    .registers 1

    .prologue
    .line 350
    return-void
.end method
