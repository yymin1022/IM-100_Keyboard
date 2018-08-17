.class Lcom/pantech/inputmethod/skyime/Edit$2;
.super Ljava/lang/Object;
.source "Edit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/Edit;->showOverlayPopup(Lcom/pantech/inputmethod/skyime/InputView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/Edit;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/Edit;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/Edit$2;->this$0:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Edit$2;->this$0:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->hideOverlayPopup()V

    .line 131
    return-void
.end method
