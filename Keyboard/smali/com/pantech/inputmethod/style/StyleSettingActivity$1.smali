.class Lcom/pantech/inputmethod/style/StyleSettingActivity$1;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;
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
    .line 203
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 208
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 212
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_5a

    .line 213
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$002(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I

    .line 219
    :cond_35
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 223
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 226
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updateSeekbarOriginal()V

    .line 227
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v1, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$300(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    .line 228
    return-void

    .line 211
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method
