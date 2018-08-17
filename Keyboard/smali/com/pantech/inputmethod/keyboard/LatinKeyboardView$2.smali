.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$2;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2

    .prologue
    .line 439
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$2;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 443
    if-eqz p2, :cond_e

    .line 444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 445
    .local v1, "index":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 446
    .local v0, "id":I
    if-lez v0, :cond_e

    .line 447
    const/4 v2, 0x1

    .line 450
    .end local v0    # "id":I
    .end local v1    # "index":I
    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method
