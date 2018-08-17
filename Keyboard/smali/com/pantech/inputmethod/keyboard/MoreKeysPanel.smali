.class public interface abstract Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
.super Ljava/lang/Object;
.source "MoreKeysPanel.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;
    }
.end annotation


# virtual methods
.method public abstract setShifted(Z)V
.end method

.method public abstract showMoreKeysPanel(Landroid/view/View;Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;I)V
.end method

.method public abstract translateX(I)I
.end method

.method public abstract translateY(I)I
.end method
