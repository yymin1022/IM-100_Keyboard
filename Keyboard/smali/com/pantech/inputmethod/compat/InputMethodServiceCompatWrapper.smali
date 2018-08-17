.class public Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceCompatWrapper.java"


# static fields
.field public static final CAN_HANDLE_ON_CURRENT_INPUT_METHOD_SUBTYPE_CHANGED:Z


# instance fields
.field private mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

.field protected mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method

.method protected static setTouchableRegionCompat(Landroid/inputmethodservice/InputMethodService$Insets;IIII)V
    .registers 6
    .param p0, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 107
    const/4 v0, 0x3

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 108
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Region;->set(IIII)Z

    .line 109
    return-void
.end method


# virtual methods
.method public notifyOnCurrentInputMethodSubtypeChanged(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 4
    .param p1, "newSubtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    .line 83
    if-nez p1, :cond_11

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    .line 86
    .local v0, "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :goto_8
    if-eqz v0, :cond_10

    .line 87
    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isDummy()Z

    move-result v1

    if-nez v1, :cond_13

    .line 91
    :cond_10
    :goto_10
    return-void

    .end local v0    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_11
    move-object v0, p1

    .line 83
    goto :goto_8

    .line 89
    .restart local v0    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_13
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateSubtype(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_10
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 65
    invoke-static {}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 66
    return-void
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 100
    return-void
.end method

.method public showOptionDialogInternal(Landroid/app/AlertDialog;)V
    .registers 7
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    const/4 v4, 0x1

    .line 44
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 46
    .local v2, "windowToken":Landroid/os/IBinder;
    if-nez v2, :cond_10

    .line 60
    :goto_f
    return-void

    .line 48
    :cond_10
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 52
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 54
    const/16 v3, 0x3eb

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 58
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 59
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_f
.end method
