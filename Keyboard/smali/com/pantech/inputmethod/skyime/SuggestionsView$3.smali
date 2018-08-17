.class Lcom/pantech/inputmethod/skyime/SuggestionsView$3;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;->setListener(Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;Landroid/view/View;)V
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
    .line 883
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 888
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 889
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1802(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z

    .line 890
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2100(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2200(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z

    .line 893
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1902(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z

    .line 894
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->playKeyEffect(I)V

    .line 896
    :cond_34
    return v2
.end method
