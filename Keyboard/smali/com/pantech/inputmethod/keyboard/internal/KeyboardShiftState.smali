.class public Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;
.super Ljava/lang/Object;
.source "KeyboardShiftState.java"


# static fields
.field private static final AUTO_SHIFTED:I = 0x3

.field private static final DEBUG:Z = false

.field private static final MANUAL_SHIFTED:I = 0x1

.field private static final MANUAL_SHIFTED_FROM_AUTO:I = 0x2

.field private static final NORMAL:I = 0x0

.field private static final SHIFT_LOCKED:I = 0x4

.field private static final SHIFT_LOCK_SHIFTED:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 129
    packed-switch p0, :pswitch_data_18

    .line 136
    const-string v0, "UKNOWN"

    :goto_5
    return-object v0

    .line 130
    :pswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    .line 131
    :pswitch_9
    const-string v0, "MANUAL_SHIFTED"

    goto :goto_5

    .line 132
    :pswitch_c
    const-string v0, "MANUAL_SHIFTED_FROM_AUTO"

    goto :goto_5

    .line 133
    :pswitch_f
    const-string v0, "AUTO_SHIFTED"

    goto :goto_5

    .line 134
    :pswitch_12
    const-string v0, "SHIFT_LOCKED"

    goto :goto_5

    .line 135
    :pswitch_15
    const-string v0, "SHIFT_LOCK_SHIFTED"

    goto :goto_5

    .line 129
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public isAutomaticTemporaryUpperCase()Z
    .registers 3

    .prologue
    .line 111
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isManualTemporaryUpperCase()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 115
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isShiftLockShifted()Z
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isShiftLocked()Z
    .registers 3

    .prologue
    .line 103
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAutomaticTemporaryUpperCase()V
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 93
    .local v0, "oldState":I
    const/4 v1, 0x3

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 96
    return-void
.end method

.method public setShiftLocked(Z)V
    .registers 4
    .param p1, "newShiftLockState"    # Z

    .prologue
    .line 68
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 69
    .local v0, "oldState":I
    if-eqz p1, :cond_c

    .line 70
    packed-switch v0, :pswitch_data_14

    .line 89
    :goto_7
    return-void

    .line 75
    :pswitch_8
    const/4 v1, 0x4

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_7

    .line 79
    :cond_c
    packed-switch v0, :pswitch_data_20

    goto :goto_7

    .line 82
    :pswitch_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_7

    .line 70
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 79
    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public setShifted(Z)Z
    .registers 6
    .param p1, "newShiftState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    .line 38
    .local v0, "oldState":I
    if-eqz p1, :cond_19

    .line 39
    packed-switch v0, :pswitch_data_26

    .line 64
    :goto_9
    :pswitch_9
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    if-eq v3, v0, :cond_24

    :goto_d
    return v1

    .line 41
    :pswitch_e
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_9

    .line 44
    :pswitch_11
    const/4 v3, 0x2

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_9

    .line 47
    :pswitch_15
    const/4 v3, 0x5

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_9

    .line 51
    :cond_19
    packed-switch v0, :pswitch_data_34

    :pswitch_1c
    goto :goto_9

    .line 55
    :pswitch_1d
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_9

    .line 58
    :pswitch_20
    const/4 v3, 0x4

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    goto :goto_9

    :cond_24
    move v1, v2

    .line 64
    goto :goto_d

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_11
        :pswitch_15
    .end packed-switch

    .line 51
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->mState:I

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
