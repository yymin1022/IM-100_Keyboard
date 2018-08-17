.class Lcom/pantech/widget/SkySlideTheme$1;
.super Ljava/util/TimerTask;
.source "SkySlideTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkySlideTheme;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkySlideTheme;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkySlideTheme;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkySlideTheme;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/pantech/widget/SkySlideTheme$1;->this$0:Lcom/pantech/widget/SkySlideTheme;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/pantech/widget/SkySlideTheme$1;->this$0:Lcom/pantech/widget/SkySlideTheme;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->-set0(Lcom/pantech/widget/SkySlideTheme;Z)Z

    .line 622
    return-void
.end method
