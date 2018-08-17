.class public Lcom/android/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/NetworkConnectivityListener$1;,
        Lcom/android/common/NetworkConnectivityListener$State;,
        Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/android/common/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/android/common/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    .line 130
    new-instance v0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/common/NetworkConnectivityListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;
    .param p1, "x1"    # Lcom/android/common/NetworkConnectivityListener$State;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/common/NetworkConnectivityListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/common/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/common/NetworkConnectivityListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/common/NetworkConnectivityListener$State;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .registers 5
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_19

    .line 139
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/common/NetworkConnectivityListener;->mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 146
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_19
    monitor-exit p0

    return-void

    .line 138
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .registers 3

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_1e

    .line 153
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/common/NetworkConnectivityListener;->mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mIsFailover:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 161
    :cond_1e
    monitor-exit p0

    return-void

    .line 152
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .registers 3
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method
