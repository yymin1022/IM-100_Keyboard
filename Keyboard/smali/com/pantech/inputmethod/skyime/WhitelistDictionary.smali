.class public Lcom/pantech/inputmethod/skyime/WhitelistDictionary;
.super Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.source "WhitelistDictionary.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWhitelistWords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->DBG:Z

    .line 33
    const-class v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 40
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;-><init>(Lcom/pantech/inputmethod/skyime/WhitelistDictionary;)V

    .line 49
    .local v0, "job":Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;, "Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;->runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/WhitelistDictionary;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/WhitelistDictionary;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->initWordlist([Ljava/lang/String;)V

    return-void
.end method

.method private initWordlist([Ljava/lang/String;)V
    .registers 12
    .param p1, "wordlist"    # [Ljava/lang/String;

    .prologue
    .line 53
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 54
    array-length v0, p1

    .line 55
    .local v0, "N":I
    rem-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_16

    .line 56
    sget-boolean v6, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_15

    .line 57
    sget-object v6, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The number of the whitelist is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_15
    :goto_15
    return-void

    .line 62
    :cond_16
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_15

    .line 63
    :try_start_19
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 64
    .local v5, "score":I
    add-int/lit8 v6, v4, 0x1

    aget-object v2, p1, v6

    .line 65
    .local v2, "before":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x2

    aget-object v1, p1, v6

    .line 66
    .local v1, "after":Ljava/lang/String;
    if-eqz v2, :cond_49

    if-eqz v1, :cond_49

    .line 67
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v5}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->addWord(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_49} :catch_4c

    .line 62
    :cond_49
    add-int/lit8 v4, v4, 0x3

    goto :goto_17

    .line 72
    .end local v1    # "after":Ljava/lang/String;
    .end local v2    # "before":Ljava/lang/String;
    .end local v5    # "score":I
    :catch_4c
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-boolean v6, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_15

    .line 74
    sget-object v6, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The score of the word is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method public getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "before"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_4

    .line 88
    :cond_3
    :goto_3
    return-object v1

    .line 81
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "lowerCaseBefore":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->DBG:Z

    if-eqz v1, :cond_30

    .line 84
    sget-object v1, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- found whitelistedWord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_30
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_3
.end method

.method public shouldForciblyAutoCorrectFrom(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    :cond_7
    :goto_7
    return v1

    .line 102
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "correction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method
