.class public Lcom/pantech/inputmethod/skyime/ComposingStateManager;
.super Ljava/lang/Object;
.source "ComposingStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/ComposingStateManager;


# instance fields
.field private mAutoCorrectionIndicatorOn:Z

.field private mIsComposing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/ComposingStateManager;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->sInstance:Lcom/pantech/inputmethod/skyime/ComposingStateManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 33
    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/ComposingStateManager;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->sInstance:Lcom/pantech/inputmethod/skyime/ComposingStateManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isAutoCorrectionIndicatorOn()Z
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isComposing()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z

    return v0
.end method

.method public declared-synchronized onFinishComposingText()V
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z

    if-eqz v0, :cond_16

    .line 48
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v0, :cond_10

    .line 49
    sget-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Finish composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 54
    :cond_16
    monitor-exit p0

    return-void

    .line 47
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStartComposingText()V
    .registers 3

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z

    if-nez v0, :cond_16

    .line 38
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v0, :cond_10

    .line 39
    sget-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->TAG:Ljava/lang/String;

    const-string v1, "Start composing text."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 44
    :cond_16
    monitor-exit p0

    return-void

    .line 37
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoCorrectionIndicatorOn(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mIsComposing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v0, :cond_7

    .line 72
    :goto_5
    monitor-exit p0

    return-void

    .line 68
    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v0, :cond_23

    .line 69
    sget-object v0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set auto correction Indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_23
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/ComposingStateManager;->mAutoCorrectionIndicatorOn:Z
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    goto :goto_5

    .line 67
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
