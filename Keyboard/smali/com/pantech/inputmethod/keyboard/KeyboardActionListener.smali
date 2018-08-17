.class public interface abstract Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
    }
.end annotation


# static fields
.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1

.field public static final SUGGESTION_STRIP_COORDINATE:I = -0x2


# virtual methods
.method public abstract onCancelInput()V
.end method

.method public abstract onCodeInput(III)V
.end method

.method public abstract onCustomRequest(I)Z
.end method

.method public abstract onPress(IZ)V
.end method

.method public abstract onRelease(IZ)V
.end method

.method public abstract onTextInput(Ljava/lang/CharSequence;)V
.end method

.method public abstract playKeyEffect(I)V
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft(I)V
.end method

.method public abstract swipeRight(I)V
.end method

.method public abstract swipeUp()V
.end method
