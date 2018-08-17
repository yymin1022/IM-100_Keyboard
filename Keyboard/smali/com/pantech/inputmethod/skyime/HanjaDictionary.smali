.class public Lcom/pantech/inputmethod/skyime/HanjaDictionary;
.super Ljava/lang/Object;
.source "HanjaDictionary.java"


# static fields
.field public static final HANJA_SEARCH_FIRST:I = 0x0

.field public static final HANJA_SEARCH_TWICE:I = 0x1

.field private static mHanjaDictionary:Lcom/pantech/inputmethod/skyime/HanjaDictionary;

.field private static mWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/Hanja;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/pantech/inputmethod/skyime/HanjaDictionary;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mHanjaDictionary:Lcom/pantech/inputmethod/skyime/HanjaDictionary;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/HanjaDictionary;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mHanjaDictionary:Lcom/pantech/inputmethod/skyime/HanjaDictionary;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    .local v4, "myResources":Landroid/content/res/Resources;
    const/high16 v7, 0x7f060000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 86
    .local v3, "myFile":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 88
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x0

    .line 90
    .local v6, "strLength":I
    :try_start_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 94
    new-instance v1, Lcom/pantech/inputmethod/skyime/Hanja;

    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/Hanja;-><init>()V

    .line 95
    .local v1, "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, v1, Lcom/pantech/inputmethod/skyime/Hanja;->hanja:C

    .line 96
    const/4 v7, 0x2

    add-int/lit8 v8, v6, -0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/pantech/inputmethod/skyime/Hanja;->meaning:Ljava/lang/CharSequence;

    .line 97
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, v1, Lcom/pantech/inputmethod/skyime/Hanja;->sound:C

    .line 99
    sget-object v7, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_4b} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_4b} :catch_55
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4b} :catch_5a

    goto :goto_1f

    .line 102
    .end local v1    # "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_50
    return-void

    .line 101
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_54} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_55
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    goto :goto_50

    .line 104
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catch_55
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_50

    .line 106
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5a
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method


# virtual methods
.method public getHanja(CI)[Ljava/lang/String;
    .registers 14
    .param p1, "ch"    # C
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 47
    const/16 v8, 0x64

    new-array v6, v8, [Ljava/lang/String;

    .line 48
    .local v6, "resultBuffer":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 49
    .local v5, "result":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 50
    .local v4, "isFound":Z
    const/4 v0, 0x0

    .line 52
    .local v0, "count":I
    const/4 v8, 0x1

    if-ne p2, v8, :cond_13

    .line 53
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->getKoreanCharacter(C)C

    move-result p1

    .line 55
    if-nez p1, :cond_13

    .line 78
    :cond_12
    :goto_12
    return-object v7

    .line 60
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    sget-object v8, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5a

    .line 61
    sget-object v8, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/Hanja;

    .line 62
    .local v2, "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    iget-char v8, v2, Lcom/pantech/inputmethod/skyime/Hanja;->sound:C

    if-ne v8, p1, :cond_58

    .line 63
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v9, v2, Lcom/pantech/inputmethod/skyime/Hanja;->hanja:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/pantech/inputmethod/skyime/Hanja;->meaning:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, v2, Lcom/pantech/inputmethod/skyime/Hanja;->sound:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    .line 64
    const/4 v4, 0x1

    move v0, v1

    .line 60
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 66
    :cond_58
    if-eqz v4, :cond_55

    .line 73
    .end local v2    # "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    :cond_5a
    new-array v5, v0, [Ljava/lang/String;

    .line 74
    if-eqz v0, :cond_12

    .line 76
    array-length v7, v5

    invoke-static {v6, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v5

    .line 78
    goto :goto_12
.end method

.method public getKoreanCharacter(C)C
    .registers 6
    .param p1, "_ch"    # C

    .prologue
    .line 35
    move v0, p1

    .line 37
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v3, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 38
    sget-object v3, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/Hanja;

    .line 39
    .local v1, "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    iget-char v3, v1, Lcom/pantech/inputmethod/skyime/Hanja;->hanja:C

    if-ne v3, v0, :cond_19

    .line 40
    iget-char v3, v1, Lcom/pantech/inputmethod/skyime/Hanja;->sound:C

    .line 43
    .end local v1    # "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    :goto_18
    return v3

    .line 37
    .restart local v1    # "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 43
    .end local v1    # "hanja":Lcom/pantech/inputmethod/skyime/Hanja;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method
