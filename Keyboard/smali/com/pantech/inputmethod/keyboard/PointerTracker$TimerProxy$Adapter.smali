.class public Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/PointerTracker$TimerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelKeyTimers()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public cancelLongPressTimer()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 102
    return-void
.end method

.method public startLongPressTimer(JILcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 105
    return-void
.end method
