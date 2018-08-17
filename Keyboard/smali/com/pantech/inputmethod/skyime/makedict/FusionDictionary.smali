.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.super Ljava/lang/Object;
.source "FusionDictionary.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$1;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;,
        Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/pantech/inputmethod/skyime/makedict/Word;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ARRAYS_ARE_EQUAL:I

.field private static CHARACTER_NOT_FOUND:I

.field private static final CHARGROUP_COMPARATOR:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;

.field private static final DBG:Z


# instance fields
.field public final mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

.field public final mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->$assertionsDisabled:Z

    .line 437
    sput v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    .line 478
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;-><init>(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$1;)V

    sput-object v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARGROUP_COMPARATOR:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;

    .line 491
    const/4 v0, -0x1

    sput v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    return-void

    :cond_1a
    move v0, v1

    .line 29
    goto :goto_a
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;)V
    .registers 3
    .param p1, "root"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .param p2, "options"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 262
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    .line 263
    return-void
.end method

.method private add([IILjava/util/ArrayList;)V
    .registers 24
    .param p1, "word"    # [I
    .param p2, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p3, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->$assertionsDisabled:Z

    if-nez v5, :cond_12

    if-ltz p2, :cond_c

    const/16 v5, 0xff

    move/from16 v0, p2

    if-le v0, v5, :cond_12

    :cond_c
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 356
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 357
    .local v13, "currentNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    const/4 v11, 0x0

    .line 359
    .local v11, "charIndex":I
    const/4 v12, 0x0

    .line 360
    .local v12, "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    const/4 v14, 0x0

    .line 361
    .local v14, "differentCharIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    aget v6, p1, v11

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findIndexOfChar(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I

    move-result v19

    .line 362
    .local v19, "nodeIndex":I
    :goto_23
    sget v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    move/from16 v0, v19

    if-eq v5, v0, :cond_44

    .line 363
    iget-object v5, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    check-cast v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 364
    .restart local v12    # "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v11}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->compareArrays([I[II)I

    move-result v14

    .line 365
    sget v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    if-eq v5, v14, :cond_6c

    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v5, v5

    if-ge v14, v5, :cond_6c

    .line 374
    :cond_44
    const/4 v5, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_82

    .line 376
    aget v5, p1, v11

    invoke-static {v13, v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findInsertionIndex(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I

    move-result v15

    .line 377
    .local v15, "insertionIndex":I
    new-instance v16, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v6, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 380
    .local v16, "newGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v5, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 435
    .end local v15    # "insertionIndex":I
    .end local v16    # "newGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :goto_6b
    return-void

    .line 367
    :cond_6c
    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v5, :cond_44

    .line 368
    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v5, v5

    add-int/2addr v11, v5

    .line 369
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v11, v5, :cond_44

    .line 370
    iget-object v13, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 371
    aget v5, p1, v11

    invoke-static {v13, v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findIndexOfChar(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I

    move-result v19

    goto :goto_23

    .line 384
    :cond_82
    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v5, v5

    if-ne v14, v5, :cond_bf

    .line 385
    add-int v5, v11, v14

    move-object/from16 v0, p1

    array-length v6, v0

    if-lt v5, v6, :cond_97

    .line 389
    const/4 v5, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1, v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->update(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6b

    .line 393
    :cond_97
    new-instance v17, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    add-int v5, v11, v14

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v6, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 396
    .local v17, "newNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    new-instance v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct {v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;-><init>()V

    iput-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 397
    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    iget-object v5, v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 400
    .end local v17    # "newNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_bf
    if-nez v14, :cond_ca

    .line 403
    const/4 v5, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1, v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->update(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6b

    .line 407
    :cond_ca
    new-instance v9, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct {v9}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;-><init>()V

    .line 408
    .local v9, "newChildren":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    new-instance v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    iget-object v6, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v6, v6

    invoke-static {v5, v14, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    iget-object v6, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    iget v7, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    iget-object v8, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct/range {v3 .. v8}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V

    .line 412
    .local v3, "newOldWord":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v5, v9, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int v5, v11, v14

    move-object/from16 v0, p1

    array-length v6, v0

    if-lt v5, v6, :cond_10b

    .line 416
    new-instance v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v14}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p3

    move/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V

    .line 430
    .local v4, "newParent":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :goto_102
    iget-object v5, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 420
    .end local v4    # "newParent":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_10b
    new-instance v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    iget-object v5, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v14}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V

    .line 423
    .restart local v4    # "newParent":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    new-instance v18, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    add-int v5, v11, v14

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v6, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 426
    .local v18, "newWord":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    add-int v5, v11, v14

    aget v5, p1, v5

    iget-object v6, v12, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    aget v6, v6, v14

    if-le v5, v6, :cond_144

    const/4 v10, 0x1

    .line 428
    .local v10, "addIndex":I
    :goto_13c
    iget-object v5, v9, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_102

    .line 426
    .end local v10    # "addIndex":I
    :cond_144
    const/4 v10, 0x0

    goto :goto_13c
.end method

.method private checkStack(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V
    .registers 8
    .param p1, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 312
    iget-object v3, p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 313
    .local v3, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    const/4 v2, -0x1

    .line 314
    .local v2, "lastValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 315
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    iget-object v4, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 316
    .local v0, "currentValue":I
    if-gt v0, v2, :cond_1f

    .line 317
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid stack"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_1f
    move v2, v0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 321
    .end local v0    # "currentValue":I
    :cond_23
    return-void
.end method

.method private static compareArrays([I[II)I
    .registers 6
    .param p0, "src"    # [I
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I

    .prologue
    .line 457
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_15

    .line 458
    add-int v1, p2, v0

    array-length v2, p1

    if-lt v1, v2, :cond_a

    .line 462
    .end local v0    # "i":I
    :cond_9
    :goto_9
    return v0

    .line 459
    .restart local v0    # "i":I
    :cond_a
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    if-ne v1, v2, :cond_9

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    :cond_15
    array-length v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1b

    array-length v0, p0

    goto :goto_9

    .line 462
    :cond_1b
    sget v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->ARRAYS_ARE_EQUAL:I

    goto :goto_9
.end method

.method public static countCharGroups(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I
    .registers 6
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 547
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 548
    .local v2, "nodeSize":I
    move v3, v2

    .line 549
    .local v3, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 550
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 551
    .local v0, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v4, :cond_1e

    .line 552
    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->countCharGroups(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v4

    add-int/2addr v3, v4

    .line 549
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 554
    .end local v0    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_21
    return v3
.end method

.method public static countNodes(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I
    .registers 5
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 564
    const/4 v2, 0x1

    .line 565
    .local v2, "size":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 566
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 567
    .local v0, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v3, :cond_1e

    .line 568
    iget-object v3, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->countNodes(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v3

    add-int/2addr v2, v3

    .line 565
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 570
    .end local v0    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_21
    return v2
.end method

.method private static findIndexOfChar(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I
    .registers 5
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .param p1, "character"    # I

    .prologue
    .line 501
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findInsertionIndex(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I

    move-result v0

    .line 502
    .local v0, "insertionIndex":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_f

    sget v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    .line 503
    .end local v0    # "insertionIndex":I
    :cond_e
    :goto_e
    return v0

    .restart local v0    # "insertionIndex":I
    :cond_f
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq p1, v1, :cond_e

    sget v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    goto :goto_e
.end method

.method private static findInsertionIndex(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I
    .registers 8
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .param p1, "character"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 484
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 485
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    new-instance v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    invoke-direct {v1, v3, v5, v5, v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 487
    .local v1, "reference":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    sget-object v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARGROUP_COMPARATOR:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroupComparator;

    invoke-static {v0, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 488
    .local v2, "result":I
    if-ltz v2, :cond_17

    .end local v2    # "result":I
    :goto_16
    return v2

    .restart local v2    # "result":I
    :cond_17
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x1

    goto :goto_16
.end method

.method public static findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .registers 7
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 511
    const/4 v2, 0x0

    .line 512
    .local v2, "index":I
    const/4 v0, 0x0

    .line 516
    .local v0, "checker":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {p0, v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findIndexOfChar(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;I)I

    move-result v3

    .line 517
    .local v3, "indexOfGroup":I
    sget v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->CHARACTER_NOT_FOUND:I

    if-ne v4, v3, :cond_10

    const/4 v1, 0x0

    .line 527
    :cond_f
    :goto_f
    return-object v1

    .line 518
    :cond_10
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 520
    .local v1, "currentGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v4, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v4, v4

    add-int/2addr v2, v4

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_24

    .line 522
    iget-object p0, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 524
    :cond_24
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_2

    goto :goto_f
.end method

.method private static getCodePoints(Ljava/lang/String;)[I
    .registers 9
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 276
    .local v0, "characters":[C
    array-length v4, v0

    .line 277
    .local v4, "length":I
    invoke-static {v0, v7, v4}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v6

    new-array v2, v6, [I

    .line 278
    .local v2, "codePoints":[I
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 279
    .local v1, "codePoint":I
    const/4 v3, 0x0

    .line 280
    .local v3, "dsti":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 281
    .local v5, "srci":I
    :goto_15
    if-ge v5, v4, :cond_25

    .line 282
    aput v1, v2, v3

    .line 283
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 281
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 285
    :cond_25
    aput v1, v2, v3

    .line 286
    return-object v2
.end method

.method private static hasBigramsInternal(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Z
    .registers 6
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 577
    if-nez p0, :cond_5

    .line 583
    :cond_4
    :goto_4
    return v2

    .line 578
    :cond_5
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_4

    .line 579
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 580
    .local v0, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v4, :cond_1d

    move v2, v3

    goto :goto_4

    .line 581
    :cond_1d
    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->hasBigramsInternal(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Z

    move-result v4

    if-eqz v4, :cond_27

    move v2, v3

    goto :goto_4

    .line 578
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p3, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->getCodePoints(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->add([IILjava/util/ArrayList;)V

    .line 303
    return-void
.end method

.method public addOptionAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public hasBigrams()Z
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->hasBigramsInternal(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Z

    move-result v0

    return v0
.end method

.method public hasWord(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 534
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 535
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t search for a null or empty string"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_12
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryIterator;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public mergeTails()V
    .registers 2

    .prologue
    .line 611
    const-string v0, "Do not merge tails"

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public setBigram(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 331
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v2, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-result-object v0

    .line 332
    .local v0, "charGroup":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    if-eqz v0, :cond_1d

    .line 333
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v2, p2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-result-object v1

    .line 334
    .local v1, "charGroup2":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    if-nez v1, :cond_19

    .line 335
    invoke-static {p2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->getCodePoints(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->add([IILjava/util/ArrayList;)V

    .line 337
    :cond_19
    invoke-virtual {v0, p2, p3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->addBigram(Ljava/lang/String;I)V

    .line 341
    return-void

    .line 339
    .end local v1    # "charGroup2":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "First word of bigram not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
