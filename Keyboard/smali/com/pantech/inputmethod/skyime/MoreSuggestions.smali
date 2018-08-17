.class public Lcom/pantech/inputmethod/skyime/MoreSuggestions;
.super Lcom/pantech/inputmethod/keyboard/Keyboard;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/MoreSuggestions$1;,
        Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAX_SUGGESTIONS:I = 0x48

.field public static final SUGGESTION_CODE_BASE:I = 0x400

.field public static mDividerWidth:I


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;)V
    .registers 2
    .param p1, "params"    # Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;Lcom/pantech/inputmethod/skyime/MoreSuggestions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;
    .param p2, "x1"    # Lcom/pantech/inputmethod/skyime/MoreSuggestions$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions;-><init>(Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;)V

    return-void
.end method
