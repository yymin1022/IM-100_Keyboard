.class Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"

# interfaces
.implements Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsGatherer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    }
.end annotation


# instance fields
.field private mBestScore:I

.field private mBestSuggestion:Ljava/lang/String;

.field private mLength:I

.field private final mMaxLength:I

.field private final mOriginalText:Ljava/lang/String;

.field private final mRecommendedThreshold:F

.field private final mScores:[I

.field private final mSuggestionThreshold:F

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;FFI)V
    .registers 7
    .param p1, "originalText"    # Ljava/lang/String;
    .param p2, "suggestionThreshold"    # F
    .param p3, "recommendedThreshold"    # F
    .param p4, "maxLength"    # I

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    .line 233
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    .line 237
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    .line 238
    iput p2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:F

    .line 239
    iput p3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    .line 240
    iput p4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p4, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    .line 242
    iget v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    .line 243
    return-void
.end method


# virtual methods
.method public declared-synchronized addWord([CIIIII)Z
    .registers 16
    .param p1, "word"    # [C
    .param p2, "wordOffset"    # I
    .param p3, "wordLength"    # I
    .param p4, "score"    # I
    .param p5, "dicTypeId"    # I
    .param p6, "dataType"    # I

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v6, 0x0

    iget v7, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    invoke-static {v5, v6, v7, p4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    .line 251
    .local v3, "positionIndex":I
    if-ltz v3, :cond_18

    move v1, v3

    .line 253
    .local v1, "insertIndex":I
    :goto_d
    if-nez v1, :cond_1c

    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_6e

    if-lt v5, v6, :cond_1c

    .line 268
    const/4 v5, 0x1

    .line 298
    :goto_16
    monitor-exit p0

    return v5

    .line 251
    .end local v1    # "insertIndex":I
    :cond_18
    neg-int v5, v3

    add-int/lit8 v1, v5, -0x1

    goto :goto_d

    .line 270
    .restart local v1    # "insertIndex":I
    :cond_1c
    :try_start_1c
    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-lt v1, v5, :cond_22

    .line 273
    const/4 v5, 0x1

    goto :goto_16

    .line 278
    :cond_22
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 279
    .local v4, "wordString":Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v5, v4, p4}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 281
    .local v2, "normalizedScore":F
    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_35

    .line 283
    const/4 v5, 0x1

    goto :goto_16

    .line 286
    :cond_35
    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-ge v5, v6, :cond_59

    .line 287
    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    sub-int v0, v5, v1

    .line 288
    .local v0, "copyLen":I
    iget v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 289
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    add-int/lit8 v7, v1, 0x1

    invoke-static {v5, v1, v6, v7, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 290
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 296
    .end local v0    # "copyLen":I
    :goto_53
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    aput p4, v5, v1

    .line 298
    const/4 v5, 0x1

    goto :goto_16

    .line 292
    :cond_59
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 293
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_1c .. :try_end_6d} :catchall_6e

    goto :goto_53

    .line 248
    .end local v1    # "insertIndex":I
    .end local v2    # "normalizedScore":F
    .end local v3    # "positionIndex":I
    .end local v4    # "wordString":Ljava/lang/String;
    :catchall_6e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getResults(ILjava/util/Locale;)Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    .registers 13
    .param p1, "capitalizeType"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 304
    iget v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    if-nez v6, :cond_29

    .line 308
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "gatheredSuggestions":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 358
    .local v3, "hasRecommendedSuggestions":Z
    :goto_c
    new-instance v6, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    invoke-direct {v6, v2, v3}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;-><init>([Ljava/lang/String;Z)V

    return-object v6

    .line 312
    .end local v2    # "gatheredSuggestions":[Ljava/lang/String;
    .end local v3    # "hasRecommendedSuggestions":Z
    :cond_12
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v2

    .line 313
    .restart local v2    # "gatheredSuggestions":[Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    iget v9, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    invoke-static {v6, v8, v9}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v5

    .line 315
    .local v5, "normalizedScore":F
    iget v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_27

    .line 316
    .restart local v3    # "hasRecommendedSuggestions":Z
    :goto_26
    goto :goto_c

    .end local v3    # "hasRecommendedSuggestions":Z
    :cond_27
    move v3, v7

    .line 315
    goto :goto_26

    .line 326
    .end local v2    # "gatheredSuggestions":[Ljava/lang/String;
    .end local v5    # "normalizedScore":F
    :cond_29
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 327
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->removeDupes(Ljava/util/ArrayList;)V

    .line 328
    const/4 v6, 0x2

    if-ne v6, p1, :cond_57

    .line 329
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7a

    .line 332
    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 334
    .end local v4    # "i":I
    :cond_57
    if-ne v3, p1, :cond_7a

    .line 335
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5a
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7a

    .line 337
    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 343
    .end local v4    # "i":I
    :cond_7a
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 345
    .restart local v2    # "gatheredSuggestions":[Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget v8, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v8, v8, -0x1

    aget v0, v6, v8

    .line 346
    .local v0, "bestScore":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 347
    .local v1, "bestSuggestion":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v5

    .line 350
    .restart local v5    # "normalizedScore":F
    iget v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mRecommendedThreshold:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_a8

    .restart local v3    # "hasRecommendedSuggestions":Z
    :goto_a6
    goto/16 :goto_c

    .end local v3    # "hasRecommendedSuggestions":Z
    :cond_a8
    move v3, v7

    goto :goto_a6
.end method
