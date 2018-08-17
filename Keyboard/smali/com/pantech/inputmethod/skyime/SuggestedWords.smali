.class public Lcom/pantech/inputmethod/skyime/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/pantech/inputmethod/skyime/SuggestedWords;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mAllowsToBeAutoCorrected:Z

.field public final mHasAutoCorrectionCandidate:Z

.field public final mIsObsoleteSuggestions:Z

.field public final mIsPrediction:Z

.field public final mIsPunctuationSuggestions:Z

.field private final mSuggestedWordInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypedWordValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    sput-object v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->EMPTY:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 30
    const-class v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZZZZZ)V
    .registers 8
    .param p2, "typedWordValid"    # Z
    .param p3, "hasAutoCorrectionCandidate"    # Z
    .param p4, "allowsToBeAutoCorrected"    # Z
    .param p5, "isPunctuationSuggestions"    # Z
    .param p6, "isObsoleteSuggestions"    # Z
    .param p7, "isPrediction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;ZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "suggestedWordInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    .line 48
    iput-boolean p2, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mTypedWordValid:Z

    .line 49
    iput-boolean p3, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    .line 50
    iput-boolean p4, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mAllowsToBeAutoCorrected:Z

    .line 51
    iput-boolean p5, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPunctuationSuggestions:Z

    .line 52
    iput-boolean p6, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsObsoleteSuggestions:Z

    .line 53
    iput-boolean p7, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPrediction:Z

    .line 54
    return-void
.end method

.method public static getFromApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "infos"    # [Landroid/view/inputmethod/CompletionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/inputmethod/CompletionInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/view/inputmethod/CompletionInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_26

    aget-object v2, v0, v1

    .line 95
    .local v2, "info":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 96
    new-instance v5, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7fffffff

    invoke-direct {v5, v6, v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 99
    .end local v2    # "info":Landroid/view/inputmethod/CompletionInfo;
    :cond_26
    return-object v4
.end method

.method public static getTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/SuggestedWords;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "typedWord"    # Ljava/lang/CharSequence;
    .param p1, "previousSuggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v0, "alreadySeen":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    const v7, 0x7fffffff

    invoke-direct {v6, p0, v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v4

    .line 111
    .local v4, "previousSize":I
    const/4 v1, 0x1

    .local v1, "pos":I
    :goto_21
    if-ge v1, v4, :cond_3c

    .line 112
    invoke-virtual {p1, v1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWordInfo(I)Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    move-result-object v3

    .line 113
    .local v3, "prevWordInfo":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    iget-object v6, v3, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "prevWord":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 116
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 120
    .end local v2    # "prevWord":Ljava/lang/String;
    .end local v3    # "prevWordInfo":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    :cond_3c
    return-object v5
.end method


# virtual methods
.method public getInfo(I)Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    return-object v0
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWordInfo(I)Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    return-object v0
.end method

.method public hasAutoCorrectionWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v1

    if-le v1, v0, :cond_10

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mTypedWordValid:Z

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public size()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuggestedWords: mTypedWordValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mTypedWordValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHasAutoCorrectionCandidate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowsToBeAutoCorrected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mAllowsToBeAutoCorrected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPunctuationSuggestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPunctuationSuggestions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " words="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willAutoCorrect()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mTypedWordValid:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
