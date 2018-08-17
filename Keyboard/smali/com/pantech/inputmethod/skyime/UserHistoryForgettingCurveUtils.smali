.class public Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$MathUtils;,
        Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;
    }
.end annotation


# static fields
.field static final COUNT_MAX:I = 0x3

.field private static final DEBUG:Z = false

.field private static final ELAPSED_TIME_INTERVAL_HOURS:I = 0x6

.field private static final ELAPSED_TIME_INTERVAL_MILLIS:J = 0x1499700L

.field static final ELAPSED_TIME_MAX:I = 0xf

.field private static final FC_FREQ_MAX:I = 0x7f

.field private static final FC_LEVEL_MAX:I = 0x3

.field private static final HALF_LIFE_HOURS:I = 0x30

.field private static final MAX_PUSH_ELAPSED:I = 0x40

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->TAG:Ljava/lang/String;

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

.method static calcFc(III)B
    .registers 10
    .param p0, "elapsedTime"    # I
    .param p1, "count"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 137
    const/16 v3, 0x7f

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    .local v1, "et":I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, "c":I
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 140
    .local v2, "l":I
    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    return v3
.end method

.method private static calcFreq(III)I
    .registers 9
    .param p0, "elapsedTime"    # I
    .param p1, "count"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 123
    if-gtz p2, :cond_6

    .line 125
    const/4 v2, -0x1

    .line 133
    :goto_5
    return v2

    .line 127
    :cond_6
    if-ne p1, v5, :cond_a

    .line 129
    add-int/lit8 p2, p2, 0x1

    .line 131
    :cond_a
    const/16 v2, 0x7f

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    .local v0, "et":I
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 133
    .local v1, "l":I
    sget-object v2, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    goto :goto_5
.end method

.method static fcToCount(B)I
    .registers 2
    .param p0, "fc"    # B

    .prologue
    .line 115
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static fcToElapsedTime(B)I
    .registers 2
    .param p0, "fc"    # B

    .prologue
    .line 111
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static fcToFreq(B)I
    .registers 5
    .param p0, "fc"    # B

    .prologue
    .line 144
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 145
    .local v1, "elapsedTime":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 146
    .local v0, "count":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 147
    .local v2, "level":I
    invoke-static {v1, v0, v2}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->calcFreq(III)I

    move-result v3

    return v3
.end method

.method static fcToLevel(B)I
    .registers 2
    .param p0, "fc"    # B

    .prologue
    .line 119
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static needsToSave(BZZ)Z
    .registers 7
    .param p0, "fc"    # B
    .param p1, "isValid"    # Z
    .param p2, "addLevel0Bigram"    # Z

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v1

    .line 189
    .local v1, "level":I
    if-nez v1, :cond_c

    .line 190
    if-nez p1, :cond_b

    if-nez p2, :cond_c

    .line 195
    :cond_b
    :goto_b
    return v2

    .line 194
    :cond_c
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v0

    .line 195
    .local v0, "elapsedTime":I
    const/16 v3, 0xe

    if-lt v0, v3, :cond_16

    if-lez v1, :cond_b

    :cond_16
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public static pushCount(BZ)B
    .registers 6
    .param p0, "fc"    # B
    .param p1, "isValid"    # Z

    .prologue
    .line 166
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 167
    .local v1, "elapsedTime":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 168
    .local v0, "count":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 169
    .local v2, "level":I
    if-nez v1, :cond_11

    const/4 v3, 0x3

    if-ge v0, v3, :cond_15

    :cond_11
    if-eqz p1, :cond_1e

    if-nez v2, :cond_1e

    .line 171
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 172
    const/4 v0, 0x0

    .line 179
    :goto_18
    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->calcFc(III)B

    move-result v3

    return v3

    .line 177
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static pushElapsedTime(B)B
    .registers 5
    .param p0, "fc"    # B

    .prologue
    .line 151
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToElapsedTime(B)I

    move-result v1

    .line 152
    .local v1, "elapsedTime":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToCount(B)I

    move-result v0

    .line 153
    .local v0, "count":I
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->fcToLevel(B)I

    move-result v2

    .line 154
    .local v2, "level":I
    const/16 v3, 0xf

    if-lt v1, v3, :cond_19

    .line 156
    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x3

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 162
    :goto_14
    invoke-static {v1, v0, v2}, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;->calcFc(III)B

    move-result v3

    return v3

    .line 160
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method
