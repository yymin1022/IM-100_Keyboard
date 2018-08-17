.class Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$MathUtils;
.super Ljava/lang/Object;
.source "UserHistoryForgettingCurveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MathUtils"
.end annotation


# static fields
.field public static final SCORE_TABLE:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    .line 199
    const/16 v9, 0x10

    filled-new-array {v12, v9}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    sput-object v9, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    .line 201
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v12, :cond_57

    .line 203
    const/4 v9, 0x2

    if-lt v4, v9, :cond_43

    .line 204
    const-wide v6, 0x405fc00000000000L    # 127.0

    .line 212
    .local v6, "initialFreq":D
    :goto_1c
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1d
    const/16 v9, 0xf

    if-ge v8, v9, :cond_54

    .line 213
    mul-int/lit8 v9, v8, 0x6

    int-to-double v0, v9

    .line 214
    .local v0, "elapsedHour":D
    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    div-double v10, v0, v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v2, v6, v10

    .line 216
    .local v2, "freq":D
    const/16 v9, 0x7f

    const/4 v10, 0x0

    double-to-int v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 217
    .local v5, "intFreq":I
    sget-object v9, Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$MathUtils;->SCORE_TABLE:[[I

    aget-object v9, v9, v4

    aput v5, v9, v8

    .line 212
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 205
    .end local v0    # "elapsedHour":D
    .end local v2    # "freq":D
    .end local v5    # "intFreq":I
    .end local v6    # "initialFreq":D
    .end local v8    # "j":I
    :cond_43
    const/4 v9, 0x1

    if-ne v4, v9, :cond_4c

    .line 206
    const-wide v6, 0x404fc00000000000L    # 63.5

    .restart local v6    # "initialFreq":D
    goto :goto_1c

    .line 207
    .end local v6    # "initialFreq":D
    :cond_4c
    if-nez v4, :cond_54

    .line 208
    const-wide v6, 0x403fc00000000000L    # 31.75

    .restart local v6    # "initialFreq":D
    goto :goto_1c

    .line 201
    .end local v6    # "initialFreq":D
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 220
    :cond_57
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
