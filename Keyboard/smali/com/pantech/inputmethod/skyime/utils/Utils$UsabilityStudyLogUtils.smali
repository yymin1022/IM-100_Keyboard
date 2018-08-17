.class public Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsabilityStudyLogUtils"
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "log.txt"

.field private static final USABILITY_TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDirectory:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mIms:Landroid/inputmethodservice/InputMethodService;

.field private final mLoggingHandler:Landroid/os/Handler;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 428
    const-class v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    .line 430
    new-instance v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    .line 442
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 444
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsabilityStudyLogUtils logging task"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 446
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 447
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->createLogFileIfNotExist()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 427
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/BufferedReader;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mIms:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private createLogFileIfNotExist()V
    .registers 5

    .prologue
    .line 460
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    :cond_c
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 463
    :try_start_18
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    const-string v2, "log.txt"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_24

    .line 468
    :cond_23
    :goto_23
    return-void

    .line 464
    :catch_24
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    const-string v2, "Can\'t create log file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private getBufferedReader()Ljava/io/BufferedReader;
    .registers 5

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->createLogFileIfNotExist()V

    .line 554
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    .line 556
    :goto_f
    return-object v1

    .line 555
    :catch_10
    move-exception v0

    .line 556
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;
    .registers 1

    .prologue
    .line 451
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->sInstance:Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    return-object v0
.end method

.method private getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;
    .registers 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "renew"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    .line 563
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 564
    if-eqz p3, :cond_16

    .line 565
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 568
    :cond_16
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$3;-><init>(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method

.method public init(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3
    .param p1, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mIms:Landroid/inputmethodservice/InputMethodService;

    .line 456
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    .line 457
    return-void
.end method

.method public printAll()V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$2;-><init>(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 535
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils$1;-><init>(Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public writeBackSpace()V
    .registers 3

    .prologue
    .line 471
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    const-string v1, "<backspace>\t0\t0"

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public writeChar(CII)V
    .registers 8
    .param p1, "c"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 475
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "inputChar":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_3c

    .line 487
    :goto_7
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onPrintAllUsabilityStudyLogs()V

    .line 489
    return-void

    .line 478
    :sswitch_33
    const-string v0, "<enter>"

    .line 479
    goto :goto_7

    .line 481
    :sswitch_36
    const-string v0, "<tab>"

    .line 482
    goto :goto_7

    .line 484
    :sswitch_39
    const-string v0, "<space>"

    goto :goto_7

    .line 476
    :sswitch_data_3c
    .sparse-switch
        0x9 -> :sswitch_36
        0xa -> :sswitch_33
        0x20 -> :sswitch_39
    .end sparse-switch
.end method
