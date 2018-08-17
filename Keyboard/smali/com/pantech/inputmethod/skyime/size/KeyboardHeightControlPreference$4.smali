.class Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;
.super Ljava/lang/Object;
.source "KeyboardHeightControlPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->showPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 261
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$100(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 265
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$800(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$700(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;I)V

    .line 266
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$100(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x800053

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$900(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$200(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 269
    :cond_37
    return-void
.end method
