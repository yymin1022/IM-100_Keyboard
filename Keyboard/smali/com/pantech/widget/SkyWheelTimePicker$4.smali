.class Lcom/pantech/widget/SkyWheelTimePicker$4;
.super Ljava/lang/Object;
.source "SkyWheelTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 269
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker$4;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 272
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker$4;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$4;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_e
    invoke-static {v1, v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z

    .line 273
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$4;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 274
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$4;->this$0:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->-wrap0(Lcom/pantech/widget/SkyWheelTimePicker;)V

    .line 270
    return-void

    .line 272
    :cond_1c
    const/4 v0, 0x1

    goto :goto_e
.end method
