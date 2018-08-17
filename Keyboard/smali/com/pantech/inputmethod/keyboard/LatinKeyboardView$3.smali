.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$3;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->onCreateMoreKeysPanel(Lcom/pantech/inputmethod/keyboard/Key;)Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
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
    .line 748
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$3;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$3;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    .line 751
    return-void
.end method

.method public onPress(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 769
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 772
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 754
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 766
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 757
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 760
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 763
    return-void
.end method
