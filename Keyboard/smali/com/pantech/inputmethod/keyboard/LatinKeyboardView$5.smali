.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

.field final synthetic val$closeButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;->val$closeButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 1416
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1200(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Z

    .line 1421
    :cond_d
    :goto_d
    return v1

    .line 1417
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 1418
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1300(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;->playKeyEffect(I)V

    .line 1419
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$5;->val$closeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_d
.end method
