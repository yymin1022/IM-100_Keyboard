.class public Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;
.super Ljava/lang/Object;
.source "PendingAttribute.java"


# instance fields
.field public final mAddress:I

.field public final mFrequency:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "frequency"    # I
    .param p2, "address"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;->mFrequency:I

    .line 30
    iput p2, p0, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;->mAddress:I

    .line 31
    return-void
.end method
