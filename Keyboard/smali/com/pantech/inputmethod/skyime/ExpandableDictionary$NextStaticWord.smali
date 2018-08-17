.class Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"

# interfaces
.implements Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextStaticWord"
.end annotation


# instance fields
.field private final mFrequency:I

.field public final mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;I)V
    .registers 3
    .param p1, "word"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .param p2, "frequency"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;->mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 97
    iput p2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;->mFrequency:I

    .line 98
    return-void
.end method


# virtual methods
.method public getFcParams()Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;->mFrequency:I

    return v0
.end method

.method public getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;->mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    return-object v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;->mFrequency:I

    return v0
.end method
