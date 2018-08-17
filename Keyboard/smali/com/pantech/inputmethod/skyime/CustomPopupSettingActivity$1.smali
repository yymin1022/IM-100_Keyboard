.class Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;
.super Ljava/lang/Object;
.source "CustomPopupSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 82
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 88
    const/4 v1, -0x1

    if-ne p2, v1, :cond_42

    .line 90
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$000(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "edittext_preference"

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$100(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)V

    .line 98
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$200(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 104
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_42
    return-void
.end method
