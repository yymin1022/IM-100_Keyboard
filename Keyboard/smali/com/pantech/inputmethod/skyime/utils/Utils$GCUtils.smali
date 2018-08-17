.class public Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_INTERVAL:J = 0x3e8L

.field private static final GC_TAG:Ljava/lang/String;

.field public static final GC_TRY_COUNT:I = 0x2

.field public static final GC_TRY_LOOP_MAX:I = 0x5

.field private static sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const-class v0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->mGCTryCount:I

    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->mGCTryCount:I

    .line 103
    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .registers 7
    .param p1, "metaData"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 106
    iget v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->mGCTryCount:I

    if-nez v2, :cond_8

    .line 107
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    :cond_8
    iget v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->mGCTryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->mGCTryCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_15

    .line 110
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_14
    return v1

    .line 114
    :cond_15
    const-wide/16 v2, 0x3e8

    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 115
    const/4 v1, 0x1

    goto :goto_14

    .line 116
    :catch_1c
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    const-string v3, "Sleep was interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method
