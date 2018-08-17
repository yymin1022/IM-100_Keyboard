.class public Lcom/pantech/inputmethod/skyime/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    .end local p0    # "key":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 56
    .restart local p0    # "key":Ljava/lang/String;
    :cond_7
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p0, p1

    goto :goto_6

    .line 57
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static codePointCount(Ljava/lang/String;)I
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_7
.end method

.method public static containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 43
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 44
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    .line 46
    .end local v1    # "element":Ljava/lang/String;
    :goto_e
    return v4

    .line 43
    .restart local v1    # "element":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 46
    .end local v1    # "element":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 51
    :goto_7
    return v0

    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static equalsIgnoreCase(CC)Z
    .registers 4
    .param p0, "a"    # C
    .param p1, "b"    # C

    .prologue
    .line 79
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

    .line 92
    if-ne p0, p1, :cond_5

    .line 103
    :cond_4
    :goto_4
    return v2

    .line 94
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 97
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_17

    move v2, v3

    .line 98
    goto :goto_4

    .line 99
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_4

    .line 100
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_2a

    move v2, v3

    .line 101
    goto :goto_4

    .line 99
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

    .line 119
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_38

    .line 120
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

    .line 122
    :cond_38
    if-nez p0, :cond_3f

    .line 123
    if-nez p3, :cond_3d

    .line 130
    :cond_3c
    :goto_3c
    return v1

    :cond_3d
    move v1, v2

    .line 123
    goto :goto_3c

    .line 124
    :cond_3f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_47

    move v1, v2

    .line 125
    goto :goto_3c

    .line 126
    :cond_47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    if-ge v0, p3, :cond_3c

    .line 127
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_5a

    move v1, v2

    .line 128
    goto :goto_3c

    .line 126
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public static hasUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 141
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v0, 0x0

    .local v0, "cp":I
    :goto_6
    if-ge v1, v2, :cond_1a

    .line 142
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 144
    const/4 v3, 0x1

    .line 147
    :goto_13
    return v3

    .line 141
    :cond_14
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_6

    .line 147
    :cond_1a
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static jsonStrToList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v1, "reader":Landroid/util/JsonReader;
    :try_start_e
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 211
    :goto_11
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 212
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 213
    :goto_1a
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 214
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "name":Ljava/lang/String;
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 216
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3b} :catch_3c
    .catchall {:try_start_e .. :try_end_3b} :catchall_59

    goto :goto_1a

    .line 228
    .end local v0    # "name":Ljava/lang/String;
    :catch_3c
    move-exception v3

    .line 231
    :try_start_3d
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_87

    .line 235
    :goto_40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .end local v2    # "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_44
    return-object v2

    .line 217
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "retval":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_45
    :try_start_45
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 218
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_58} :catch_3c
    .catchall {:try_start_45 .. :try_end_58} :catchall_59

    goto :goto_1a

    .line 230
    .end local v0    # "name":Ljava/lang/String;
    :catchall_59
    move-exception v3

    .line 231
    :try_start_5a
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_89

    .line 233
    :goto_5d
    throw v3

    .line 220
    .restart local v0    # "name":Ljava/lang/String;
    :cond_5e
    :try_start_5e
    const-string v3, "StringUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    .line 224
    .end local v0    # "name":Ljava/lang/String;
    :cond_7a
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_11

    .line 226
    :cond_7e
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_81} :catch_3c
    .catchall {:try_start_5e .. :try_end_81} :catchall_59

    .line 231
    :try_start_81
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_44

    .line 232
    :catch_85
    move-exception v3

    goto :goto_44

    :catch_87
    move-exception v3

    goto :goto_40

    :catch_89
    move-exception v4

    goto :goto_5d
.end method

.method public static listToJsonStr(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 240
    :cond_8
    const-string v4, ""

    .line 266
    :cond_a
    :goto_a
    return-object v4

    .line 242
    :cond_b
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 243
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 245
    .local v3, "writer":Landroid/util/JsonWriter;
    :try_start_15
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 246
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 248
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_49

    .line 249
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 253
    :cond_3c
    :goto_3c
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3f} :catch_40
    .catchall {:try_start_15 .. :try_end_3f} :catchall_5d

    goto :goto_1c

    .line 257
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_40
    move-exception v4

    .line 260
    if-eqz v3, :cond_46

    .line 261
    :try_start_43
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_73

    .line 266
    :cond_46
    :goto_46
    const-string v4, ""

    goto :goto_a

    .line 250
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_49
    :try_start_49
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 251
    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5c} :catch_40
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5d

    goto :goto_3c

    .line 259
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_5d
    move-exception v4

    .line 260
    if-eqz v3, :cond_63

    .line 261
    :try_start_60
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_75

    .line 264
    :cond_63
    :goto_63
    throw v4

    .line 255
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_64
    :try_start_64
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 256
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6a} :catch_40
    .catchall {:try_start_64 .. :try_end_6a} :catchall_5d

    move-result-object v4

    .line 260
    if-eqz v3, :cond_a

    .line 261
    :try_start_6d
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_a

    .line 263
    :catch_71
    move-exception v5

    goto :goto_a

    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_73
    move-exception v4

    goto :goto_46

    :catch_75
    move-exception v5

    goto :goto_63
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
    .line 157
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 173
    :cond_7
    return-void

    .line 158
    :cond_8
    const/4 v1, 0x1

    .line 160
    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 161
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 163
    .local v0, "cur":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_16
    if-ge v2, v1, :cond_29

    .line 164
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 165
    .local v3, "previous":Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 166
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    add-int/lit8 v1, v1, -0x1

    .line 171
    .end local v3    # "previous":Ljava/lang/CharSequence;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 172
    goto :goto_9

    .line 163
    .restart local v3    # "previous":Ljava/lang/CharSequence;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public static removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "csv"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string p1, ""

    .line 68
    .end local p1    # "csv":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p1

    .line 62
    .restart local p1    # "csv":Ljava/lang/String;
    :cond_9
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "elements":[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_20
    if-ge v3, v4, :cond_30

    aget-object v1, v0, v3

    .line 66
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 68
    .end local v1    # "element":Ljava/lang/String;
    :cond_30
    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static toCodePointArray(Ljava/lang/String;)[I
    .registers 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 193
    .local v0, "characters":[C
    array-length v4, v0

    .line 194
    .local v4, "length":I
    invoke-static {v0, v7, v4}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v6

    new-array v2, v6, [I

    .line 195
    .local v2, "codePoints":[I
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 196
    .local v1, "codePoint":I
    const/4 v3, 0x0

    .line 197
    .local v3, "dsti":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 198
    .local v5, "srci":I
    :goto_15
    if-ge v5, v4, :cond_25

    .line 199
    aput v1, v2, v3

    .line 200
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 198
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 202
    :cond_25
    aput v1, v2, v3

    .line 203
    return-object v2
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x1

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_8

    .line 188
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
