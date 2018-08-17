.class Lcom/pantech/widget/SkySlideBlue$1;
.super Ljava/util/TimerTask;
.source "SkySlideBlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkySlideBlue;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkySlideBlue;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkySlideBlue;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkySlideBlue;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/pantech/widget/SkySlideBlue$1;->this$0:Lcom/pantech/widget/SkySlideBlue;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/pantech/widget/SkySlideBlue$1;->this$0:Lcom/pantech/widget/SkySlideBlue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/widget/SkySlideBlue;->-set0(Lcom/pantech/widget/SkySlideBlue;Z)Z

    .line 534
    return-void
.end method
