.class Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SkyWheelNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method static synthetic -wrap0(Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setStep(Z)V
    .registers 2
    .param p1, "increment"    # Z

    .prologue
    .line 2295
    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2294
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-wrap1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)V

    .line 2301
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get6(Lcom/pantech/widget/SkyWheelNumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2299
    return-void
.end method
