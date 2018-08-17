.class public Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;
    }
.end annotation


# static fields
.field public static final LOCALE_ANY_MATCH:I = 0xa

.field public static final LOCALE_FULL_MATCH:I = 0x1e

.field public static final LOCALE_LANGUAGE_AND_COUNTRY_MATCH:I = 0x14

.field public static final LOCALE_LANGUAGE_AND_COUNTRY_MATCH_VARIANT_DIFFER:I = 0x6

.field public static final LOCALE_LANGUAGE_MATCH:I = 0xf

.field public static final LOCALE_LANGUAGE_MATCH_COUNTRY_DIFFER:I = 0x3

.field private static final LOCALE_MATCH:I = 0xa

.field public static final LOCALE_NO_MATCH:I = 0x0

.field private static final MATCH_LEVEL_MAX:I = 0x1e

.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockForRunInLocale:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLockForRunInLocale:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 218
    if-nez p0, :cond_7

    .line 219
    const/4 v2, 0x0

    .line 235
    :goto_6
    return-object v2

    .line 220
    :cond_7
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 221
    :try_start_a
    sget-object v2, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 222
    sget-object v2, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    monitor-exit v3

    goto :goto_6

    .line 236
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v2

    .line 223
    :cond_1f
    const/4 v1, 0x0

    .line 224
    .local v1, "retval":Ljava/util/Locale;
    :try_start_20
    const-string v2, "_"

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_3c

    .line 226
    new-instance v1, Ljava/util/Locale;

    .end local v1    # "retval":Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v1    # "retval":Ljava/util/Locale;
    :cond_32
    :goto_32
    if-eqz v1, :cond_39

    .line 233
    sget-object v2, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_39
    monitor-exit v3

    move-object v2, v1

    goto :goto_6

    .line 227
    :cond_3c
    array-length v2, v0

    if-ne v2, v6, :cond_4b

    .line 228
    new-instance v1, Ljava/util/Locale;

    .end local v1    # "retval":Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "retval":Ljava/util/Locale;
    goto :goto_32

    .line 229
    :cond_4b
    array-length v2, v0

    if-ne v2, v7, :cond_32

    .line 230
    new-instance v1, Ljava/util/Locale;

    .end local v1    # "retval":Ljava/util/Locale;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-direct {v1, v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_1c

    .restart local v1    # "retval":Ljava/util/Locale;
    goto :goto_32
.end method

.method public static getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p0, "referenceLocale"    # Ljava/lang/String;
    .param p1, "testedLocale"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 136
    :cond_12
    :goto_12
    return v2

    .line 110
    :cond_13
    const/16 v2, 0xa

    goto :goto_12

    .line 112
    :cond_16
    if-nez p1, :cond_1a

    move v2, v3

    goto :goto_12

    .line 113
    :cond_1a
    const-string v5, "_"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "referenceParams":[Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "testedParams":[Ljava/lang/String;
    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    move v2, v3

    goto :goto_12

    .line 117
    :cond_32
    array-length v5, v0

    packed-switch v5, :pswitch_data_78

    move v2, v3

    .line 136
    goto :goto_12

    .line 119
    :pswitch_38
    array-length v3, v1

    if-eq v7, v3, :cond_12

    const/16 v2, 0xf

    goto :goto_12

    .line 121
    :pswitch_3e
    array-length v3, v1

    if-ne v7, v3, :cond_43

    move v2, v4

    goto :goto_12

    .line 122
    :cond_43
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    move v2, v4

    .line 123
    goto :goto_12

    .line 124
    :cond_4f
    array-length v3, v1

    if-ne v4, v3, :cond_12

    const/16 v2, 0x14

    goto :goto_12

    .line 127
    :pswitch_55
    array-length v3, v1

    if-ne v7, v3, :cond_5a

    move v2, v4

    goto :goto_12

    .line 128
    :cond_5a
    aget-object v3, v0, v7

    aget-object v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    move v2, v4

    .line 129
    goto :goto_12

    .line 130
    :cond_66
    array-length v3, v1

    if-ne v8, v3, :cond_6b

    const/4 v2, 0x6

    goto :goto_12

    .line 131
    :cond_6b
    aget-object v3, v0, v8

    aget-object v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 132
    const/4 v2, 0x6

    goto :goto_12

    .line 117
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3e
        :pswitch_55
    .end packed-switch
.end method

.method public static getMatchLevelSortedString(I)Ljava/lang/String;
    .registers 6
    .param p0, "matchLevel"    # I

    .prologue
    .line 148
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    rsub-int/lit8 v4, p0, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMatch(I)Z
    .registers 2
    .param p0, "level"    # I

    .prologue
    .line 161
    const/16 v0, 0xa

    if-gt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 205
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 209
    .local v1, "saveLocale":Ljava/util/Locale;
    return-object v1
.end method
