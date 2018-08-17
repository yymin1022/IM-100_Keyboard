.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharGroup"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NOT_A_TERMINAL:I = -0x1


# instance fields
.field mBigrams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field

.field mCachedAddress:I

.field mCachedSize:I

.field final mChars:[I

.field mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

.field mFrequency:I

.field mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-class v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 6
    .param p1, "chars"    # [I
    .param p4, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .local p3, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    .line 111
    iput p4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 112
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 113
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 115
    return-void
.end method

.method public constructor <init>([ILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V
    .registers 6
    .param p1, "chars"    # [I
    .param p4, "frequency"    # I
    .param p5, "children"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;I",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .local p3, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    .line 120
    iput p4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 121
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 122
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 123
    iput-object p5, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 124
    return-void
.end method


# virtual methods
.method public addBigram(Ljava/lang/String;I)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 150
    :cond_b
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->getBigram(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    move-result-object v0

    .line 151
    .local v0, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    if-eqz v0, :cond_14

    .line 152
    iput p2, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    .line 157
    :goto_13
    return-void

    .line 154
    :cond_14
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .end local v0    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    invoke-direct {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    .line 155
    .restart local v0    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public addChild(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)V
    .registers 3
    .param p1, "n"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public getBigram(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .registers 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v3, :cond_21

    .line 184
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 185
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_21

    .line 186
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 187
    .local v0, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 192
    .end local v0    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :goto_1d
    return-object v0

    .line 185
    .restart local v0    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 192
    .end local v0    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getShortcut(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .registers 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v3, :cond_21

    .line 166
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_21

    .line 168
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 169
    .local v1, "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v3, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 174
    .end local v0    # "i":I
    .end local v1    # "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v2    # "size":I
    :goto_1d
    return-object v1

    .line 167
    .restart local v0    # "i":I
    .restart local v1    # "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .restart local v2    # "size":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 174
    .end local v0    # "i":I
    .end local v1    # "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v2    # "size":I
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public hasSeveralChars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 138
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v1, v1

    if-gtz v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_10
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isTerminal()Z
    .registers 3

    .prologue
    .line 134
    const/4 v0, -0x1

    iget v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public update(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .local p3, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    iget v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-le p1, v6, :cond_6

    .line 203
    iput p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    .line 205
    :cond_6
    if-eqz p2, :cond_e

    .line 206
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-nez v6, :cond_17

    .line 207
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    .line 221
    :cond_e
    if-eqz p3, :cond_16

    .line 222
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-nez v6, :cond_3f

    .line 223
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    .line 237
    :cond_16
    return-void

    .line 209
    :cond_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 210
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v5, :cond_e

    .line 211
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 212
    .local v4, "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v6, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->getShortcut(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    move-result-object v2

    .line 213
    .local v2, "existingShortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    if-nez v2, :cond_34

    .line 214
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 215
    :cond_34
    iget v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v7, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-ge v6, v7, :cond_31

    .line 216
    iget v6, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iput v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    goto :goto_31

    .line 225
    .end local v2    # "existingShortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v3    # "i":I
    .end local v4    # "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v5    # "size":I
    :cond_3f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 226
    .restart local v5    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_44
    if-ge v3, v5, :cond_16

    .line 227
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 228
    .local v0, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->getBigram(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    move-result-object v1

    .line 229
    .local v1, "existingBigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    if-nez v1, :cond_5c

    .line 230
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 231
    :cond_5c
    iget v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iget v7, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    if-ge v6, v7, :cond_59

    .line 232
    iget v6, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    iput v6, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    goto :goto_59
.end method
