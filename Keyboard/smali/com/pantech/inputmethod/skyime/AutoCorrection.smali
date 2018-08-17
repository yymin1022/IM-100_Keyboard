.class public Lcom/pantech/inputmethod/skyime/AutoCorrection;
.super Ljava/lang/Object;
.source "AutoCorrection.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/AutoCorrection;->DBG:Z

    .line 30
    const-class v0, Lcom/pantech/inputmethod/skyime/AutoCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutoCorrection;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static allowsToBeAutoCorrected(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z
    .registers 6
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    const/4 v1, 0x1

    .line 99
    const-string v2, "whitelist"

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    .line 102
    .local v0, "whitelistDictionary":Lcom/pantech/inputmethod/skyime/WhitelistDictionary;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->shouldForciblyAutoCorrectFrom(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 106
    :cond_11
    :goto_11
    return v1

    :cond_12
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static computeAutoCorrectionWord(Ljava/util/concurrent/ConcurrentHashMap;Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "wordComposer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p3, "consideredWord"    # Ljava/lang/CharSequence;
    .param p4, "autoCorrectionThreshold"    # F
    .param p5, "whitelistedWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Lcom/pantech/inputmethod/skyime/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    .local p2, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    invoke-static {p5}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->hasAutoCorrectionForWhitelistedWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    .end local p5    # "whitelistedWord":Ljava/lang/CharSequence;
    :goto_6
    return-object p5

    .line 43
    .restart local p5    # "whitelistedWord":Ljava/lang/CharSequence;
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->hasAutoCorrectionForConsideredWord(Ljava/util/concurrent/ConcurrentHashMap;Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p5, p3

    .line 45
    goto :goto_6

    .line 46
    :cond_f
    invoke-static {p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->hasAutoCorrectionForBinaryDictionary(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;F)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget-object p5, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    goto :goto_6

    .line 50
    :cond_1f
    const/4 p5, 0x0

    goto :goto_6
.end method

.method public static getMaxFrequency(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;)I
    .registers 8
    .param p1, "word"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 81
    const/4 v3, -0x1

    .line 93
    :cond_7
    return v3

    .line 83
    :cond_8
    const/4 v3, -0x1

    .line 84
    .local v3, "maxFreq":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "key":Ljava/lang/String;
    const-string v5, "whitelist"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 86
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 87
    .local v0, "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    if-eqz v0, :cond_11

    .line 88
    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/Dictionary;->getFrequency(Ljava/lang/CharSequence;)I

    move-result v4

    .line 89
    .local v4, "tempFreq":I
    if-lt v4, v3, :cond_11

    .line 90
    move v3, v4

    goto :goto_11
.end method

.method private static hasAutoCorrectionForBinaryDictionary(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;F)Z
    .registers 12
    .param p0, "wordComposer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "consideredWord"    # Ljava/lang/CharSequence;
    .param p3, "autoCorrectionThreshold"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/inputmethod/skyime/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;",
            "Ljava/lang/CharSequence;",
            "F)Z"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v5

    if-le v5, v3, :cond_7e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7e

    .line 126
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 128
    .local v0, "autoCorrectionSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    iget v1, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    .line 131
    .local v1, "autoCorrectionSuggestionScore":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 134
    .local v2, "normalizedScore":F
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/AutoCorrection;->DBG:Z

    if-eqz v5, :cond_6e

    .line 135
    sget-object v5, Lcom/pantech/inputmethod/skyime/AutoCorrection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Normalized "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6e
    cmpl-float v5, v2, p3

    if-ltz v5, :cond_7e

    .line 140
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/AutoCorrection;->DBG:Z

    if-eqz v4, :cond_7d

    .line 141
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutoCorrection;->TAG:Ljava/lang/String;

    const-string v5, "Auto corrected by S-threshold."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "autoCorrectionSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .end local v1    # "autoCorrectionSuggestionScore":I
    .end local v2    # "normalizedScore":F
    :cond_7d
    :goto_7d
    return v3

    :cond_7e
    move v3, v4

    goto :goto_7d
.end method

.method private static hasAutoCorrectionForConsideredWord(Ljava/util/concurrent/ConcurrentHashMap;Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "wordComposer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p3, "consideredWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Lcom/pantech/inputmethod/skyime/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    .local p2, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 118
    :goto_8
    return v1

    :cond_9
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v2

    if-le v2, v0, :cond_1d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-static {p0, p3, v1}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->allowsToBeAutoCorrected(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_8

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method private static hasAutoCorrectionForWhitelistedWord(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "whiteListedWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z
    .registers 10
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    const/4 v4, 0x0

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 75
    :cond_7
    :goto_7
    return v4

    .line 58
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "lowerCasedWord":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "key":Ljava/lang/String;
    const-string v5, "whitelist"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 61
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 69
    .local v0, "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    if-eqz v0, :cond_1c

    .line 70
    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    if-eqz p2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 72
    :cond_46
    const/4 v4, 0x1

    goto :goto_7
.end method
