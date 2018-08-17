.class Lcom/pantech/widget/SkySlide_Simple$1;
.super Ljava/util/TimerTask;
.source "SkySlide_Simple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkySlide_Simple;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkySlide_Simple;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkySlide_Simple;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkySlide_Simple;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/pantech/widget/SkySlide_Simple$1;->this$0:Lcom/pantech/widget/SkySlide_Simple;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/pantech/widget/SkySlide_Simple$1;->this$0:Lcom/pantech/widget/SkySlide_Simple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/widget/SkySlide_Simple;->-set0(Lcom/pantech/widget/SkySlide_Simple;Z)Z

    .line 449
    return-void
.end method
