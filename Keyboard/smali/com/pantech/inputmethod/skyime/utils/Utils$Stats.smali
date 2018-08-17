.class public Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "typedWord"    # Ljava/lang/String;
    .param p1, "correctedWord"    # Ljava/lang/String;
    .param p2, "separatorCode"    # I

    .prologue
    .line 763
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    :goto_6
    return-void

    .line 765
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static onAutoCorrectionCancellation()V
    .registers 0

    .prologue
    .line 769
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnAutoCorrectionCancelled()V

    .line 770
    return-void
.end method

.method public static onNonSeparator(CII)V
    .registers 4
    .param p0, "code"    # C
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 750
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->push(CII)V

    .line 751
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnInputChar()V

    .line 752
    return-void
.end method

.method public static onSeparator(III)V
    .registers 5
    .param p0, "code"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 757
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;

    move-result-object v0

    int-to-char v1, p0

    invoke-virtual {v0, v1, p1, p2}, Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;->push(CII)V

    .line 758
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnInputSeparator()V

    .line 759
    return-void
.end method
