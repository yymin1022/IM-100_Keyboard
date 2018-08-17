.class public Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForgettingCurveParams"
.end annotation


# instance fields
.field private mFc:B

.field private final mIsValid:Z

.field mLastTouchedTime:J


# direct methods
.method public constructor <init>(IJJ)V
    .registers 14
    .param p1, "fc"    # I
    .param p2, "now"    # J
    .param p4, "last"    # J

    .prologue
    .line 61
    int-to-byte v0, p1

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v6, 0x1

    :goto_8
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJZ)V

    .line 62
    return-void

    .line 61
    :cond_10
    const/4 v6, 0x0

    goto :goto_8
.end method

.method private constructor <init>(IJJZ)V
    .registers 9
    .param p1, "fc"    # I
    .param p2, "now"    # J
    .param p4, "last"    # J
    .param p6, "isValid"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 65
    iput-boolean p6, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mIsValid:Z

    .line 66
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 67
    iput-wide p4, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 69
    return-void
.end method

.method private constructor <init>(JZ)V
    .registers 11
    .param p1, "now"    # J
    .param p3, "isValid"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p3}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->pushCount(BZ)B

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(IJJZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "isValid"    # Z

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;-><init>(JZ)V

    .line 50
    return-void
.end method

.method private updateElapsedTime(J)V
    .registers 10
    .param p1, "now"    # J

    .prologue
    const-wide/32 v4, 0x1499700

    .line 93
    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 95
    .local v0, "elapsedTimeCount":I
    if-gtz v0, :cond_c

    .line 107
    :cond_b
    :goto_b
    return-void

    .line 98
    :cond_c
    const/16 v2, 0x40

    if-lt v0, v2, :cond_16

    .line 99
    iput-wide p1, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 100
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    goto :goto_b

    .line 103
    :cond_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_b

    .line 104
    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 105
    iget-byte v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->pushElapsedTime(B)B

    move-result v2

    iput-byte v2, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method private updateLastTouchedTime()V
    .registers 3

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mLastTouchedTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public getFc()B
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 77
    iget-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    return v0
.end method

.method public getFrequency()I
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateElapsedTime(J)V

    .line 82
    iget-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToFreq(B)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mIsValid:Z

    return v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->updateLastTouchedTime()V

    .line 88
    iget-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->pushCount(BZ)B

    move-result v0

    iput-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    .line 89
    iget-byte v0, p0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->mFc:B

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToFreq(B)I

    move-result v0

    return v0
.end method
