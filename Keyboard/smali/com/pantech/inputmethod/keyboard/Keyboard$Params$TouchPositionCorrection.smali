.class public Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPositionCorrection"
.end annotation


# static fields
.field private static final TOUCH_POSITION_CORRECTION_RECORD_SIZE:I = 0x3


# instance fields
.field public mEnabled:Z

.field public mRadii:[F

.field public mXs:[F

.field public mYs:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mEnabled:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    array-length v0, v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    array-length v0, v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    array-length v0, v0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public load([Ljava/lang/String;)V
    .registers 11
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 500
    array-length v0, p1

    .line 501
    .local v0, "dataLength":I
    rem-int/lit8 v7, v0, 0x3

    if-eqz v7, :cond_12

    .line 502
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v7, :cond_56

    .line 503
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "the size of touch position correction data is invalid"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 508
    :cond_12
    div-int/lit8 v4, v0, 0x3

    .line 509
    .local v4, "length":I
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    .line 510
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    .line 511
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    .line 513
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_56

    .line 514
    :try_start_23
    rem-int/lit8 v5, v2, 0x3

    .line 515
    .local v5, "type":I
    div-int/lit8 v3, v2, 0x3

    .line 516
    .local v3, "index":I
    aget-object v7, p1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 517
    .local v6, "value":F
    if-nez v5, :cond_36

    .line 518
    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    aput v6, v7, v3

    .line 513
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 519
    :cond_36
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4b

    .line 520
    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    aput v6, v7, v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_3d} :catch_3e

    goto :goto_33

    .line 525
    .end local v3    # "index":I
    .end local v5    # "type":I
    .end local v6    # "value":F
    :catch_3e
    move-exception v1

    .line 526
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v7, :cond_50

    .line 527
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "the number format for touch position correction data is invalid"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 522
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "index":I
    .restart local v5    # "type":I
    .restart local v6    # "value":F
    :cond_4b
    :try_start_4b
    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    aput v6, v7, v3
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_4f} :catch_3e

    goto :goto_33

    .line 530
    .end local v3    # "index":I
    .end local v5    # "type":I
    .end local v6    # "value":F
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_50
    iput-object v8, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mXs:[F

    .line 531
    iput-object v8, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mYs:[F

    .line 532
    iput-object v8, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mRadii:[F

    .line 534
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "i":I
    .end local v4    # "length":I
    :cond_56
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;->mEnabled:Z

    .line 538
    return-void
.end method
