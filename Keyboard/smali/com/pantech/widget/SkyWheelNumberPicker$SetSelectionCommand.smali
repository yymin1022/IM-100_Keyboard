.class Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method static synthetic -set0(Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;I)I
    .registers 2

    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method

.method static synthetic -set1(Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;I)I
    .registers 2

    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2268
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_e

    .line 2269
    return-void

    .line 2272
    :cond_e
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2273
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2275
    .local v0, "len":I
    if-gtz v0, :cond_23

    .line 2276
    return-void

    .line 2279
    :cond_23
    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionStart:I

    if-lt v0, v2, :cond_2b

    iget v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    if-ge v0, v2, :cond_2f

    .line 2280
    :cond_2b
    iput v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 2281
    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2284
    :cond_2f
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get5(Lcom/pantech/widget/SkyWheelNumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 2266
    return-void
.end method
