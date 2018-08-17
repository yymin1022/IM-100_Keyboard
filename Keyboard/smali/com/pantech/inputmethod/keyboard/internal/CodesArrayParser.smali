.class public final Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;
.super Ljava/lang/Object;
.source "CodesArrayParser.java"


# static fields
.field private static final BASE_HEX:I = 0x10

.field private static final COMMA:C = ','

.field private static final COMMA_STRING:Ljava/lang/String; = ","

.field private static final VERTICAL_BAR_STRING:Ljava/lang/String; = "\\|"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static getCodeSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 64
    const-string v1, "\\|"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    if-gt v1, v3, :cond_c

    .line 68
    .end local p0    # "codesArraySpec":Ljava/lang/String;
    :goto_b
    return-object p0

    .restart local p0    # "codesArraySpec":Ljava/lang/String;
    :cond_c
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_17
    move-object p0, v1

    goto :goto_b

    :cond_19
    aget-object v1, v0, v3

    goto :goto_17
.end method

.method private static getLabelSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v1, "\\|"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_c

    .line 50
    .end local p0    # "codesArraySpec":Ljava/lang/String;
    :goto_b
    return-object p0

    .restart local p0    # "codesArraySpec":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    aget-object p0, v0, v1

    goto :goto_b
.end method

.method public static getMinSupportSdkVersion(Ljava/lang/String;)I
    .registers 7
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 74
    const-string v3, "\\|"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "strs":[Ljava/lang/String;
    array-length v3, v1

    if-gt v3, v5, :cond_d

    .line 81
    :goto_c
    return v2

    .line 79
    :cond_d
    const/4 v3, 0x2

    :try_start_e
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_13} :catch_15

    move-result v2

    goto :goto_c

    .line 80
    :catch_15
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_c
.end method

.method public static parseCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->getCodeSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "codeSpec":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    .line 88
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 90
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x4

    goto :goto_12
.end method

.method public static parseLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->getLabelSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "labelSpec":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_11
    if-ge v3, v5, :cond_21

    aget-object v1, v0, v3

    .line 57
    .local v1, "codeInHex":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, "codePoint":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 60
    .end local v1    # "codeInHex":Ljava/lang/String;
    .end local v2    # "codePoint":I
    :cond_21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static parseOutputText(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "codesArraySpec"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->getCodeSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "codeSpec":Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_e

    .line 96
    const/4 v7, 0x0

    .line 103
    :goto_d
    return-object v7

    .line 98
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1b
    if-ge v4, v5, :cond_2b

    aget-object v1, v0, v4

    .line 100
    .local v1, "codeInHex":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, "codePoint":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 103
    .end local v1    # "codeInHex":Ljava/lang/String;
    .end local v2    # "codePoint":I
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d
.end method
