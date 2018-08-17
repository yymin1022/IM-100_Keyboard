.class Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->clearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)V
    .registers 2

    .prologue
    .line 538
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$700(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$700(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 541
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v0, :cond_21

    .line 542
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete log file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_21
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$700(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 545
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$400(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 547
    :cond_33
    return-void
.end method
