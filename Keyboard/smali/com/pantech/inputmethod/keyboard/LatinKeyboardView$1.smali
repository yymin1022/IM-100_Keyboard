.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 430
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$1;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1000(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;Z)V

    .line 433
    return-void
.end method
