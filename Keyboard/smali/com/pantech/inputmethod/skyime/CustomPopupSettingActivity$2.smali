.class Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;
.super Ljava/lang/Object;
.source "CustomPopupSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->addClickEventListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

.field final synthetic val$tempIndex:I


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;I)V
    .registers 3

    .prologue
    .line 212
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iput p2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->val$tempIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 219
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 222
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$400(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f10006a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$302(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 223
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$000(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "customList":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->val$tempIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$502(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$500(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 230
    new-instance v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$1;-><init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;)V

    .line 245
    .local v1, "spaceFilter":Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 248
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;

    invoke-direct {v3, p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$2;-><init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->this$0:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    iget v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->val$tempIndex:I

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->access$602(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;I)I

    .line 278
    return-void
.end method
