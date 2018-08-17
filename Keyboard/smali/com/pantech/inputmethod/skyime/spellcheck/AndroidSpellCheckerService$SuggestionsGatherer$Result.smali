.class public Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mHasRecommendedSuggestions:Z

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 3
    .param p1, "gatheredSuggestions"    # [Ljava/lang/String;
    .param p2, "hasRecommendedSuggestions"    # Z

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    .line 218
    iput-boolean p2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mHasRecommendedSuggestions:Z

    .line 219
    return-void
.end method
