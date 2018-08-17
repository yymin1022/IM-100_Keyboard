.class Lcom/pantech/inputmethod/skyime/SuggestionsView$6;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
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
    .line 1034
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$6;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$6;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$2400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z

    move-result v0

    return v0
.end method
