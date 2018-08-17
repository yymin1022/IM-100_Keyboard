.class Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCache"
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x32


# instance fields
.field private final mUnigramSuggestionsInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getSuggestionsFromCache(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;

    return-object v0
.end method

.method public putSuggestionsToCache(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 514
    if-eqz p2, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 518
    :cond_8
    :goto_8
    return-void

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    new-instance v1, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;

    invoke-direct {v1, p2, p3}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method
