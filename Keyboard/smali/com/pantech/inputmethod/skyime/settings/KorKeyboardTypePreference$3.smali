.class Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;
.super Ljava/lang/Object;
.source "KorKeyboardTypePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

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
    .line 170
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-static {v0, p3}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->access$002(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)I

    .line 171
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->access$000(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->access$200(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)V

    .line 172
    return-void
.end method
