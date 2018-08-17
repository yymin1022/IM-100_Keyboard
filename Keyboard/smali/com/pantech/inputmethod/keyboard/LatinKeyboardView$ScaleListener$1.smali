.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener$1;
.super Landroid/os/Handler;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;)V
    .registers 2

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener$1;->this$1:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1586
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_c

    .line 1588
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener$1;->this$1:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;

    iget-object v0, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$ScaleListener;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1402(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Z)Z

    .line 1591
    :cond_c
    return-void
.end method
