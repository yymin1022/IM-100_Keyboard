.class public Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/EditingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public final mCharsAfter:I

.field public final mCharsBefore:I

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "charsBefore"    # I
    .param p2, "charsAfter"    # I
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-ltz p1, :cond_7

    if-gez p2, :cond_d

    .line 124
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 126
    :cond_d
    iput p1, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsBefore:I

    .line 127
    iput p2, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsAfter:I

    .line 128
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mWord:Ljava/lang/String;

    .line 129
    return-void
.end method
