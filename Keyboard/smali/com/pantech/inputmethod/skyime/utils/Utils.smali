.class public Lcom/pantech/inputmethod/skyime/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;,
        Lcom/pantech/inputmethod/skyime/utils/Utils$UsabilityStudyLogUtils;,
        Lcom/pantech/inputmethod/skyime/utils/Utils$RingCharBuffer;,
        Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;
    }
.end annotation


# static fields
.field private static DBG_EDIT_DISTANCE:Z = false

.field private static final EMPTY_LT_HASH_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final FULL_WORD_MULTIPLIER:I = 0x2

.field private static final LOCALE_AND_TIME_STR_SEPARATER:Ljava/lang/String; = ","

.field private static final MAX_INITIAL_SCORE:I = 0xff

.field private static final S_INT_MAX:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/pantech/inputmethod/skyime/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/utils/Utils;->DBG_EDIT_DISTANCE:Z

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/Utils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D
    .registers 21
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;
    .param p2, "score"    # I

    .prologue
    .line 400
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 401
    .local v3, "beforeLength":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 402
    .local v2, "afterLength":I
    if-eqz v3, :cond_c

    if-nez v2, :cond_f

    .line 403
    :cond_c
    const-wide/16 v12, 0x0

    .line 424
    :goto_e
    return-wide v12

    .line 404
    :cond_f
    invoke-static/range {p0 .. p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 408
    .local v4, "distance":I
    const/4 v8, 0x0

    .line 409
    .local v8, "spaceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v2, :cond_26

    .line 410
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v12, 0x20

    if-ne v9, v12, :cond_23

    .line 411
    add-int/lit8 v8, v8, 0x1

    .line 409
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 414
    :cond_26
    if-ne v8, v2, :cond_2b

    .line 415
    const-wide/16 v12, 0x0

    goto :goto_e

    .line 416
    :cond_2b
    const v9, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v9, :cond_47

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    .line 423
    .local v6, "maximumScore":D
    :goto_37
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    int-to-double v14, v4

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    sub-double v10, v12, v14

    .line 424
    .local v10, "weight":D
    move/from16 v0, p2

    int-to-double v12, v0

    div-double/2addr v12, v6

    mul-double/2addr v12, v10

    goto :goto_e

    .line 416
    .end local v6    # "maximumScore":D
    .end local v10    # "weight":D
    :cond_47
    const-wide v12, 0x406fe00000000000L    # 255.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    sub-int v9, v2, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v6, v12, v14

    goto :goto_37
.end method

.method public static canBeFollowedByPeriod(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 189
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_d

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 85
    :cond_d
    return-void
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 603
    if-nez p1, :cond_4

    .line 609
    :cond_3
    :goto_3
    return v4

    .line 605
    :cond_4
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_c
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 606
    .local v3, "option":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 607
    const/4 v4, 0x1

    goto :goto_3

    .line 605
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public static dipToPixel(FI)I
    .registers 6
    .param p0, "scale"    # F
    .param p1, "dip"    # I

    .prologue
    .line 744
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 314
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 315
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "editDistance: Arguments should not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 317
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 318
    .local v6, "sl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 319
    .local v8, "tl":I
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 320
    .local v1, "dp":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-gt v2, v6, :cond_2f

    .line 321
    aget-object v9, v1, v2

    const/4 v10, 0x0

    aput v2, v9, v10

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 323
    :cond_2f
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_30
    if-gt v3, v8, :cond_3a

    .line 324
    const/4 v9, 0x0

    aget-object v9, v1, v9

    aput v3, v9, v3

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 326
    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v6, :cond_b9

    .line 327
    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v8, :cond_b6

    .line 328
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 329
    .local v5, "sc":C
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 330
    .local v7, "tc":C
    if-ne v5, v7, :cond_b4

    const/4 v0, 0x0

    .line 331
    .local v0, "cost":I
    :goto_53
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    aget-object v11, v1, v2

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-object v12, v1, v12

    aget v12, v12, v3

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v1, v2

    aget v13, v13, v3

    add-int/2addr v13, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 334
    if-lez v2, :cond_b1

    if-lez v3, :cond_b1

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v5, v9, :cond_b1

    add-int/lit8 v9, v2, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v7, v9, :cond_b1

    .line 337
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v1, v11

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v12, v2, -0x1

    aget-object v12, v1, v12

    add-int/lit8 v13, v3, -0x1

    aget v12, v12, v13

    add-int/2addr v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 327
    :cond_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 330
    .end local v0    # "cost":I
    :cond_b4
    const/4 v0, 0x1

    goto :goto_53

    .line 326
    .end local v5    # "sc":C
    .end local v7    # "tc":C
    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 341
    :cond_b9
    sget-boolean v9, Lcom/pantech/inputmethod/skyime/utils/Utils;->DBG_EDIT_DISTANCE:Z

    if-eqz v9, :cond_121

    .line 342
    sget-object v9, Lcom/pantech/inputmethod/skyime/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "editDistance:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v2, 0x0

    :goto_e0
    array-length v9, v1

    if-ge v2, v9, :cond_121

    .line 344
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 345
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    :goto_e9
    aget-object v9, v1, v2

    array-length v9, v9

    if-ge v3, v9, :cond_fe

    .line 346
    aget-object v9, v1, v2

    aget v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 348
    :cond_fe
    sget-object v9, Lcom/pantech/inputmethod/skyime/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 351
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_121
    aget-object v9, v1, v6

    aget v9, v9, v8

    return v9
.end method

.method public static equalsIgnoreCase(CC)Z
    .registers 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 680
    if-eq p0, p1, :cond_16

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_16

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 694
    if-ne p0, p1, :cond_5

    .line 705
    :cond_4
    :goto_4
    return v2

    .line 696
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 697
    goto :goto_4

    .line 698
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 699
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_17

    move v2, v3

    .line 700
    goto :goto_4

    .line 701
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_4

    .line 702
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/skyime/utils/Utils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_2a

    move v2, v3

    .line 703
    goto :goto_4

    .line 701
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z
    .registers 9
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_38

    .line 724
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_38
    if-nez p0, :cond_3f

    .line 727
    if-nez p3, :cond_3d

    .line 734
    :cond_3c
    :goto_3c
    return v1

    :cond_3d
    move v1, v2

    .line 727
    goto :goto_3c

    .line 728
    :cond_3f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_47

    move v1, v2

    .line 729
    goto :goto_3c

    .line 730
    :cond_47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    if-ge v0, p3, :cond_3c

    .line 731
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/utils/Utils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_5a

    move v1, v2

    .line 732
    goto :goto_3c

    .line 730
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public static getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F
    .registers 12
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    .line 877
    const-string v8, "pref_keypress_sound_volume"

    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 878
    .local v5, "volume":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_e

    .line 889
    .end local v5    # "volume":F
    :goto_d
    return v5

    .line 882
    .restart local v5    # "volume":F
    :cond_e
    const v8, 0x7f0b001a

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 883
    .local v6, "volumePerHardwareList":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "hardwarePrefix":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2d
    if-ge v3, v4, :cond_4b

    aget-object v1, v0, v3

    .line 885
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 886
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_d

    .line 884
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .end local v1    # "element":Ljava/lang/String;
    :cond_4b
    move v5, v7

    .line 889
    goto :goto_d
.end method

.method public static getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 12
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 861
    const/4 v6, -0x1

    .line 865
    .local v6, "ms":I
    const v7, 0x7f0b0019

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "durationPerHardwareList":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "hardwarePrefix":Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_20
    if-ge v4, v5, :cond_3f

    aget-object v2, v0, v4

    .line 869
    .local v2, "element":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 870
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v7, v8

    .line 873
    .end local v2    # "element":Ljava/lang/String;
    :goto_3b
    return v7

    .line 868
    .restart local v2    # "element":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 873
    .end local v2    # "element":Ljava/lang/String;
    :cond_3f
    const/4 v7, -0x1

    goto :goto_3b
.end method

.method public static getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;
    .registers 6
    .param p0, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 774
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-nez v3, :cond_7

    move-object v0, v2

    .line 782
    :cond_6
    :goto_6
    return-object v0

    .line 776
    :cond_7
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getInfo(I)Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    move-result-object v1

    .line 777
    .local v1, "wordInfo":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    if-nez v1, :cond_f

    move-object v0, v2

    .line 778
    goto :goto_6

    .line 779
    :cond_f
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v2

    .line 781
    goto :goto_6
.end method

.method public static getDipScale(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 738
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 739
    .local v0, "scale":F
    return v0
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 827
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "returnsNameInThisLocale"    # Z

    .prologue
    .line 819
    if-eqz p1, :cond_b

    .line 820
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getInputMethodId(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "imm"    # Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getInputMethodInfo(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputMethodInfo(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .registers 7
    .param p0, "imm"    # Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 179
    .local v1, "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    return-object v1

    .line 182
    .end local v1    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find input method id for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I
    .registers 5
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v2, 0x0

    .line 573
    if-nez p0, :cond_4

    .line 598
    :cond_3
    :goto_3
    return v2

    .line 576
    :cond_4
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 577
    .local v0, "inputType":I
    and-int/lit16 v1, v0, 0xff0

    .line 579
    .local v1, "variation":I
    and-int/lit8 v3, v0, 0xf

    packed-switch v3, :pswitch_data_2c

    goto :goto_3

    .line 586
    :pswitch_e
    invoke-static {v1}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 587
    const/4 v2, 0x2

    goto :goto_3

    .line 582
    :pswitch_16
    const/4 v2, 0x5

    goto :goto_3

    .line 584
    :pswitch_18
    const/4 v2, 0x4

    goto :goto_3

    .line 588
    :cond_1a
    const/16 v3, 0x10

    if-ne v1, v3, :cond_20

    .line 589
    const/4 v2, 0x1

    goto :goto_3

    .line 590
    :cond_20
    const/16 v3, 0x40

    if-ne v1, v3, :cond_26

    .line 591
    const/4 v2, 0x3

    goto :goto_3

    .line 592
    :cond_26
    const/16 v3, 0xb0

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 579
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 654
    const-string v0, "main"

    .line 655
    .local v0, "MAIN_DIC_NAME":Ljava/lang/String;
    const-class v2, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "main"

    const-string v3, "raw"

    invoke-virtual {p0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getMiddleDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 831
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 836
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace()Ljava/lang/String;
    .registers 6

    .prologue
    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 359
    :catch_b
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 363
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_11
    array-length v4, v1

    if-ge v2, v4, :cond_33

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 366
    :cond_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getVibLevel(Landroid/view/inputmethod/EditorInfo;)I
    .registers 10
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 629
    const/4 v5, -0x1

    .line 630
    .local v5, "vibLevel":I
    if-nez p0, :cond_5

    move v6, v5

    .line 645
    .end local v5    # "vibLevel":I
    .local v6, "vibLevel":I
    :goto_4
    return v6

    .line 632
    .end local v6    # "vibLevel":I
    .restart local v5    # "vibLevel":I
    :cond_5
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v6, v5

    .line 633
    .end local v5    # "vibLevel":I
    .restart local v6    # "vibLevel":I
    goto :goto_4

    .line 634
    .end local v6    # "vibLevel":I
    .restart local v5    # "vibLevel":I
    :cond_f
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_19
    if-ge v1, v2, :cond_3f

    aget-object v4, v0, v1

    .line 635
    .local v4, "option":Ljava/lang/String;
    const-string v7, "com.pantech.skyime.vibLevel=[0-8]"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 637
    const-string v7, "com.pantech.skyime.vibLevel="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "levelStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 640
    const/4 v7, -0x1

    if-le v5, v7, :cond_3c

    const/16 v7, 0x14

    if-ge v5, v7, :cond_3c

    move v6, v5

    .line 641
    .end local v5    # "vibLevel":I
    .restart local v6    # "vibLevel":I
    goto :goto_4

    .line 634
    .end local v3    # "levelStr":Ljava/lang/String;
    .end local v6    # "vibLevel":I
    .restart local v5    # "vibLevel":I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .end local v4    # "option":Ljava/lang/String;
    :cond_3f
    move v6, v5

    .line 645
    .end local v5    # "vibLevel":I
    .restart local v6    # "vibLevel":I
    goto :goto_4
.end method

.method public static hasMultipleEnabledIMEsOrSubtypes(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z
    .registers 14
    .param p0, "imm"    # Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
    .param p1, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    const/4 v2, 0x0

    .line 133
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 136
    .local v5, "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    if-le v2, v10, :cond_1a

    .line 165
    .end local v5    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    :goto_19
    return v10

    .line 138
    .restart local v5    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    :cond_1a
    invoke-virtual {p0, v5, v10}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v8

    .line 141
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_b

    .line 146
    :cond_27
    const/4 v0, 0x0

    .line 147
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 148
    .local v7, "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual {v7}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 152
    .end local v7    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 159
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_4d

    if-eqz p1, :cond_b

    if-le v0, v10, :cond_b

    .line 160
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 161
    goto :goto_b

    .line 165
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_50
    if-gt v2, v10, :cond_5d

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v9}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_5e

    :cond_5d
    move v9, v10

    :cond_5e
    move v10, v9

    goto :goto_19
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x0

    .line 614
    if-nez p2, :cond_4

    .line 619
    .end local p1    # "key":Ljava/lang/String;
    :cond_3
    :goto_3
    return v0

    .line 616
    .restart local p1    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 619
    if-eqz p0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "key":Ljava/lang/String;
    :cond_25
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static inPrvImeOptionsHideEmojiMode(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 625
    const/4 v0, 0x0

    const-string v1, "com.pantech.skyime.noEmoji"

    invoke-static {v0, v1, p0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    return v0
.end method

.method public static localeAndTimeHashMapToStr(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 915
    :cond_8
    const-string v4, ""

    .line 926
    :goto_a
    return-object v4

    .line 917
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 919
    .local v2, "localeStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 920
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 923
    .local v3, "time":Ljava/lang/Long;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 926
    .end local v2    # "localeStr":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/Long;
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method public static localeAndTimeStrToHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 897
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/Utils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    .line 910
    :cond_8
    :goto_8
    return-object v3

    .line 899
    :cond_9
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, "ss":[Ljava/lang/String;
    array-length v0, v4

    .line 901
    .local v0, "N":I
    const/4 v5, 0x2

    if-lt v0, v5, :cond_17

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1a

    .line 902
    :cond_17
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/Utils;->EMPTY_LT_HASH_MAP:Ljava/util/HashMap;

    goto :goto_8

    .line 904
    :cond_1a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v3, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    div-int/lit8 v5, v0, 0x2

    if-ge v1, v5, :cond_8

    .line 906
    mul-int/lit8 v5, v1, 0x2

    aget-object v2, v4, v5

    .line 907
    .local v2, "localeStr":Ljava/lang/String;
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 908
    .local v6, "time":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 808
    :cond_7
    return-void

    .line 793
    :cond_8
    const/4 v1, 0x1

    .line 795
    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 796
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 798
    .local v0, "cur":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_16
    if-ge v2, v1, :cond_29

    .line 799
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 800
    .local v3, "previous":Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 801
    invoke-static {p0, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->removeFromSuggestions(Ljava/util/ArrayList;I)V

    .line 802
    add-int/lit8 v1, v1, -0x1

    .line 806
    .end local v3    # "previous":Ljava/lang/CharSequence;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 807
    goto :goto_9

    .line 798
    .restart local v3    # "previous":Ljava/lang/CharSequence;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method private static removeFromSuggestions(Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 813
    .local v0, "garbage":Ljava/lang/CharSequence;
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f

    .line 814
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0    # "garbage":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 816
    :cond_f
    return-void
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x1

    .line 840
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_8

    .line 856
    .end local p0    # "s":Ljava/lang/String;
    :goto_7
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method
