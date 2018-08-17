.class Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;
.super Ljava/lang/Object;
.source "KeyboardHeightControlPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->onCreate(Landroid/os/Bundle;)V
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
    .line 126
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 132
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$300(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1$1;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1$1;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_1a
    return-void
.end method
