.class public Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/EditingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedWord"
.end annotation


# instance fields
.field public final mEnd:I

.field public final mStart:I

.field public final mWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p1, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;->mStart:I

    .line 235
    iput p2, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;->mEnd:I

    .line 236
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    .line 237
    return-void
.end method
