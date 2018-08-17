.class Lcom/pantech/widget/SkySlide$1;
.super Ljava/util/TimerTask;
.source "SkySlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkySlide;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkySlide;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkySlide;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkySlide;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/pantech/widget/SkySlide$1;->this$0:Lcom/pantech/widget/SkySlide;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/pantech/widget/SkySlide$1;->this$0:Lcom/pantech/widget/SkySlide;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/widget/SkySlide;->-set0(Lcom/pantech/widget/SkySlide;Z)Z

    .line 518
    return-void
.end method
