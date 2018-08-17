.class public abstract Lcom/pantech/inputmethod/skyime/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    }
.end annotation


# static fields
.field public static final BIGRAM:I = 0x1

.field protected static final FULL_WORD_SCORE_MULTIPLIER:I = 0x2

.field public static final NOT_A_PROBABILITY:I = -0x1

.field public static final UNIGRAM:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 4
    .param p1, "composer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 79
    return-void
.end method

.method public getFrequency(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .registers 8
    .param p1, "word"    # [C
    .param p2, "length"    # I
    .param p3, "typedWord"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p2, :cond_8

    .line 109
    :cond_7
    :goto_7
    return v1

    .line 104
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p2, :cond_16

    .line 105
    aget-char v2, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_7

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 109
    :cond_16
    const/4 v1, 0x1

    goto :goto_7
.end method
