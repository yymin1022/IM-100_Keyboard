.class public Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;
.super Ljava/lang/Object;
.source "ModifierKeyState.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final MOMENTARY:I = 0x2

.field protected static final PRESSING:I = 0x1

.field protected static final RELEASING:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "ModifierKeyState"


# instance fields
.field protected final mName:Ljava/lang/String;

.field protected mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 35
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public isMomentary()Z
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPressing()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReleasing()Z
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onOtherKeyPressed()V
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 54
    .local v0, "oldState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 55
    const/4 v1, 0x2

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 58
    :cond_8
    return-void
.end method

.method public onPress()V
    .registers 3

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 40
    .local v0, "oldState":I
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 43
    return-void
.end method

.method public onRelease()V
    .registers 3

    .prologue
    .line 46
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 47
    .local v0, "oldState":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->mState:I

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_10

    .line 82
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 79
    :pswitch_6
    const-string v0, "RELEASING"

    goto :goto_5

    .line 80
    :pswitch_9
    const-string v0, "PRESSING"

    goto :goto_5

    .line 81
    :pswitch_c
    const-string v0, "MOMENTARY"

    goto :goto_5

    .line 78
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
