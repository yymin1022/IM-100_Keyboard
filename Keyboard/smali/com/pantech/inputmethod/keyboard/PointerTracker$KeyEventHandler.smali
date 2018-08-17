.class public interface abstract Lcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyEventHandler"
.end annotation


# virtual methods
.method public abstract getDrawingProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
.end method

.method public abstract getEditTouchProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$EditTouchProxy;
.end method

.method public abstract getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;
.end method

.method public abstract getKeyboardActionListener()Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
.end method

.method public abstract getTimerProxy()Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
.end method
