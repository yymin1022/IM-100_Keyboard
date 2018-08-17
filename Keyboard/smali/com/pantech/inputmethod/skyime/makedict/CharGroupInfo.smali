.class public Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
.super Ljava/lang/Object;
.source "CharGroupInfo.java"


# instance fields
.field public final mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public final mCharacters:[I

.field public final mChildrenAddress:I

.field public final mEndAddress:I

.field public final mFlags:I

.field public final mFrequency:I

.field public final mOriginalAddress:I

.field public final mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III[IIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "originalAddress"    # I
    .param p2, "endAddress"    # I
    .param p3, "flags"    # I
    .param p4, "characters"    # [I
    .param p5, "frequency"    # I
    .param p6, "childrenAddress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p7, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .local p8, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mOriginalAddress:I

    .line 42
    iput p2, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mEndAddress:I

    .line 43
    iput p3, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mFlags:I

    .line 44
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    .line 45
    iput p5, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mFrequency:I

    .line 46
    iput p6, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    .line 47
    iput-object p7, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mShortcutTargets:Ljava/util/ArrayList;

    .line 48
    iput-object p8, p0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    .line 49
    return-void
.end method
