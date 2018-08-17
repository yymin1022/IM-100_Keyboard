.class Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;
.super Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;
.source "KeyStyles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredKeyStyle"
.end annotation


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;-><init>(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$1;)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$1;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;
    .param p1, "x1"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->addParent(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;Landroid/content/res/TypedArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private addParent(Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;)V
    .registers 4
    .param p1, "parentStyle"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method private parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V
    .registers 3
    .param p1, "keyAttr"    # Landroid/content/res/TypedArray;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 162
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 164
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 166
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 167
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readTextArray(Landroid/content/res/TypedArray;I)V

    .line 169
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readFlag(Landroid/content/res/TypedArray;I)V

    .line 170
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 171
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 172
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 173
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 174
    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 175
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 176
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 178
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 179
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 180
    return-void
.end method

.method private readBoolean(Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 199
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 200
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_18
    return-void
.end method

.method private readFlag(Landroid/content/res/TypedArray;I)V
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 195
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_23
    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_2b
    return-void
.end method

.method private readInt(Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 188
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 189
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_18
    return-void
.end method

.method private readText(Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 183
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_13
    return-void
.end method

.method private readTextArray(Landroid/content/res/TypedArray;I)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 204
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    .local v0, "value":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_f

    .line 206
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_f
    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 152
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .end local p3    # "defaultValue":Z
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v1

    return v1
.end method

.method public getFlag(Landroid/content/res/TypedArray;II)I
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    .local v0, "value":Ljava/lang/Integer;
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v2

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_16
    or-int/2addr v1, v2

    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 140
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .end local p3    # "defaultValue":I
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v1

    return v1
.end method

.method public getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_a
.end method

.method public getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$EmptyKeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    check-cast v0, [Ljava/lang/CharSequence;

    goto :goto_a
.end method
