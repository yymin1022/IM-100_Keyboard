.class Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;
.super Ljava/lang/Object;
.source "CustomPopupSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->createCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 288
    const/4 v1, -0x1

    if-ne p2, v1, :cond_27

    .line 290
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "newSymbol":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$700(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$800(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)[Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$600(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .end local v0    # "newSymbol":Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_34

    .line 299
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 300
    :cond_34
    return-void
.end method
