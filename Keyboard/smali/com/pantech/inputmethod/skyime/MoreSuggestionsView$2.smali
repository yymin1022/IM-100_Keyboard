.class Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;
.super Ljava/lang/Object;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    return-object v0
.end method

.method public getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$100(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView$2;->this$0:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$200(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 241
    invoke-static {}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->access$300()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    return-object v0
.end method
