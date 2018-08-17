.class public Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
.super Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;
.source "ShiftKeyState.java"


# static fields
.field private static final IGNORING:I = 0x4

.field private static final PRESSING_ON_SHIFTED:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public isIgnoring()Z
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPressingOnShifted()Z
    .registers 3

    .prologue
    .line 49
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onOtherKeyPressed()V
    .registers 3

    .prologue
    .line 31
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    .line 32
    .local v0, "oldState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 33
    const/4 v1, 0x2

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    .line 39
    :cond_8
    :goto_8
    return-void

    .line 34
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 35
    const/4 v1, 0x4

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    goto :goto_8
.end method

.method public onPressOnShifted()V
    .registers 3

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    .line 43
    .local v0, "oldState":I
    const/4 v1, 0x3

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->mState:I

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_e

    .line 66
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 64
    :pswitch_8
    const-string v0, "PRESSING_ON_SHIFTED"

    goto :goto_7

    .line 65
    :pswitch_b
    const-string v0, "IGNORING"

    goto :goto_7

    .line 63
    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
