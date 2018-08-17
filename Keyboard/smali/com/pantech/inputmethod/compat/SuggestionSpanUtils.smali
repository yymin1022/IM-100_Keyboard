.class public Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;
.super Ljava/lang/Object;
.source "SuggestionSpanUtils.java"


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field private static final CLASS_SuggestionSpan:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

.field public static final FIELD_FLAG_EASY_CORRECT:Ljava/lang/reflect/Field;

.field public static final FIELD_FLAG_MISSPELLED:Ljava/lang/reflect/Field;

.field public static final FIELD_SUGGESTIONS_MAX_SIZE:Ljava/lang/reflect/Field;

.field private static final INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

.field public static final OBJ_FLAG_EASY_CORRECT:Ljava/lang/Integer;

.field public static final OBJ_FLAG_MISSPELLED:Ljava/lang/Integer;

.field public static final OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

.field public static final SUGGESTION_SPAN_IS_SUPPORTED:Z

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 36
    const-class v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "android.text.style.SuggestionSpan"

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v3, Ljava/util/Locale;

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Class;

    aput-object v4, v0, v3

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    .line 49
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->INPUT_TYPE_SuggestionSpan:[Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    .line 51
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "FLAG_EASY_CORRECT"

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_EASY_CORRECT:Ljava/lang/reflect/Field;

    .line 53
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "FLAG_MISSPELLED"

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_MISSPELLED:Ljava/lang/reflect/Field;

    .line 55
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "FLAG_AUTO_CORRECTION"

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

    .line 57
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    const-string v3, "SUGGESTIONS_MAX_SIZE"

    invoke-static {v0, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_SUGGESTIONS_MAX_SIZE:Ljava/lang/reflect/Field;

    .line 59
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_EASY_CORRECT:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_EASY_CORRECT:Ljava/lang/Integer;

    .line 61
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_MISSPELLED:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_MISSPELLED:Ljava/lang/Integer;

    .line 63
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_FLAG_AUTO_CORRECTION:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    .line 65
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->FIELD_SUGGESTIONS_MAX_SIZE:Ljava/lang/reflect/Field;

    invoke-static {v5, v5, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

    .line 69
    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CLASS_SuggestionSpan:Ljava/lang/Class;

    if-eqz v0, :cond_b4

    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_b4

    move v0, v1

    :goto_92
    sput-boolean v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->SUGGESTION_SPAN_IS_SUPPORTED:Z

    .line 71
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v0, :cond_b6

    .line 72
    sget-boolean v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->SUGGESTION_SPAN_IS_SUPPORTED:Z

    if-eqz v0, :cond_b6

    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_MISSPELLED:Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_EASY_CORRECT:Ljava/lang/Integer;

    if-nez v0, :cond_b6

    .line 75
    :cond_ac
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Field is accidentially null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b4
    move v0, v2

    .line 69
    goto :goto_92

    .line 78
    :cond_b6
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_MISSPELLED:Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_EASY_CORRECT:Ljava/lang/Integer;

    if-nez v3, :cond_1c

    .line 103
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_1b
    :goto_1b
    return-object p1

    .line 91
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1c
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_54

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    move-object v1, v3

    .line 93
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_24
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    const/4 v3, 0x2

    new-array v4, v5, [Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_FLAG_AUTO_CORRECTION:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-class v4, Lcom/pantech/inputmethod/skyime/SuggestionSpanPickedNotificationReceiver;

    aput-object v4, v0, v3

    .line 96
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "ss":Ljava/lang/Object;
    if-nez v2, :cond_5a

    .line 98
    sget-object v3, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->TAG:Ljava/lang/String;

    const-string v4, "Suggestion span was not created."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 91
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "ss":Ljava/lang/Object;
    :cond_54
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 101
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "spannable":Landroid/text/Spannable;
    .restart local v2    # "ss":Ljava/lang/Object;
    :cond_5a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    .line 103
    goto :goto_1b
.end method

.method public static getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)Ljava/lang/CharSequence;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pickedWord"    # Ljava/lang/CharSequence;
    .param p2, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p3, "dictionaryAvailable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 108
    if-eqz p3, :cond_21

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    sget-object v7, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_21

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v7

    if-eqz v7, :cond_21

    iget-boolean v7, p2, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPrediction:Z

    if-nez v7, :cond_21

    iget-boolean v7, p2, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPunctuationSuggestions:Z

    if-nez v7, :cond_21

    sget-object v7, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

    if-nez v7, :cond_22

    .line 146
    .end local p1    # "pickedWord":Ljava/lang/CharSequence;
    :cond_21
    :goto_21
    return-object p1

    .line 117
    .restart local p1    # "pickedWord":Ljava/lang/CharSequence;
    :cond_22
    instance-of v7, p1, Landroid/text/Spannable;

    if-eqz v7, :cond_77

    move-object v3, p1

    .line 118
    check-cast v3, Landroid/text/Spannable;

    .line 122
    .local v3, "spannable":Landroid/text/Spannable;
    :goto_29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v5, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, "sameAsTyped":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v7

    if-ge v1, v7, :cond_42

    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->OBJ_SUGGESTIONS_MAX_SIZE:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v7, v8, :cond_7d

    .line 138
    :cond_42
    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v0, v7

    const/4 v7, 0x2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-class v8, Lcom/pantech/inputmethod/skyime/SuggestionSpanPickedNotificationReceiver;

    aput-object v8, v0, v7

    .line 141
    .local v0, "args":[Ljava/lang/Object;
    sget-object v7, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->CONSTRUCTOR_SuggestionSpan:Ljava/lang/reflect/Constructor;

    invoke-static {v7, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 142
    .local v4, "ss":Ljava/lang/Object;
    if-eqz v4, :cond_21

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v3, v4, v9, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v3

    .line 146
    goto :goto_21

    .line 120
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "sameAsTyped":Z
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "ss":Ljava/lang/Object;
    .end local v5    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_77
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v3    # "spannable":Landroid/text/Spannable;
    goto :goto_29

    .line 128
    .restart local v1    # "i":I
    .restart local v2    # "sameAsTyped":Z
    .restart local v5    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7d
    invoke-virtual {p2, v1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 129
    .local v6, "word":Ljava/lang/CharSequence;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_91

    .line 130
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 131
    :cond_91
    if-nez v1, :cond_8e

    .line 132
    const/4 v2, 0x1

    goto :goto_8e
.end method
