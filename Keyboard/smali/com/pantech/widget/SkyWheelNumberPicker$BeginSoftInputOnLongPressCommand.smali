.class Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-wrap3(Lcom/pantech/widget/SkyWheelNumberPicker;)V

    .line 2331
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set2(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2329
    return-void
.end method
