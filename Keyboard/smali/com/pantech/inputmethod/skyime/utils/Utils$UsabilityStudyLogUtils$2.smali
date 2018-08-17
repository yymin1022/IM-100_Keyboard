.class Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->printAll()V
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
    .line 509
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 511
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$400(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$500(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 516
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_15
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 517
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_24
    .catchall {:try_start_15 .. :try_end_23} :catchall_9e

    goto :goto_15

    .line 520
    .end local v2    # "line":Ljava/lang/String;
    :catch_24
    move-exception v1

    .line 521
    .local v1, "e":Ljava/io/IOException;
    :try_start_25
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t read log file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_9e

    .line 523
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v4, :cond_50

    .line 524
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output all logs\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_50
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$600(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 528
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_d6

    .line 533
    .end local v1    # "e":Ljava/io/IOException;
    :goto_64
    return-void

    .line 523
    .restart local v2    # "line":Ljava/lang/String;
    :cond_65
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v4, :cond_87

    .line 524
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output all logs\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_87
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$600(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 528
    :try_start_98
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_64

    .line 529
    :catch_9c
    move-exception v4

    goto :goto_64

    .line 523
    .end local v2    # "line":Ljava/lang/String;
    :catchall_9e
    move-exception v4

    sget-boolean v5, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v5, :cond_c1

    .line 524
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output all logs\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_c1
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;->this$0:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->access$600(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 528
    :try_start_d2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d8

    .line 531
    :goto_d5
    throw v4

    .line 529
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_d6
    move-exception v4

    goto :goto_64

    .end local v1    # "e":Ljava/io/IOException;
    :catch_d8
    move-exception v5

    goto :goto_d5
.end method
