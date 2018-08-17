.class Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 492
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 494
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$000(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$100(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s\t%d\t%s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$200(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v8}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$100(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "printString":Ljava/lang/String;
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v3, :cond_5e

    .line 501
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_5e
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$400(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    return-void
.end method
