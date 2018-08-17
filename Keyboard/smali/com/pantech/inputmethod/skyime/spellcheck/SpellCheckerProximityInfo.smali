.class public Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo;
.super Ljava/lang/Object;
.source "SpellCheckerProximityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Cyrillic;,
        Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Latin;
    }
.end annotation


# static fields
.field private static final NOT_AN_INDEX:I = -0x1

.field public static final NOT_A_COORDINATE_PAIR:I = -0x1

.field public static final NUL:I = -0x1

.field public static final PROXIMITY_GRID_HEIGHT:I = 0x3

.field public static final PROXIMITY_GRID_WIDTH:I = 0xb

.field public static final ROW_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method protected static final buildProximityIndices([ILjava/util/TreeMap;)V
    .registers 5
    .param p0, "proximity"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "indices":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 44
    const/4 v1, -0x1

    aget v2, p0, v0

    if-eq v1, v2, :cond_18

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 v2, v0, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_18
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 46
    :cond_1b
    return-void
.end method

.method protected static final computeIndex(ILjava/util/TreeMap;)I
    .registers 4
    .param p0, "characterCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "indices":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, -0x1

    .line 51
    :goto_d
    return v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_d
.end method

.method private static getIndexOfCodeForScript(II)I
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "script"    # I

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_26

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong script supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_1c
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Latin;->getIndexOf(I)I

    move-result v0

    .line 192
    :goto_20
    return v0

    :pswitch_21
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Cyrillic;->getIndexOf(I)I

    move-result v0

    goto :goto_20

    .line 188
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method public static getProximityForScript(I)[I
    .registers 4
    .param p0, "script"    # I

    .prologue
    .line 177
    packed-switch p0, :pswitch_data_22

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong script supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_1c
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Latin;->PROXIMITY:[I

    .line 181
    :goto_1e
    return-object v0

    :pswitch_1f
    sget-object v0, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo$Cyrillic;->PROXIMITY:[I

    goto :goto_1e

    .line 177
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public static getXYForCodePointAndScript(II)I
    .registers 7
    .param p0, "codePoint"    # I
    .param p1, "script"    # I

    .prologue
    const/4 v3, -0x1

    .line 203
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo;->getIndexOfCodeForScript(II)I

    move-result v0

    .line 204
    .local v0, "index":I
    if-ne v3, v0, :cond_8

    .line 211
    :goto_7
    return v3

    .line 205
    :cond_8
    div-int/lit8 v2, v0, 0xb

    .line 206
    .local v2, "y":I
    rem-int/lit8 v1, v0, 0xb

    .line 207
    .local v1, "x":I
    const/4 v3, 0x3

    if-le v2, v3, :cond_17

    .line 209
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Wrong y coordinate in spell checker proximity"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_17
    shl-int/lit8 v3, v2, 0x10

    add-int/2addr v3, v1

    goto :goto_7
.end method
