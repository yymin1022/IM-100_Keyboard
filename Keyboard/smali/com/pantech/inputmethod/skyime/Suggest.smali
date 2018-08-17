.class public Lcom/pantech/inputmethod/skyime/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final CORRECTION_FULL:I = 0x1

.field public static final CORRECTION_FULL_BIGRAM:I = 0x2

.field public static final CORRECTION_NONE:I = 0x0

.field private static final DBG:Z

.field public static final DICT_KEY_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final DICT_KEY_MAIN:Ljava/lang/String; = "main"

.field public static final DICT_KEY_USER:Ljava/lang/String; = "user"

.field public static final DICT_KEY_USER_HISTORY_BIGRAM:Ljava/lang/String; = "history_bigram"

.field public static final DICT_KEY_USER_HISTORY_UNIGRAM:Ljava/lang/String; = "history_unigram"

.field public static final DICT_KEY_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x6

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_HISTORY:I = 0x3

.field public static final DIC_USER_TYPED:I = 0x0

.field public static final DIC_WHITELIST:I = 0x6

.field private static final MINIMUM_SAFETY_NET_CHAR_LENGTH:I = 0x4

.field private static final PREF_MAX_BIGRAMS:I = 0x3c

.field public static final TAG:Ljava/lang/String;

.field private static final sEmptyWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;


# instance fields
.field private mAutoCorrectionThreshold:F

.field private final mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConsideredWord:Ljava/lang/CharSequence;

.field private mContactsDict:Lcom/pantech/inputmethod/skyime/Dictionary;

.field private mHasMainDictionary:Z

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mPrefMaxSuggestions:I

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTrailingSingleQuotesCount:I

.field private final mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListDictionary:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/Suggest;->TAG:Ljava/lang/String;

    .line 67
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/Suggest;->DBG:Z

    .line 219
    new-instance v0, Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/Suggest;->sEmptyWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    const/16 v0, 0xb4

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;JJLjava/util/Locale;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dictionary"    # Ljava/io/File;
    .param p3, "startOffset"    # J
    .param p5, "length"    # J
    .param p7, "locale"    # Ljava/util/Locale;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    const/16 v2, 0xb4

    iput v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 100
    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJZLjava/util/Locale;)Lcom/pantech/inputmethod/skyime/Dictionary;

    move-result-object v10

    .line 102
    .local v10, "mainDict":Lcom/pantech/inputmethod/skyime/Dictionary;
    if-eqz v10, :cond_48

    const/4 v2, 0x1

    :goto_32
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    .line 103
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "main"

    invoke-static {v2, v3, v10}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 104
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "main"

    invoke-static {v2, v3, v10}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 105
    move-object/from16 v0, p7

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 106
    return-void

    .line 102
    :cond_48
    const/4 v2, 0x0

    goto :goto_32
.end method

.method static synthetic access$002(Lcom/pantech/inputmethod/skyime/Suggest;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/Suggest;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/Suggest;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 3
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/skyime/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/Suggest;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dict"    # Lcom/pantech/inputmethod/skyime/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "dictionaries":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    if-nez p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object v0, v1

    .line 131
    .local v0, "oldDict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :goto_9
    if-eqz v0, :cond_10

    if-eq p2, v0, :cond_10

    .line 132
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    .line 134
    :cond_10
    return-void

    .line 128
    .end local v0    # "oldDict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_11
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object v0, v1

    goto :goto_9
.end method

.method private static capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "all"    # Z
    .param p1, "first"    # Z
    .param p2, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez p0, :cond_d

    if-nez p1, :cond_d

    :cond_b
    move-object v0, p2

    .line 212
    :cond_c
    :goto_c
    return-object v0

    .line 201
    :cond_d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 202
    .local v1, "wordLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/inputmethod/skyime/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2c

    .line 205
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 206
    :cond_2c
    if-eqz p1, :cond_c

    .line 207
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    if-le v1, v3, :cond_c

    .line 209
    invoke-interface {p2, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method private getAllBigrams(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/WordComposer;)V
    .registers 8
    .param p1, "prevWord"    # Ljava/lang/CharSequence;
    .param p2, "wordComposer"    # Lcom/pantech/inputmethod/skyime/WordComposer;

    .prologue
    .line 401
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->hasUpperCase(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 403
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "lowerPrevWord":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 405
    .local v0, "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0, p2, v2, p0}, Lcom/pantech/inputmethod/skyime/Dictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_1c

    .line 408
    .end local v0    # "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_2c
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 409
    .restart local v0    # "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0, p2, p1, p0}, Lcom/pantech/inputmethod/skyime/Dictionary;->getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_36

    .line 411
    .end local v0    # "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_46
    return-void
.end method

.method public static getApproxMaxWordLength()I
    .registers 1

    .prologue
    .line 165
    const/16 v0, 0x20

    return v0
.end method

.method private static getSuggestionsInfoListWithDebugInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 15
    .param p0, "typedWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    const/4 v12, 0x0

    .line 415
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 416
    .local v6, "typedWordInfo":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    const-string v7, "+"

    invoke-virtual {v6, v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->setDebugString(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 418
    .local v5, "suggestionsSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .local v4, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_60

    .line 424
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 425
    .local v0, "cur":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {p0, v7, v8}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->calcNormalizedScore(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v2

    .line 428
    .local v2, "normalizedScore":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_59

    .line 429
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "%d (%4.2f)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "scoreInfoString":Ljava/lang/String;
    :goto_50
    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->setDebugString(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 431
    .end local v3    # "scoreInfoString":Ljava/lang/String;
    :cond_59
    iget v7, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "scoreInfoString":Ljava/lang/String;
    goto :goto_50

    .line 436
    .end local v0    # "cur":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .end local v2    # "normalizedScore":F
    .end local v3    # "scoreInfoString":Ljava/lang/String;
    :cond_60
    return-object v4
.end method

.method private initAsynchronously(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;)V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 123
    return-void
.end method

.method private initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 113
    new-instance v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    invoke-direct {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mWhiteListDictionary:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    .line 114
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "whitelist"

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mWhiteListDictionary:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 115
    return-void
.end method

.method private resetMainDict(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    .line 138
    new-instance v0, Lcom/pantech/inputmethod/skyime/Suggest$1;

    const-string v1, "InitializeBinaryDictionary"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/pantech/inputmethod/skyime/Suggest$1;-><init>(Lcom/pantech/inputmethod/skyime/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Suggest$1;->start()V

    .line 148
    return-void
.end method

.method public static shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 9
    .param p0, "typedWord"    # Ljava/lang/String;
    .param p1, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 533
    .local v2, "typedWordLength":I
    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    move v3, v4

    .line 551
    :goto_9
    return v3

    .line 536
    :cond_a
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6f

    const/4 v3, 0x2

    :goto_e
    add-int/lit8 v1, v3, 0x1

    .line 538
    .local v1, "maxEditDistanceOfNativeDictionary":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/pantech/inputmethod/skyime/BinaryDictionary;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "distance":I
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/Suggest;->DBG:Z

    if-eqz v3, :cond_3e

    .line 540
    sget-object v3, Lcom/pantech/inputmethod/skyime/Suggest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autocorrected edit distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_3e
    if-le v0, v1, :cond_72

    .line 544
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/Suggest;->DBG:Z

    if-eqz v3, :cond_6d

    .line 545
    sget-object v3, Lcom/pantech/inputmethod/skyime/Suggest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safety net: before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v3, Lcom/pantech/inputmethod/skyime/Suggest;->TAG:Ljava/lang/String;

    const-string v4, "(Error) The edit distance of this correction exceeds limit. Turning off auto-correction."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_6d
    const/4 v3, 0x1

    goto :goto_9

    .line 536
    .end local v0    # "distance":I
    .end local v1    # "maxEditDistanceOfNativeDictionary":I
    :cond_6f
    div-int/lit8 v3, v2, 0x2

    goto :goto_e

    .restart local v0    # "distance":I
    .restart local v1    # "maxEditDistanceOfNativeDictionary":I
    :cond_72
    move v3, v4

    .line 551
    goto :goto_9
.end method


# virtual methods
.method public InitMainDict(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/Suggest;->initAsynchronously(Landroid/content/Context;Ljava/util/Locale;)V

    .line 110
    return-void
.end method

.method protected addBigramToSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;)V
    .registers 3
    .param p1, "bigram"    # Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public addWord([CIIIII)Z
    .registers 18
    .param p1, "word"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "score"    # I
    .param p5, "dicTypeId"    # I
    .param p6, "dataType"    # I

    .prologue
    .line 443
    move/from16 v3, p6

    .line 446
    .local v3, "dataTypeForLog":I
    const/4 v9, 0x1

    move/from16 v0, p6

    if-ne v0, v9, :cond_32

    .line 447
    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 448
    .local v8, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    const/16 v6, 0x3c

    .line 454
    .local v6, "prefMaxSuggestions":I
    :goto_b
    const/4 v5, 0x0

    .line 457
    .local v5, "pos":I
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mConsideredWord:Ljava/lang/CharSequence;

    invoke-static {v9, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 460
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2e

    .line 461
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 466
    .local v2, "currentHighestWord":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    iget-object v9, v2, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    invoke-static {v9, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v9

    if-eqz v9, :cond_2e

    iget v9, v2, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-gt p4, v9, :cond_2e

    .line 468
    const/4 v5, 0x1

    .line 484
    .end local v2    # "currentHighestWord":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    :cond_2e
    :goto_2e
    if-lt v5, v6, :cond_6c

    .line 485
    const/4 v9, 0x1

    .line 509
    :goto_31
    return v9

    .line 450
    .end local v5    # "pos":I
    .end local v6    # "prefMaxSuggestions":I
    .end local v8    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    :cond_32
    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 451
    .restart local v8    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    iget v6, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    .restart local v6    # "prefMaxSuggestions":I
    goto :goto_b

    .line 473
    .restart local v5    # "pos":I
    :cond_37
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v6, :cond_4d

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget v9, v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-lt v9, p4, :cond_4d

    .line 474
    const/4 v9, 0x1

    goto :goto_31

    .line 481
    .local v1, "curScore":I
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    .line 475
    .end local v1    # "curScore":I
    :cond_4d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2e

    .line 476
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget v1, v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    .line 477
    .restart local v1    # "curScore":I
    if-lt v1, p4, :cond_2e

    if-ne v1, p4, :cond_4b

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-virtual {v9}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->codePointCount()I

    move-result v9

    if-ge p3, v9, :cond_4b

    goto :goto_2e

    .line 488
    .end local v1    # "curScore":I
    :cond_6c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/inputmethod/skyime/Suggest;->getApproxMaxWordLength()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 490
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-boolean v9, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsAllUpperCase:Z

    if-eqz v9, :cond_97

    .line 491
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_89
    :goto_89
    iget v9, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_8d
    if-ltz v4, :cond_b3

    .line 501
    const/16 v9, 0x27

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v4, v4, -0x1

    goto :goto_8d

    .line 492
    .end local v4    # "i":I
    :cond_97
    iget-boolean v9, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v9, :cond_af

    .line 493
    aget-char v9, p1, p2

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    const/4 v9, 0x1

    if-le p3, v9, :cond_89

    .line 495
    add-int/lit8 v9, p2, 0x1

    add-int/lit8 v10, p3, -0x1

    invoke-virtual {v7, p1, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 498
    :cond_af
    invoke-virtual {v7, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 503
    .restart local v4    # "i":I
    :cond_b3
    new-instance v9, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-direct {v9, v7, p4}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 504
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v6, :cond_c7

    .line 505
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 509
    :goto_c4
    const/4 v9, 0x1

    goto/16 :goto_31

    .line 507
    :cond_c7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, p5

    invoke-static {v9, v0, v3}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onAddSuggestedWord(Ljava/lang/String;II)V

    goto :goto_c4
.end method

.method public close()V
    .registers 5

    .prologue
    .line 513
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 514
    .local v0, "dictionaries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/pantech/inputmethod/skyime/Dictionary;>;"
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 515
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 516
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 517
    .local v1, "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    goto :goto_1b

    .line 519
    .end local v1    # "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    .line 520
    return-void
.end method

.method public getBigramPredictions(Ljava/lang/CharSequence;)Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .registers 12
    .param p1, "prevWordForBigram"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 222
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsFirstCharCapitalized:Z

    .line 223
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsAllUpperCase:Z

    .line 224
    iput v2, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 228
    const-string v0, ""

    invoke-static {v0, v2, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onAddSuggestedWord(Ljava/lang/String;II)V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mConsideredWord:Ljava/lang/CharSequence;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 233
    sget-object v0, Lcom/pantech/inputmethod/skyime/Suggest;->sEmptyWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->getAllBigrams(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/WordComposer;)V

    .line 236
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 237
    .local v9, "insertCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_37
    if-ge v8, v9, :cond_47

    .line 238
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->addBigramToSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;)V

    .line 237
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 241
    :cond_47
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->removeDups(Ljava/util/ArrayList;)V

    .line 243
    new-instance v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    return-object v0
.end method

.method public getContactsDictionary()Lcom/pantech/inputmethod/skyime/Dictionary;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mContactsDict:Lcom/pantech/inputmethod/skyime/Dictionary;

    return-object v0
.end method

.method public getSuggestedWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/ProximityInfo;I)Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .registers 40
    .param p1, "wordComposer"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigram"    # Ljava/lang/CharSequence;
    .param p3, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    .param p4, "correctionMode"    # I

    .prologue
    .line 256
    invoke-static/range {p2 .. p2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isFirstCharCapitalized()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsFirstCharCapitalized:Z

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isAllUpperCase()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsAllUpperCase:Z

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->trailingSingleQuotesCount()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    .line 260
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v33

    .line 263
    .local v33, "typedWord":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    if-lez v5, :cond_a4

    const/4 v5, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    sub-int/2addr v6, v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "consideredWord":Ljava/lang/String;
    :goto_42
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v5, v6}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onAddSuggestedWord(Ljava/lang/String;II)V

    .line 268
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mConsideredWord:Ljava/lang/CharSequence;

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v5

    if-gtz v5, :cond_14e

    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_14e

    .line 272
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x3c

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 274
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/Suggest;->getAllBigrams(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/WordComposer;)V

    .line 276
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 279
    .local v30, "insertCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_8a
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_f5

    .line 280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/skyime/Suggest;->addBigramToSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;)V

    .line 279
    add-int/lit8 v28, v28, 0x1

    goto :goto_8a

    .end local v8    # "consideredWord":Ljava/lang/String;
    .end local v28    # "i":I
    .end local v30    # "insertCount":I
    :cond_a4
    move-object/from16 v8, v33

    .line 263
    goto :goto_42

    .line 284
    .restart local v8    # "consideredWord":Ljava/lang/String;
    :cond_a7
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 287
    .local v24, "currentChar":C
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v25

    .line 288
    .local v25, "currentCharUpper":C
    const/16 v23, 0x0

    .line 289
    .local v23, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 290
    .local v22, "bigramSuggestionSize":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_bc
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_f5

    .line 291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 292
    .local v20, "bigramSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->codePointAt(I)I

    move-result v5

    int-to-char v0, v5

    move/from16 v21, v0

    .line 294
    .local v21, "bigramSuggestionFirstChar":C
    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_e4

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_14a

    .line 296
    :cond_e4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/Suggest;->addBigramToSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;)V

    .line 297
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mPrefMaxSuggestions:I

    move/from16 v0, v23

    if-le v0, v5, :cond_14a

    .line 323
    .end local v20    # "bigramSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .end local v21    # "bigramSuggestionFirstChar":C
    .end local v22    # "bigramSuggestionSize":I
    .end local v23    # "count":I
    .end local v24    # "currentChar":C
    .end local v25    # "currentCharUpper":C
    .end local v28    # "i":I
    :cond_f5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsAllUpperCase:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mIsFirstCharCapitalized:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mWhiteListDictionary:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    invoke-virtual {v7, v8}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/pantech/inputmethod/skyime/Suggest;->capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 327
    .local v10, "whitelistedWord":Ljava/lang/CharSequence;
    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v5, v0, :cond_113

    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v5, v0, :cond_1be

    .line 328
    :cond_113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mAutoCorrectionThreshold:F

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->computeAutoCorrectionWord(Ljava/util/concurrent/ConcurrentHashMap;Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 332
    .local v19, "autoCorrection":Ljava/lang/CharSequence;
    if-eqz v19, :cond_1ba

    const/16 v27, 0x1

    .line 337
    .end local v19    # "autoCorrection":Ljava/lang/CharSequence;
    .local v27, "hasAutoCorrection":Z
    :goto_129
    if-eqz v10, :cond_1d6

    .line 338
    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    if-lez v5, :cond_265

    .line 339
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 340
    .local v32, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    add-int/lit8 v28, v5, -0x1

    .restart local v28    # "i":I
    :goto_13e
    if-ltz v28, :cond_1c2

    .line 341
    const/16 v5, 0x27

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v28, v28, -0x1

    goto :goto_13e

    .line 290
    .end local v10    # "whitelistedWord":Ljava/lang/CharSequence;
    .end local v27    # "hasAutoCorrection":Z
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "bigramSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .restart local v21    # "bigramSuggestionFirstChar":C
    .restart local v22    # "bigramSuggestionSize":I
    .restart local v23    # "count":I
    .restart local v24    # "currentChar":C
    .restart local v25    # "currentCharUpper":C
    :cond_14a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_bc

    .line 303
    .end local v20    # "bigramSuggestion":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    .end local v21    # "bigramSuggestionFirstChar":C
    .end local v22    # "bigramSuggestionSize":I
    .end local v23    # "count":I
    .end local v24    # "currentChar":C
    .end local v25    # "currentCharUpper":C
    .end local v28    # "i":I
    :cond_14e
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_f5

    .line 305
    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    if-lez v5, :cond_172

    .line 306
    new-instance v34, Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;-><init>(Lcom/pantech/inputmethod/skyime/WordComposer;)V

    .line 307
    .local v34, "wordComposerForLookup":Lcom/pantech/inputmethod/skyime/WordComposer;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mTrailingSingleQuotesCount:I

    add-int/lit8 v28, v5, -0x1

    .restart local v28    # "i":I
    :goto_16a
    if-ltz v28, :cond_174

    .line 308
    invoke-virtual/range {v34 .. v34}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 307
    add-int/lit8 v28, v28, -0x1

    goto :goto_16a

    .line 311
    .end local v28    # "i":I
    .end local v34    # "wordComposerForLookup":Lcom/pantech/inputmethod/skyime/WordComposer;
    :cond_172
    move-object/from16 v34, p1

    .line 314
    .restart local v34    # "wordComposerForLookup":Lcom/pantech/inputmethod/skyime/WordComposer;
    :cond_174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_180
    :goto_180
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 316
    .local v31, "key":Ljava/lang/String;
    const-string v5, "history_unigram"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_180

    const-string v5, "whitelist"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_180

    .line 318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 319
    .local v26, "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/Dictionary;->getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_180

    .line 332
    .end local v26    # "dictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Ljava/lang/String;
    .end local v34    # "wordComposerForLookup":Lcom/pantech/inputmethod/skyime/WordComposer;
    .restart local v10    # "whitelistedWord":Ljava/lang/CharSequence;
    .restart local v19    # "autoCorrection":Ljava/lang/CharSequence;
    :cond_1ba
    const/16 v27, 0x0

    goto/16 :goto_129

    .line 334
    .end local v19    # "autoCorrection":Ljava/lang/CharSequence;
    :cond_1be
    const/16 v27, 0x0

    .restart local v27    # "hasAutoCorrection":Z
    goto/16 :goto_129

    .line 343
    .restart local v28    # "i":I
    .restart local v32    # "sb":Ljava/lang/StringBuilder;
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v11, 0x7fffffff

    invoke-direct {v7, v9, v11}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 351
    .end local v28    # "i":I
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    :cond_1d6
    :goto_1d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    const v9, 0x7fffffff

    move-object/from16 v0, v33

    invoke-direct {v7, v0, v9}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->removeDups(Ljava/util/ArrayList;)V

    .line 355
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/Suggest;->DBG:Z

    if-eqz v5, :cond_277

    .line 356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lcom/pantech/inputmethod/skyime/Suggest;->getSuggestionsInfoListWithDebugInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 366
    .local v12, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    :goto_1fd
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isFirstCharCapitalized()Z

    move-result v6

    invoke-static {v5, v8, v6}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->allowsToBeAutoCorrected(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_27c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    if-eqz v5, :cond_27c

    const/4 v15, 0x1

    .line 375
    .local v15, "allowsToBeAutoCorrected":Z
    :goto_212
    move/from16 v14, v27

    .line 376
    .local v14, "autoCorrectionAvailable":Z
    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_21e

    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_222

    .line 377
    :cond_21e
    if-nez v15, :cond_27e

    const/4 v5, 0x1

    :goto_221
    or-int/2addr v14, v5

    .line 380
    :cond_222
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isMostlyCaps()Z

    move-result v5

    if-nez v5, :cond_280

    const/4 v5, 0x1

    :goto_229
    and-int/2addr v14, v5

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->isResumed()Z

    move-result v5

    if-nez v5, :cond_282

    const/4 v5, 0x1

    :goto_231
    and-int/2addr v14, v5

    .line 382
    if-eqz v15, :cond_256

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_256

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mAutoCorrectionThreshold:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_256

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    iget-object v5, v5, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lcom/pantech/inputmethod/skyime/Suggest;->shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_256

    .line 385
    const/4 v14, 0x0

    .line 387
    :cond_256
    new-instance v11, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    if-nez v15, :cond_284

    const/4 v13, 0x1

    :goto_25b
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    return-object v11

    .line 346
    .end local v12    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    .end local v14    # "autoCorrectionAvailable":Z
    .end local v15    # "allowsToBeAutoCorrected":Z
    :cond_265
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    const v9, 0x7fffffff

    invoke-direct {v7, v10, v9}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1d6

    .line 358
    :cond_277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/inputmethod/skyime/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .restart local v12    # "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    goto :goto_1fd

    .line 366
    :cond_27c
    const/4 v15, 0x0

    goto :goto_212

    .line 377
    .restart local v14    # "autoCorrectionAvailable":Z
    .restart local v15    # "allowsToBeAutoCorrected":Z
    :cond_27e
    const/4 v5, 0x0

    goto :goto_221

    .line 380
    :cond_280
    const/4 v5, 0x0

    goto :goto_229

    .line 381
    :cond_282
    const/4 v5, 0x0

    goto :goto_231

    .line 387
    :cond_284
    const/4 v13, 0x0

    goto :goto_25b
.end method

.method public getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/inputmethod/skyime/Dictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hasMainDictionary()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mHasMainDictionary:Z

    return v0
.end method

.method public setAutoCorrectionThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .prologue
    .line 195
    iput p1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mAutoCorrectionThreshold:F

    .line 196
    return-void
.end method

.method public setContactsDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 4
    .param p1, "contactsDictionary"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mContactsDict:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 183
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "contacts"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 184
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "contacts"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 185
    return-void
.end method

.method public setUserDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 4
    .param p1, "userDictionary"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "user"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 174
    return-void
.end method

.method public setUserHistoryDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 4
    .param p1, "userHistoryDictionary"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mUnigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "history_unigram"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 190
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/Suggest;->mBigramDictionaries:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "history_bigram"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/Suggest;->addOrReplaceDictionary(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 192
    return-void
.end method
