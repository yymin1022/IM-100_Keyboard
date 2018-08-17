.class public interface abstract Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimerProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
    }
.end annotation


# virtual methods
.method public abstract cancelKeyTimers()V
.end method

.method public abstract cancelLongPressTimer()V
.end method

.method public abstract startKeyRepeatTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
.end method
