.class public Lcom/pantech/inputmethod/keyboard/KeyboardActionListener$Adapter;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public onCodeInput(III)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onCustomRequest(I)Z
    .registers 3
    .param p1, "requestCode"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IZ)V
    .registers 3
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onRelease(IZ)V
    .registers 3
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    return-void
.end method

.method public playKeyEffect(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 118
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public swipeLeft(I)V
    .registers 2
    .param p1, "inputMode"    # I

    .prologue
    .line 108
    return-void
.end method

.method public swipeRight(I)V
    .registers 2
    .param p1, "inputMode"    # I

    .prologue
    .line 105
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method
