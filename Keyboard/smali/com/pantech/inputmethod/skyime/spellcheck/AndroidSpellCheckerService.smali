.class public Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;
.super Landroid/service/textservice/SpellCheckerService;
.source "AndroidSpellCheckerService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;,
        Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    }
.end annotation


# static fields
.field private static final APOSTROPHE:Ljava/lang/String; = "\u2019"

.field private static final CAPITALIZE_ALL:I = 0x2

.field private static final CAPITALIZE_FIRST:I = 0x1

.field private static final CAPITALIZE_NONE:I = 0x0

.field private static final DBG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final POOL_SIZE:I = 0x2

.field public static final PREF_USE_CONTACTS_KEY:Ljava/lang/String; = "pref_spellcheck_use_contacts"

.field public static final SCRIPT_CYRILLIC:I = 0x1

.field public static final SCRIPT_LATIN:I = 0x0

.field private static final SINGLE_QUOTE:Ljava/lang/String; = "\'"

.field private static final TAG:Ljava/lang/String;

.field private static final mLanguageToScript:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

.field private final mDictionaryCollectionsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/inputmethod/skyime/DictionaryCollection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDictionaryPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedThreshold:F

.field private mSuggestionThreshold:F

.field private mUseContactsDictionary:Z

.field private final mUseContactsLock:Ljava/lang/Object;

.field private mUserDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelistDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const-class v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    .line 108
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "en"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "fr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "de"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "nl"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "cs"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "es"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "it"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "hr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "pt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    const-string v1, "ru"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService;-><init>()V

    .line 74
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    .line 482
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .prologue
    .line 61
    iget v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mRecommendedThreshold:F

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)Lcom/pantech/inputmethod/skyime/Dictionary;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Lcom/pantech/inputmethod/skyime/Dictionary;)Lcom/pantech/inputmethod/skyime/Dictionary;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;
    .param p1, "x1"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Locale;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getScriptFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Landroid/view/textservice/SuggestionsInfo;
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Landroid/view/textservice/SuggestionsInfo;
    .registers 1

    .prologue
    .line 61
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .prologue
    .line 61
    iget v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:F

    return v0
.end method

.method private closeAllDictionaries()V
    .registers 7

    .prologue
    .line 369
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 370
    .local v3, "oldPools":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 371
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 372
    .local v4, "oldUserDictionaries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 373
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 374
    .local v5, "oldWhitelistDictionaries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 375
    new-instance v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;

    const-string v2, "spellchecker_close_dicts"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;-><init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->start()V

    .line 401
    return-void
.end method

.method private static getCapitalizationType(Ljava/lang/String;)I
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 467
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 479
    :cond_c
    :goto_c
    return v3

    .line 468
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 469
    .local v2, "len":I
    const/4 v0, 0x1

    .line 470
    .local v0, "capsCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_19

    .line 471
    if-eq v4, v0, :cond_1d

    if-eq v1, v0, :cond_1d

    .line 478
    :cond_19
    if-ne v4, v0, :cond_2e

    move v3, v4

    goto :goto_c

    .line 472
    :cond_1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_29

    add-int/lit8 v0, v0, 0x1

    .line 470
    :cond_29
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_13

    .line 479
    :cond_2e
    if-ne v2, v0, :cond_c

    const/4 v3, 0x2

    goto :goto_c
.end method

.method private getDictionaryPool(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    .registers 5
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    .line 405
    .local v1, "pool":Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    if-nez v1, :cond_19

    .line 406
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 407
    .local v0, "localeObject":Ljava/util/Locale;
    new-instance v1, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    .end local v1    # "pool":Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;-><init>(ILcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V

    .line 408
    .restart local v1    # "pool":Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v0    # "localeObject":Ljava/util/Locale;
    :cond_19
    return-object v1
.end method

.method private static getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .registers 3

    .prologue
    .line 207
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .registers 3

    .prologue
    .line 203
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method private static getScriptFromLocale(Ljava/util/Locale;)I
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 134
    sget-object v1, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mLanguageToScript:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "script":Ljava/lang/Integer;
    if-nez v0, :cond_31

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We have been called with an unsupported language: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". Framework bug?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startUsingContactsDictionaryLocked()V
    .registers 6

    .prologue
    .line 156
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    if-nez v3, :cond_f

    .line 159
    new-instance v3, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 165
    :cond_f
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 169
    .local v1, "dictRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    .line 170
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    if-nez v0, :cond_2d

    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 173
    :cond_2d
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->addDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    goto :goto_15

    .line 176
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    .end local v1    # "dictRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;"
    :cond_33
    return-void
.end method

.method private stopUsingContactsDictionaryLocked()V
    .registers 6

    .prologue
    .line 179
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    if-nez v4, :cond_5

    .line 195
    :goto_4
    return-void

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 182
    .local v0, "contactsDict":Lcom/pantech/inputmethod/skyime/Dictionary;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 183
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 185
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;>;"
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 187
    .local v2, "dictRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    .line 188
    .local v1, "dict":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    if-nez v1, :cond_28

    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 191
    :cond_28
    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->removeDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    goto :goto_10

    .line 194
    .end local v1    # "dict":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    .end local v2    # "dictRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/pantech/inputmethod/skyime/DictionaryCollection;>;"
    :cond_2c
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    goto :goto_4
.end method


# virtual methods
.method public createDictAndProximity(Ljava/util/Locale;)Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    .registers 13
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v10, 0x1

    .line 414
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getScriptFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 415
    .local v3, "script":I
    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo;->getProximityForScript(I)[I

    move-result-object v6

    const/16 v7, 0x10

    const/16 v8, 0xb

    const/4 v9, 0x3

    invoke-static {v6, v7, v8, v9}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->createSpellCheckerProximityInfo([IIII)Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    move-result-object v2

    .line 420
    .local v2, "proximityInfo":Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    invoke-static {p0, p1, v10}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    move-result-object v0

    .line 423
    .local v0, "dictionaryCollection":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "localeStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 425
    .local v4, "userDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    if-nez v4, :cond_2e

    .line 427
    new-instance v4, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;

    .end local v4    # "userDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-direct {v4, p0, v1, v10}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedUserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 431
    .restart local v4    # "userDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_2e
    invoke-virtual {v0, v4}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->addDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 434
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 435
    .local v5, "whitelistDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    if-nez v5, :cond_45

    .line 436
    new-instance v5, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    .end local v5    # "whitelistDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-direct {v5, p0, p1}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 437
    .restart local v5    # "whitelistDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_45
    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->addDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 440
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 441
    :try_start_4b
    iget-boolean v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    if-eqz v6, :cond_5e

    .line 442
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    if-nez v6, :cond_5e

    .line 449
    new-instance v6, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Lcom/pantech/inputmethod/skyime/SynchronouslyLoadedContactsBinaryDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 456
    :cond_5e
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    invoke-virtual {v0, v6}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->addDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 457
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mDictionaryCollectionsList:Ljava/util/HashSet;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_74

    .line 460
    new-instance v6, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;

    invoke-direct {v6, v0, v2}, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;-><init>(Lcom/pantech/inputmethod/skyime/Dictionary;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    return-object v6

    .line 459
    :catchall_74
    move-exception v6

    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v6
.end method

.method public createSession()Landroid/service/textservice/SpellCheckerService$Session;
    .registers 2

    .prologue
    .line 199
    new-instance v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;-><init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/service/textservice/SpellCheckerService;->onCreate()V

    .line 124
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:F

    .line 126
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mRecommendedThreshold:F

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    const-string v1, "pref_spellcheck_use_contacts"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "pref_spellcheck_use_contacts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 153
    :goto_8
    return-void

    .line 145
    :cond_9
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_c
    const-string v0, "pref_spellcheck_use_contacts"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    .line 147
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->mUseContactsDictionary:Z

    if-eqz v0, :cond_21

    .line 148
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->startUsingContactsDictionaryLocked()V

    .line 152
    :goto_1c
    monitor-exit v1

    goto :goto_8

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0

    .line 150
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->stopUsingContactsDictionaryLocked()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    goto :goto_1c
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->closeAllDictionaries()V

    .line 365
    const/4 v0, 0x0

    return v0
.end method
