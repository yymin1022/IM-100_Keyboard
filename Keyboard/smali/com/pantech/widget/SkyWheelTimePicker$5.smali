.class Lcom/pantech/widget/SkyWheelTimePicker$5;
.super Ljava/lang/Object;
.source "SkyWheelTimePicker.java"

# interfaces
.implements Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkyWheelTimePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyWheelTimePicker;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyWheelTimePicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelTimePicker;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/pantech/widget/SkyWheelNumberPicker;II)V
    .registers 6
    .param p1, "picker"    # Lcom/pantech/widget/SkyWheelNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap2(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 286
    invoke-virtual {p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->requestFocus()Z

    .line 287
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_13
    invoke-static {v1, v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z

    .line 288
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 289
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$5;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap0(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 284
    return-void

    .line 287
    :cond_21
    const/4 v0, 0x1

    goto :goto_13
.end method
