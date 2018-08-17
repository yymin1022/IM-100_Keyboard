.class final Lcom/pantech/widget/SkyStaticText$Marquee;
.super Landroid/os/Handler;
.source "SkyStaticText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyStaticText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESOLUTION:I = 0x21

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static final MESSAGE_RESTART:I = 0x3

.field private static final MESSAGE_START:I = 0x1

.field private static final MESSAGE_TICK:I = 0x2


# instance fields
.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field mMaxFadeScroll:F

.field private mMaxScroll:F

.field private mRepeatLimit:I

.field mScroll:F

.field private mScrollUnit:F

.field private mStatus:B

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/widget/SkyStaticText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyStaticText;)V
    .registers 5
    .param p1, "v"    # Lcom/pantech/widget/SkyStaticText;

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 198
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    .line 210
    invoke-virtual {p1}, Lcom/pantech/widget/SkyStaticText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 211
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42040000    # 33.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScrollUnit:F

    .line 212
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 209
    return-void
.end method

.method private resetScroll()V
    .registers 3

    .prologue
    .line 266
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    .line 267
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/widget/SkyStaticText;

    .line 268
    .local v0, "textView":Lcom/pantech/widget/SkyStaticText;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 265
    :cond_10
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostOffset:F

    return v0
.end method

.method getScroll()F
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 216
    :cond_6
    :goto_6
    return-void

    .line 219
    :pswitch_7
    iput-byte v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    .line 220
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText$Marquee;->tick()V

    goto :goto_6

    .line 223
    :pswitch_d
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText$Marquee;->tick()V

    goto :goto_6

    .line 226
    :pswitch_11
    iget-byte v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    if-ne v0, v1, :cond_6

    .line 227
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mRepeatLimit:I

    if-ltz v0, :cond_1f

    .line 228
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mRepeatLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mRepeatLimit:I

    .line 230
    :cond_1f
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mRepeatLimit:I

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->start(I)V

    goto :goto_6

    .line 217
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 312
    iget-byte v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isStopped()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 316
    iget-byte v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method shouldDrawGhost()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-byte v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    iget v2, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostStart:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method shouldDrawLeftFade()Z
    .registers 3

    .prologue
    .line 304
    iget v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    iget v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method start(I)V
    .registers 9
    .param p1, "repeatLimit"    # I

    .prologue
    const/4 v6, 0x1

    .line 272
    if-nez p1, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/pantech/widget/SkyStaticText$Marquee;->stop()V

    .line 274
    return-void

    .line 276
    :cond_7
    iput p1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mRepeatLimit:I

    .line 277
    iget-object v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/widget/SkyStaticText;

    .line 278
    .local v2, "textView":Lcom/pantech/widget/SkyStaticText;
    if-eqz v2, :cond_51

    iget-object v4, v2, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    if-eqz v4, :cond_51

    .line 279
    iput-byte v6, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    .line 280
    const/4 v4, 0x0

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    .line 281
    invoke-virtual {v2}, Lcom/pantech/widget/SkyStaticText;->getWidth()I

    move-result v3

    .line 282
    .local v3, "textWidth":I
    iget-object v4, v2, Lcom/pantech/widget/SkyStaticText;->mLayout:Landroid/text/BoringLayout;

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 283
    .local v1, "lineWidth":F
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 284
    .local v0, "gap":F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostStart:F

    .line 285
    iget v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mMaxScroll:F

    .line 286
    add-float v4, v1, v0

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostOffset:F

    .line 287
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mFadeStop:F

    .line 288
    iget v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mMaxFadeScroll:F

    .line 290
    invoke-virtual {v2}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 291
    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v6, v4, v5}, Lcom/pantech/widget/SkyStaticText$Marquee;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    .end local v0    # "gap":F
    .end local v1    # "lineWidth":F
    .end local v3    # "textWidth":I
    :cond_51
    return-void
.end method

.method stop()V
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->removeMessages(I)V

    .line 260
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->removeMessages(I)V

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyStaticText$Marquee;->removeMessages(I)V

    .line 262
    invoke-direct {p0}, Lcom/pantech/widget/SkyStaticText$Marquee;->resetScroll()V

    .line 257
    return-void
.end method

.method tick()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 237
    iget-byte v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mStatus:B

    if-eq v1, v4, :cond_6

    .line 238
    return-void

    .line 241
    :cond_6
    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkyStaticText$Marquee;->removeMessages(I)V

    .line 243
    iget-object v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/widget/SkyStaticText;

    .line 245
    .local v0, "textView":Lcom/pantech/widget/SkyStaticText;
    if-eqz v0, :cond_2f

    .line 246
    iget v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    iget v2, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScrollUnit:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    .line 247
    iget v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    iget v2, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mMaxScroll:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_30

    .line 248
    iget v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mMaxScroll:F

    iput v1, p0, Lcom/pantech/widget/SkyStaticText$Marquee;->mScroll:F

    .line 249
    const-wide/16 v2, 0x4b0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/widget/SkyStaticText$Marquee;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :goto_2c
    invoke-virtual {v0}, Lcom/pantech/widget/SkyStaticText;->invalidate()V

    .line 236
    :cond_2f
    return-void

    .line 251
    :cond_30
    const-wide/16 v2, 0x21

    invoke-virtual {p0, v4, v2, v3}, Lcom/pantech/widget/SkyStaticText$Marquee;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2c
.end method
