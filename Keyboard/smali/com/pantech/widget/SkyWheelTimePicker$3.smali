.class Lcom/pantech/widget/SkyWheelTimePicker$3;
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
    .line 230
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/pantech/widget/SkyWheelNumberPicker;II)V
    .registers 11
    .param p1, "spinner"    # Lcom/pantech/widget/SkyWheelNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap2(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 233
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->-get2(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMinValue()I

    move-result v1

    .line 234
    .local v1, "minValue":I
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->-get2(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMaxValue()I

    move-result v0

    .line 235
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_5a

    if-ne p3, v1, :cond_5a

    .line 236
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->-get0(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 237
    .local v2, "newHour":I
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_49

    const/16 v5, 0xc

    if-ne v2, v5, :cond_49

    .line 238
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v6, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v6}, Lcom/pantech/widget/SkyWheelTimePicker;->-get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z

    move-result v6

    if-eqz v6, :cond_58

    :goto_41
    invoke-static {v5, v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z

    .line 239
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 241
    :cond_49
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-get0(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 250
    .end local v2    # "newHour":I
    :cond_52
    :goto_52
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap0(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 231
    return-void

    .restart local v2    # "newHour":I
    :cond_58
    move v3, v4

    .line 238
    goto :goto_41

    .line 242
    .end local v2    # "newHour":I
    :cond_5a
    if-ne p2, v1, :cond_52

    if-ne p3, v0, :cond_52

    .line 243
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->-get0(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 244
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v5}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_88

    const/16 v5, 0xb

    if-ne v2, v5, :cond_88

    .line 245
    iget-object v5, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v6, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v6}, Lcom/pantech/widget/SkyWheelTimePicker;->-get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z

    move-result v6

    if-eqz v6, :cond_92

    :goto_80
    invoke-static {v5, v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z

    .line 246
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 248
    :cond_88
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker$3;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->-get0(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    goto :goto_52

    :cond_92
    move v3, v4

    .line 245
    goto :goto_80
.end method
