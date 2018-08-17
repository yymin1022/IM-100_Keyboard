.class Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;
.super Ljava/lang/Object;
.source "KeyStyles.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$KeyStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyKeyStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;-><init>()V

    return-void
.end method

.method static parseCsvText(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 80
    .local v4, "size":I
    if-nez v4, :cond_a

    const/4 v6, 0x0

    .line 117
    :goto_9
    return-object v6

    .line 81
    :cond_a
    if-ne v4, v7, :cond_11

    new-array v6, v7, [Ljava/lang/CharSequence;

    aput-object p0, v6, v8

    goto :goto_9

    .line 82
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 84
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .line 85
    .local v5, "start":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_19
    if-ge v2, v4, :cond_77

    .line 86
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 87
    .local v0, "c":C
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_47

    .line 88
    if-nez v1, :cond_2a

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3c

    .line 90
    invoke-interface {p0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_37
    add-int/lit8 v5, v2, 0x1

    .line 85
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 92
    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_37

    .line 97
    :cond_47
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_6d

    .line 98
    if-ne v5, v2, :cond_52

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 103
    :cond_52
    if-ge v5, v2, :cond_61

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_61

    .line 104
    invoke-interface {p0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 105
    :cond_61
    add-int/lit8 v2, v2, 0x1

    .line 106
    if-ge v2, v4, :cond_39

    .line 107
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 109
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_39

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 113
    .end local v0    # "c":C
    :cond_77
    if-nez v1, :cond_89

    .line 114
    new-array v6, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_84

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_81
    aput-object v3, v6, v8

    goto :goto_9

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_84
    invoke-interface {p0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_81

    .line 116
    :cond_89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_a0

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_8f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 116
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_a0
    invoke-interface {p0, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_8f
.end method

.method protected static parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 73
    const/4 v1, 0x0

    .line 75
    :goto_7
    return-object v1

    .line 74
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->parseCsvText(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_7
.end method


# virtual methods
.method public getBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # Z

    .prologue
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getFlag(Landroid/content/res/TypedArray;II)I
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
