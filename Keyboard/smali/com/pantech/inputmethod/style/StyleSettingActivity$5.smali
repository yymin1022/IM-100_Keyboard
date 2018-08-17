.class Lcom/pantech/inputmethod/style/StyleSettingActivity$5;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;->createCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 2

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 1555
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3f

    .line 1558
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1559
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1560
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1600(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    .line 1564
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1402(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)Z

    .line 1568
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 1570
    :cond_3f
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1571
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1573
    :cond_50
    return-void
.end method
