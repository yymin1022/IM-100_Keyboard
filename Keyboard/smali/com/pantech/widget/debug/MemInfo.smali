.class public final Lcom/pantech/widget/debug/MemInfo;
.super Ljava/lang/Object;
.source "MemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MemInfo"

.field private static smInfo:Landroid/os/Debug$MemoryInfo;

.field private static smTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/pantech/widget/debug/MemInfo;->smInfo:Landroid/os/Debug$MemoryInfo;

    .line 12
    sput-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearAll()V
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Lcom/pantech/widget/debug/MemInfo;->stopMemInfoTimer()Z

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/widget/debug/MemInfo;->smInfo:Landroid/os/Debug$MemoryInfo;

    .line 14
    return-void
.end method

.method public static final printfMemInfo(Ljava/lang/String;)V
    .registers 5
    .param p0, "logTag"    # Ljava/lang/String;

    .prologue
    .line 20
    move-object v1, p0

    .line 21
    .local v1, "tag":Ljava/lang/String;
    sget-object v0, Lcom/pantech/widget/debug/MemInfo;->smInfo:Landroid/os/Debug$MemoryInfo;

    .line 23
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    if-nez v0, :cond_c

    .line 24
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    .end local v0    # "info":Landroid/os/Debug$MemoryInfo;
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 25
    .restart local v0    # "info":Landroid/os/Debug$MemoryInfo;
    sput-object v0, Lcom/pantech/widget/debug/MemInfo;->smInfo:Landroid/os/Debug$MemoryInfo;

    .line 28
    :cond_c
    if-nez v1, :cond_11

    .line 29
    const-string/jumbo v1, "MemInfo"

    .line 31
    :cond_11
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pss[dalvik="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",native="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string/jumbo v3, ",other="

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string/jumbo v3, ",Total="

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "],TotalDirty[Private="

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    const-string/jumbo v3, ",Shared="

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "]"

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static final startMemInfoTimer(J)Z
    .registers 10
    .param p0, "period"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 46
    sget-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    if-eqz v0, :cond_8

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_8
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "MemInfo Timer"

    invoke-direct {v0, v1, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    .line 50
    sget-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    new-instance v1, Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;

    invoke-direct {v1, v2}, Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;-><init>(Lcom/pantech/widget/debug/MemInfo$TimerTask_MemInfo;)V

    const-wide/16 v2, 0x0

    move-wide v4, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 51
    return v6
.end method

.method public static final stopMemInfoTimer()Z
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 55
    sget-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    if-nez v0, :cond_7

    .line 56
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_7
    sget-object v0, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 58
    sput-object v1, Lcom/pantech/widget/debug/MemInfo;->smTimer:Ljava/util/Timer;

    .line 59
    const/4 v0, 0x1

    return v0
.end method
