.class Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsParams"
.end annotation


# instance fields
.field public final mFlags:I

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .registers 3
    .param p1, "suggestions"    # [Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    .line 499
    iput p2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;->mFlags:I

    .line 500
    return-void
.end method
