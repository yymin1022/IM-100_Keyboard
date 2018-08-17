.class Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->layoutPunctuationSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;)V
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
    .line 496
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 501
    .local v1, "myWord":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 502
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    iget v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    if-ge v0, v2, :cond_1f

    .line 503
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$100(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 507
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e

    .line 508
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    :cond_29
    :goto_29
    const/4 v2, 0x0

    return v2

    .line 502
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 509
    :cond_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 510
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$100(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    iget v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_29
.end method
