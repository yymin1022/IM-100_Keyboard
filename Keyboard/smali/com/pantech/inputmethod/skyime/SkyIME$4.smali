.class Lcom/pantech/inputmethod/skyime/SkyIME$4;
.super Ljava/lang/Object;
.source "SkyIME.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;->setInputView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$4;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    .line 1114
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$4;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1300(Lcom/pantech/inputmethod/skyime/SkyIME;Z)V

    .line 1116
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$4;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->playKeyEffect(I)V

    .line 1117
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$4;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1400(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 1119
    :cond_16
    return v1
.end method
