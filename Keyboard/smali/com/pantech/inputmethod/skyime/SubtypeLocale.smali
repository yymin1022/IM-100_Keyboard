.class public Lcom/pantech/inputmethod/skyime/SubtypeLocale;
.super Ljava/lang/Object;
.source "SubtypeLocale.java"


# static fields
.field private static sExceptionKeys:[Ljava/lang/String;

.field private static sExceptionValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "localeCode":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5
    sget-object v2, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 41
    sget-object v2, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 42
    sget-object v2, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->sExceptionValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 44
    :goto_18
    return-object v2

    .line 40
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 44
    :cond_1c
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    .line 35
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->sExceptionValues:[Ljava/lang/String;

    .line 36
    return-void
.end method
