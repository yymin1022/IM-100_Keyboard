.class public interface abstract Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NextWord"
.end annotation


# virtual methods
.method public abstract getFcParams()Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
.end method

.method public abstract getFrequency()I
.end method

.method public abstract getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
.end method

.method public abstract notifyTypedAgainAndGetFrequency()I
.end method
