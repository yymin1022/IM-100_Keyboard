.class Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;
.super Ljava/lang/Object;
.source "KeyboardHeightControlPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    iget-object v3, v3, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$200(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    iget-object v3, v3, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;->this$1:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    iget-object v4, v4, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 204
    return-void
.end method
