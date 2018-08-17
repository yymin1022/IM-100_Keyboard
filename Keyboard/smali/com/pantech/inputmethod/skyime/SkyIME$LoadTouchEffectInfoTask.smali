.class Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;
.super Landroid/os/AsyncTask;
.source "SkyIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTouchEffectInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2

    .prologue
    .line 4458
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;Lcom/pantech/inputmethod/skyime/SkyIME$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p2, "x1"    # Lcom/pantech/inputmethod/skyime/SkyIME$1;

    .prologue
    .line 4458
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4458
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadTouchEffectInfoAsync()V

    .line 4462
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4458
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 4467
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2000(Lcom/pantech/inputmethod/skyime/SkyIME;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4468
    :try_start_7
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$2102(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z

    .line 4469
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 4470
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4471
    return-void

    .line 4469
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method
