.class public Lcom/pantech/inputmethod/skyime/MoreKeyboard;
.super Lcom/pantech/inputmethod/keyboard/Keyboard;
.source "MoreKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/MoreKeyboard$1;,
        Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final SUGGESTION_CODE_BASE:I = 0x400


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;)V
    .registers 2
    .param p1, "params"    # Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;Lcom/pantech/inputmethod/skyime/MoreKeyboard$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;
    .param p2, "x1"    # Lcom/pantech/inputmethod/skyime/MoreKeyboard$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/MoreKeyboard;-><init>(Lcom/pantech/inputmethod/skyime/MoreKeyboard$Builder$MoreSuggestionsParam;)V

    return-void
.end method
