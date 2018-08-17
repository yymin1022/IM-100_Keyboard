.class Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 411
    .local v1, "myWord":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 412
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    iget v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    if-ge v0, v2, :cond_1f

    .line 413
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$100(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 417
    :cond_1f
    const/4 v2, 0x0

    return v2

    .line 412
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
