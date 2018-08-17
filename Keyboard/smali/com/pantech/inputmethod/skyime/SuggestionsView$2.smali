.class Lcom/pantech/inputmethod/skyime/SuggestionsView$2;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 816
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1802(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z

    .line 820
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    .line 821
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$1902(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z

    .line 822
    return-void
.end method
