.class Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;
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
    name = "NextHistoryWord"
.end annotation


# instance fields
.field public final mFcp:Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

.field public final mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)V
    .registers 3
    .param p1, "word"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .param p2, "fcp"    # Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 127
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    .line 128
    return-void
.end method


# virtual methods
.method public getFcParams()Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    return-object v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->getFrequency()I

    move-result v0

    return v0
.end method

.method public getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mWord:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    return-object v0
.end method

.method public notifyTypedAgainAndGetFrequency()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;->mFcp:Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;->notifyTypedAgainAndGetFrequency()I

    move-result v0

    return v0
.end method
