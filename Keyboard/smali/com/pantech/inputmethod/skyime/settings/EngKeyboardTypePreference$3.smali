.class Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;
.super Ljava/lang/Object;
.source "EngKeyboardTypePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-static {v0, p3}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->access$002(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)I

    .line 155
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->access$000(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->access$200(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)V

    .line 156
    return-void
.end method
