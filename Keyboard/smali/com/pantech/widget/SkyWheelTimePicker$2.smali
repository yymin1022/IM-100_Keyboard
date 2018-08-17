.class Lcom/pantech/widget/SkyWheelTimePicker$2;
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
    .line 198
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/pantech/widget/SkyWheelNumberPicker;II)V
    .registers 7
    .param p1, "spinner"    # Lcom/pantech/widget/SkyWheelNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 200
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap2(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 201
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_28

    .line 202
    if-ne p2, v1, :cond_2e

    if-ne p3, v2, :cond_2e

    .line 204
    :goto_15
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_20
    invoke-static {v1, v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z

    .line 205
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 208
    :cond_28
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$2;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap0(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 199
    return-void

    .line 203
    :cond_2e
    if-ne p2, v2, :cond_28

    if-ne p3, v1, :cond_28

    goto :goto_15

    .line 204
    :cond_33
    const/4 v0, 0x1

    goto :goto_20
.end method
