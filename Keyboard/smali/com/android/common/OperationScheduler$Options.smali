.class public Lcom/android/common/OperationScheduler$Options;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/OperationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public backoffExponentialMillis:I

.field public backoffFixedMillis:J

.field public backoffIncrementalMillis:J

.field public maxMoratoriumMillis:J

.field public minTriggerMillis:J

.field public periodicIntervalMillis:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 42
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    .line 48
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    .line 51
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 54
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 58
    iget v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    if-lez v0, :cond_55

    .line 59
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_54
    return-object v0

    :cond_55
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54
.end method
