.class Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;
.super Ljava/lang/Object;
.source "CustomPopupSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;->this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 275
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 271
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v3, 0x1

    .line 252
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;->this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 253
    .local v0, "okBtn":Landroid/widget/Button;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v1, v3, :cond_1b

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    :goto_1a
    return-void

    .line 263
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;->this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1a
.end method
