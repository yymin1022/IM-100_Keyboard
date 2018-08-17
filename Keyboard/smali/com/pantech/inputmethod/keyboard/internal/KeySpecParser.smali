.class public Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;
.super Ljava/lang/Object;
.source "KeySpecParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_MORE_KEY_MARKER:Ljava/lang/String; = "%"

.field private static COMMA:I = 0x0

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final LABEL_END:C = '|'

.field private static final MAX_STRING_REFERENCE_INDIRECTION:I = 0xa

.field private static final PREFIX_CODE:Ljava/lang/String; = "!code/"

.field private static final PREFIX_HEX:Ljava/lang/String; = "0x"

.field private static final PREFIX_ICON:Ljava/lang/String; = "!icon/"

.field private static final PREFIX_TEXT:Ljava/lang/String; = "!text/"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    .line 51
    const/16 v0, 0x2c

    sput v0, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_8

    .line 167
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 169
    :cond_8
    if-ltz p1, :cond_f

    if-gt p1, p2, :cond_f

    array-length v2, p0

    if-le p2, v2, :cond_15

    .line 170
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 173
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, p1

    .local v0, "i":I
    :goto_1d
    if-ge v0, p2, :cond_27

    .line 175
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 177
    :cond_27
    return-object v1
.end method

.method private static filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 183
    if-nez p0, :cond_5

    .line 184
    sget-object p0, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 200
    .end local p0    # "array":[Ljava/lang/String;
    .local v1, "i":I
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    return-object p0

    .line 186
    .end local v1    # "i":I
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "array":[Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 187
    .restart local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_22

    .line 188
    aget-object v0, p0, v1

    .line 189
    .local v0, "entry":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 190
    if-nez v2, :cond_19

    .line 191
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 193
    :cond_1c
    if-eqz v2, :cond_19

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 197
    .end local v0    # "entry":Ljava/lang/String;
    :cond_22
    if-eqz v2, :cond_4

    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object p0, v3

    goto :goto_4
.end method

.method public static getBooleanValue([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "moreKeys"    # [Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p0, :cond_4

    .line 402
    const/4 v2, 0x0

    .line 413
    :cond_3
    return v2

    .line 404
    :cond_4
    const/4 v2, 0x0

    .line 405
    .local v2, "value":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 406
    aget-object v1, p0, v0

    .line 407
    .local v1, "moreKeySpec":Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 405
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 410
    :cond_16
    const/4 v3, 0x0

    aput-object v3, p0, v0

    .line 411
    const/4 v2, 0x1

    goto :goto_13
.end method

.method public static getIntValue([Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p0, "moreKeys"    # [Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 375
    if-nez p0, :cond_3

    .line 397
    .end local p2    # "defaultValue":I
    :goto_2
    return p2

    .line 378
    .restart local p2    # "defaultValue":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 379
    .local v3, "keyLen":I
    const/4 v1, 0x0

    .line 380
    .local v1, "foundValue":Z
    move v5, p2

    .line 381
    .local v5, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v6, p0

    if-ge v2, v6, :cond_4d

    .line 382
    aget-object v4, p0, v2

    .line 383
    .local v4, "moreKeySpec":Ljava/lang/String;
    if-eqz v4, :cond_17

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 381
    :cond_17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 386
    :cond_1a
    const/4 v6, 0x0

    aput-object v6, p0, v2

    .line 388
    if-nez v1, :cond_17

    .line 389
    :try_start_1f
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_26} :catch_29

    move-result v5

    .line 390
    const/4 v1, 0x1

    goto :goto_17

    .line 392
    :catch_29
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integer should follow after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "moreKeySpec":Ljava/lang/String;
    :cond_4d
    move p2, v5

    .line 397
    goto :goto_2
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    const/4 v1, 0x0

    .line 127
    :cond_8
    return-object v1

    .line 121
    :cond_9
    invoke-static {p0, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "end":I
    if-lez v0, :cond_36

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "label":Ljava/lang/String;
    :goto_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 125
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v1    # "label":Ljava/lang/String;
    :cond_36
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method

.method static getOutputText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->hasCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 162
    :cond_8
    :goto_8
    return-object v2

    .line 145
    :cond_9
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getOutputTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "outputText":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 147
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_8

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    move-object v2, v1

    .line 153
    goto :goto_8

    .line 155
    :cond_1d
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty outputText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_36
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_55

    .line 159
    new-instance v2, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_55
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5c

    move-object v0, v2

    .end local v0    # "label":Ljava/lang/String;
    :cond_5c
    move-object v2, v0

    goto :goto_8
.end method

.method private static getOutputTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "end":I
    if-gtz v0, :cond_9

    .line 133
    const/4 v1, 0x0

    .line 138
    :goto_8
    return-object v1

    .line 135
    :cond_9
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2a

    .line 136
    new-instance v1, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple |: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_2a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method private static hasCode(Ljava/lang/String;)Z
    .registers 5
    .param p0, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "end":I
    if-lez v0, :cond_1a

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    const-string v2, "!code/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 72
    const/4 v1, 0x1

    .line 74
    :cond_1a
    return v1
.end method

.method private static hasIcon(Ljava/lang/String;)Z
    .registers 2
    .param p0, "moreKeySpec"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "!icon/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static indexOfLabelEnd(Ljava/lang/String;I)I
    .registers 9
    .param p0, "moreKeySpec"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const/16 v6, 0x7c

    const/16 v5, 0x5c

    .line 97
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_33

    .line 98
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 99
    .local v1, "end":I
    if-nez v1, :cond_4c

    .line 100
    new-instance v4, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "| at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser$KeySpecParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    .end local v1    # "end":I
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 105
    .local v2, "length":I
    move v3, p1

    .local v3, "pos":I
    :goto_38
    if-ge v3, v2, :cond_4d

    .line 106
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 107
    .local v0, "c":C
    if-ne v0, v5, :cond_49

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_49

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 105
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 110
    :cond_49
    if-ne v0, v6, :cond_46

    move v1, v3

    .line 114
    .end local v0    # "c":C
    .end local v2    # "length":I
    .end local v3    # "pos":I
    :cond_4c
    :goto_4c
    return v1

    .restart local v2    # "length":I
    .restart local v3    # "pos":I
    :cond_4d
    const/4 v1, -0x1

    goto :goto_4c
.end method

.method public static insertAdditionalMoreKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .param p0, "moreKeySpecs"    # [Ljava/lang/String;
    .param p1, "additionalMoreKeySpecs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 205
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "moreKeys":[Ljava/lang/String;
    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->filterOutEmptyString([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "additionalMoreKeys":[Ljava/lang/String;
    array-length v8, v7

    .line 208
    .local v8, "moreKeysCount":I
    array-length v0, v3

    .line 209
    .local v0, "additionalCount":I
    const/4 v9, 0x0

    .line 210
    .local v9, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 211
    .local v1, "additionalIndex":I
    const/4 v5, 0x0

    .local v5, "moreKeyIndex":I
    :goto_e
    if-ge v5, v8, :cond_38

    .line 212
    aget-object v6, v7, v5

    .line 213
    .local v6, "moreKeySpec":Ljava/lang/String;
    const-string v10, "%"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 214
    if-ge v1, v0, :cond_2b

    .line 216
    aget-object v2, v3, v1

    .line 217
    .local v2, "additionalMoreKey":Ljava/lang/String;
    if-eqz v9, :cond_28

    .line 218
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_23
    add-int/lit8 v1, v1, 0x1

    .line 211
    .end local v2    # "additionalMoreKey":Ljava/lang/String;
    :cond_25
    :goto_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 220
    .restart local v2    # "additionalMoreKey":Ljava/lang/String;
    :cond_28
    aput-object v2, v7, v5

    goto :goto_23

    .line 225
    .end local v2    # "additionalMoreKey":Ljava/lang/String;
    :cond_2b
    if-nez v9, :cond_25

    .line 226
    invoke-static {v7, v11, v5}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_25

    .line 230
    :cond_32
    if-eqz v9, :cond_25

    .line 231
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 235
    .end local v6    # "moreKeySpec":Ljava/lang/String;
    :cond_38
    if-lez v0, :cond_7c

    if-nez v1, :cond_7c

    .line 238
    sget-boolean v10, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    if-eqz v10, :cond_6d

    if-eqz v9, :cond_6d

    .line 239
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal logic error: moreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionalMoreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 243
    :cond_6d
    invoke-static {v3, v1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    .line 244
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_72
    if-ge v4, v8, :cond_be

    .line 245
    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 247
    .end local v4    # "i":I
    :cond_7c
    if-ge v1, v0, :cond_be

    .line 250
    sget-boolean v10, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->DEBUG:Z

    if-eqz v10, :cond_af

    if-eqz v9, :cond_af

    .line 251
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal logic error: moreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionalMoreKeys="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 255
    :cond_af
    invoke-static {v7, v11, v8}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->arrayAsList([Ljava/lang/Object;II)Ljava/util/ArrayList;

    move-result-object v9

    .line 256
    move v4, v1

    .restart local v4    # "i":I
    :goto_b4
    if-ge v4, v0, :cond_be

    .line 257
    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 260
    .end local v4    # "i":I
    :cond_be
    if-nez v9, :cond_c3

    if-lez v8, :cond_c3

    .line 265
    .end local v7    # "moreKeys":[Ljava/lang/String;
    :goto_c2
    return-object v7

    .line 262
    .restart local v7    # "moreKeys":[Ljava/lang/String;
    :cond_c3
    if-eqz v9, :cond_d9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d9

    .line 263
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v7, v10

    goto :goto_c2

    .line 265
    :cond_d9
    const/4 v7, 0x0

    goto :goto_c2
.end method

.method public static parseCsvString(Ljava/lang/String;Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;)[Ljava/lang/String;
    .registers 14
    .param p0, "rawText"    # Ljava/lang/String;
    .param p1, "textsSet"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 336
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->resolveTextReference(Ljava/lang/String;Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 338
    .local v4, "size":I
    if-nez v4, :cond_e

    .line 371
    :cond_d
    :goto_d
    return-object v7

    .line 341
    :cond_e
    invoke-static {v6}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v11, :cond_21

    .line 342
    invoke-virtual {v6, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    sget v9, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    if-eq v8, v9, :cond_d

    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    goto :goto_d

    .line 345
    :cond_21
    const/4 v1, 0x0

    .line 346
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 347
    .local v5, "start":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_24
    if-ge v2, v4, :cond_4c

    .line 348
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 349
    .local v0, "c":C
    sget v8, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->COMMA:I

    if-ne v0, v8, :cond_45

    .line 351
    sub-int v8, v2, v5

    if-lez v8, :cond_40

    .line 352
    if-nez v1, :cond_39

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_40
    add-int/lit8 v5, v2, 0x1

    .line 347
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 359
    :cond_45
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_42

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 364
    .end local v0    # "c":C
    :cond_4c
    sub-int v8, v4, v5

    if-lez v8, :cond_5d

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "remain":Ljava/lang/String;
    :goto_54
    if-nez v1, :cond_5f

    .line 366
    if-eqz v3, :cond_d

    new-array v7, v11, [Ljava/lang/String;

    aput-object v3, v7, v10

    goto :goto_d

    .end local v3    # "remain":Ljava/lang/String;
    :cond_5d
    move-object v3, v7

    .line 364
    goto :goto_54

    .line 368
    .restart local v3    # "remain":Ljava/lang/String;
    :cond_5f
    if-eqz v3, :cond_64

    .line 369
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_d
.end method

.method private static parseEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 78
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    .line 93
    .end local p0    # "text":Ljava/lang/String;
    :goto_8
    return-object p0

    .line 81
    .restart local p0    # "text":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 82
    .local v1, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_13
    if-ge v2, v1, :cond_2f

    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "c":C
    if-ne v0, v5, :cond_2b

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_2b

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 90
    :cond_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 93
    .end local v0    # "c":C
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static resolveTextReference(Ljava/lang/String;Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;)Ljava/lang/String;
    .registers 15
    .param p0, "rawText"    # Ljava/lang/String;
    .param p1, "textsSet"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, "level":I
    move-object v8, p0

    .line 281
    .local v8, "text":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 282
    const/16 v10, 0xa

    if-lt v2, v10, :cond_21

    .line 283
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "too many @string/resource indirection: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 286
    :cond_21
    const-string v10, "!text/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 287
    .local v5, "prefixLen":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 288
    .local v7, "size":I
    if-ge v7, v5, :cond_2f

    move-object v9, v8

    .line 319
    .end local v8    # "text":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    :goto_2e
    return-object v9

    .line 292
    .end local v9    # "text":Ljava/lang/String;
    .restart local v8    # "text":Ljava/lang/String;
    :cond_2f
    const/4 v6, 0x0

    .line 293
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_31
    if-ge v4, v7, :cond_81

    .line 294
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    .local v0, "c":C
    const-string v10, "!text/"

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_65

    if-eqz p1, :cond_65

    .line 296
    if-nez v6, :cond_4d

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_4d
    add-int v10, v4, v5

    invoke-static {v8, v10}, Lcom/pantech/inputmethod/keyboard/internal/KeySpecParser;->searchTextNameEnd(Ljava/lang/String;I)I

    move-result v1

    .line 300
    .local v1, "end":I
    add-int v10, v4, v5

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v4, v1, -0x1

    .line 293
    .end local v1    # "end":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 303
    :cond_65
    const/16 v10, 0x5c

    if-ne v0, v10, :cond_7b

    .line 304
    if-eqz v6, :cond_78

    .line 306
    add-int/lit8 v10, v4, 0x2

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 309
    :cond_7b
    if-eqz v6, :cond_62

    .line 310
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 314
    .end local v0    # "c":C
    :cond_81
    if-eqz v6, :cond_87

    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    :cond_87
    if-nez v6, :cond_2

    move-object v9, v8

    .line 319
    .end local v8    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2e
.end method

.method private static searchTextNameEnd(Ljava/lang/String;I)I
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 324
    .local v2, "size":I
    move v1, p1

    .local v1, "pos":I
    :goto_5
    if-ge v1, v2, :cond_22

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 327
    .local v0, "c":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_13

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1f

    :cond_13
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x30

    if-lt v0, v3, :cond_23

    const/16 v3, 0x39

    if-gt v0, v3, :cond_23

    .line 324
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "c":C
    :cond_22
    move v1, v2

    .line 332
    .end local v1    # "pos":I
    :cond_23
    return v1
.end method

.method public static toUpperCaseOfStringForLocale(Ljava/lang/String;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "needsToUpperCase"    # Z
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 418
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 419
    .end local p0    # "text":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method
