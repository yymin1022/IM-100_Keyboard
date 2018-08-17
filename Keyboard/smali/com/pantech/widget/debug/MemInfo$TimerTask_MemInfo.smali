.class final Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;
.super Ljava/util/TimerTask;
.source "MemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/debug/MemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerTask_MemInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/widget/debug/MemInfo;->printfMemInfo(Ljava/lang/String;)V

    .line 40
    return-void
.end method
