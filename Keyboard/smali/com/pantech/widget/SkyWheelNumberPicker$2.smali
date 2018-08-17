.class Lcom/pantech/widget/SkyWheelNumberPicker$2;
.super Ljava/lang/Object;
.source "SkyWheelNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkyWheelNumberPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$2;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 670
    if-eqz p2, :cond_d

    .line 671
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$2;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 669
    :goto_c
    return-void

    .line 673
    :cond_d
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$2;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 674
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$2;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-wrap4(Lcom/pantech/widget/SkyWheelNumberPicker;Landroid/view/View;)V

    goto :goto_c
.end method
