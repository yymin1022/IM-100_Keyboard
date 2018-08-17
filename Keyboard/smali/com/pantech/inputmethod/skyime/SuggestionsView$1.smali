.class Lcom/pantech/inputmethod/skyime/SuggestionsView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V
    .registers 2

    .prologue
    .line 765
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$500(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$600(Lcom/pantech/inputmethod/skyime/SuggestionsView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$700(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_30

    .line 772
    :cond_30
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x1

    .line 777
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v0

    .line 778
    .local v0, "width":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$802(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z

    .line 779
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    float-to-int v2, p3

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$912(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I

    .line 780
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v1

    if-gez v1, :cond_20

    .line 781
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1102(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I

    .line 783
    :cond_20
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3a

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1200(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v2

    if-le v1, v2, :cond_3a

    .line 784
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    float-to-int v2, p3

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1420(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I

    .line 787
    :cond_3a
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1600(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1502(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I

    .line 788
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    .line 789
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    .line 790
    return v3
.end method
