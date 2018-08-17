.class public Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;
.super Ljava/lang/Object;
.source "BinaryDictInputOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTAINS_BIGRAMS_FLAG:I = 0x8

.field static final DBG:Z = false

.field private static final FIRST_VERSION_WITH_HEADER_SIZE:I = 0x2

.field private static final FLAG_ATTRIBUTE_ADDRESS_TYPE_ONEBYTE:I = 0x10

.field private static final FLAG_ATTRIBUTE_ADDRESS_TYPE_THREEBYTES:I = 0x30

.field private static final FLAG_ATTRIBUTE_ADDRESS_TYPE_TWOBYTES:I = 0x20

.field private static final FLAG_ATTRIBUTE_FREQUENCY:I = 0xf

.field private static final FLAG_ATTRIBUTE_HAS_NEXT:I = 0x80

.field private static final FLAG_ATTRIBUTE_OFFSET_NEGATIVE:I = 0x40

.field private static final FLAG_GROUP_ADDRESS_TYPE_NOADDRESS:I = 0x0

.field private static final FLAG_GROUP_ADDRESS_TYPE_ONEBYTE:I = 0x40

.field private static final FLAG_GROUP_ADDRESS_TYPE_THREEBYTES:I = 0xc0

.field private static final FLAG_GROUP_ADDRESS_TYPE_TWOBYTES:I = 0x80

.field private static final FLAG_HAS_BIGRAMS:I = 0x4

.field private static final FLAG_HAS_MULTIPLE_CHARS:I = 0x20

.field private static final FLAG_HAS_SHORTCUT_TARGETS:I = 0x8

.field private static final FLAG_IS_TERMINAL:I = 0x10

.field private static final FRENCH_LIGATURE_PROCESSING_FLAG:I = 0x4

.field private static final GERMAN_UMLAUT_PROCESSING_FLAG:I = 0x1

.field private static final GROUP_ATTRIBUTE_FLAGS_SIZE:I = 0x1

.field private static final GROUP_ATTRIBUTE_MAX_ADDRESS_SIZE:I = 0x3

.field private static final GROUP_CHARACTERS_TERMINATOR:I = 0x1f

.field private static final GROUP_FLAGS_SIZE:I = 0x1

.field private static final GROUP_FREQUENCY_SIZE:I = 0x1

.field private static final GROUP_MAX_ADDRESS_SIZE:I = 0x3

.field private static final GROUP_SHORTCUT_LIST_SIZE_SIZE:I = 0x2

.field private static final GROUP_TERMINATOR_SIZE:I = 0x1

.field private static final INVALID_CHARACTER:I = -0x1

.field private static final MASK_ATTRIBUTE_ADDRESS_TYPE:I = 0x30

.field private static final MASK_GROUP_ADDRESS_TYPE:I = 0xc0

.field private static final MAXIMUM_SUPPORTED_VERSION:I = 0x2

.field private static final MAX_BIGRAM_FREQUENCY:I = 0xf

.field private static final MAX_CHARGROUPS_FOR_ONE_BYTE_CHARGROUP_COUNT:I = 0x7f

.field private static final MAX_CHARGROUPS_IN_A_NODE:I = 0x7fff

.field private static final MAX_PASSES:I = 0x18

.field private static final MAX_TERMINAL_FREQUENCY:I = 0xff

.field private static final MAX_WORD_LENGTH:I = 0x30

.field private static final MINIMUM_SUPPORTED_VERSION:I = 0x1

.field private static final NOT_A_VERSION_NUMBER:I = -0x1

.field private static final NO_CHILDREN_ADDRESS:I = -0x80000000

.field private static final VERSION_1_MAGIC_NUMBER:I = 0x78b1

.field private static final VERSION_2_MAGIC_NUMBER:I = -0x643ec502

.field static final characterBuffer:[I

.field private static wordCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->$assertionsDisabled:Z

    .line 1093
    const/16 v0, 0x30

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->characterBuffer:[I

    .line 1208
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->wordCache:Ljava/util/TreeMap;

    return-void

    .line 41
    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method private static checkFlatNodeArray(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    const/4 v3, 0x0

    .line 657
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 658
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 659
    .local v2, "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iget v4, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    if-eq v4, v3, :cond_45

    .line 660
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong address for node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_45
    add-int/lit8 v1, v1, 0x1

    .line 664
    iget v4, v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v3, v4

    .line 665
    goto :goto_6

    .line 666
    .end local v2    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_4b
    return-void
.end method

.method private static computeActualNodeSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;)Z
    .registers 14
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .param p1, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, "changed":Z
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v9

    .line 542
    .local v9, "size":I
    iget-object v10, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 543
    .local v3, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    iget v11, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v11, v9

    if-eq v10, v11, :cond_24

    .line 544
    const/4 v2, 0x1

    .line 545
    iget v10, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v9

    iput v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 547
    :cond_24
    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCharactersSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 548
    .local v4, "groupSize":I
    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->isTerminal()Z

    move-result v10

    if-eqz v10, :cond_32

    add-int/lit8 v4, v4, 0x1

    .line 549
    :cond_32
    iget-object v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v10, :cond_46

    .line 550
    iget v10, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v4

    add-int v8, v10, v9

    .line 551
    .local v8, "offsetBasePoint":I
    iget-object v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    iget v10, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    sub-int v7, v10, v8

    .line 552
    .local v7, "offset":I
    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v10

    add-int/2addr v4, v10

    .line 554
    .end local v7    # "offset":I
    .end local v8    # "offsetBasePoint":I
    :cond_46
    iget-object v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getShortcutListSize(Ljava/util/ArrayList;)I

    move-result v10

    add-int/2addr v4, v10

    .line 555
    iget-object v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v10, :cond_79

    .line 556
    iget-object v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 557
    .local v1, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    iget v10, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    add-int/2addr v10, v4

    add-int/2addr v10, v9

    add-int/lit8 v8, v10, 0x1

    .line 559
    .restart local v8    # "offsetBasePoint":I
    iget-object v10, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    invoke-static {p1, v10}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->findAddressOfWord(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, "addressOfBigram":I
    sub-int v7, v0, v8

    .line 561
    .restart local v7    # "offset":I
    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v4, v10

    .line 562
    goto :goto_57

    .line 564
    .end local v0    # "addressOfBigram":I
    .end local v1    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "offset":I
    .end local v8    # "offsetBasePoint":I
    :cond_79
    iput v4, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    .line 565
    add-int/2addr v9, v4

    .line 566
    goto :goto_b

    .line 567
    .end local v3    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v4    # "groupSize":I
    :cond_7d
    iget v10, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    if-eq v10, v9, :cond_84

    .line 568
    iput v9, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 569
    const/4 v2, 0x1

    .line 571
    :cond_84
    return v2
.end method

.method private static computeAddresses(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14
    .param p0, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "flatNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .local v4, "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->setNodeMaximumSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V

    goto :goto_4

    .line 616
    .end local v4    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_14
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->stackNodes(Ljava/util/ArrayList;)I

    move-result v6

    .line 618
    .local v6, "offset":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compressing the array addresses. Original size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 619
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Recursively seen size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 621
    const/4 v8, 0x0

    .line 622
    .local v8, "passes":I
    const/4 v1, 0x0

    .line 624
    .local v1, "changesDone":Z
    :cond_4c
    const/4 v1, 0x0

    .line 625
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 626
    .restart local v4    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iget v7, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 627
    .local v7, "oldNodeSize":I
    invoke-static {v4, p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->computeActualNodeSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;)Z

    move-result v0

    .line 628
    .local v0, "changed":Z
    iget v5, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 629
    .local v5, "newNodeSize":I
    if-ge v7, v5, :cond_6f

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Increased size ?!"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 630
    :cond_6f
    or-int/2addr v1, v0

    .line 631
    goto :goto_51

    .line 632
    .end local v0    # "changed":Z
    .end local v4    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .end local v5    # "newNodeSize":I
    .end local v7    # "oldNodeSize":I
    :cond_71
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->stackNodes(Ljava/util/ArrayList;)I

    .line 633
    add-int/lit8 v8, v8, 0x1

    .line 634
    const/16 v9, 0x18

    if-le v8, v9, :cond_82

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Too many passes - probably a bug"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 635
    :cond_82
    if-nez v1, :cond_4c

    .line 637
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 638
    .local v3, "lastNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compression complete in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " passes."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 639
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After address compression : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    iget v11, v3, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 642
    return-object p1
.end method

.method private static findAddressOfWord(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;Ljava/lang/String;)I
    .registers 3
    .param p0, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-result-object v0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    return v0
.end method

.method static flattenTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "root"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->countCharGroups(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v1

    .line 482
    .local v1, "treeSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Counted nodes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    .local v0, "flatTree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    invoke-static {v0, p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->flattenTreeInner(Ljava/util/ArrayList;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private static flattenTreeInner(Ljava/util/ArrayList;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 507
    .local v0, "branches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 508
    .local v3, "nodeSize":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 509
    .local v1, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v4, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-static {p0, v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->flattenTreeInner(Ljava/util/ArrayList;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    goto :goto_d

    .line 511
    .end local v1    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_23
    return-object p0
.end method

.method private static getByteSize(I)I
    .registers 3
    .param p0, "address"    # I

    .prologue
    .line 465
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    const/high16 v0, 0x1000000

    if-lt p0, v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 466
    :cond_e
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 467
    const/4 v0, 0x0

    .line 473
    :goto_15
    return v0

    .line 468
    :cond_16
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_20

    .line 469
    const/4 v0, 0x1

    goto :goto_15

    .line 470
    :cond_20
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2a

    .line 471
    const/4 v0, 0x2

    goto :goto_15

    .line 473
    :cond_2a
    const/4 v0, 0x3

    goto :goto_15
.end method

.method private static getCharGroupMaximumSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I
    .registers 3
    .param p0, "group"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .prologue
    .line 419
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCharactersSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 421
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->isTerminal()Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 422
    :cond_e
    add-int/lit8 v0, v0, 0x3

    .line 423
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getShortcutListSize(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 425
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 428
    :cond_24
    return v0
.end method

.method private static getFormatVersion(Ljava/io/RandomAccessFile;)I
    .registers 5
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    .line 1324
    .local v0, "magic_v1":I
    const/16 v2, 0x78b1

    if-ne v2, v0, :cond_d

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    .line 1327
    :goto_c
    return v2

    .line 1325
    :cond_d
    shl-int/lit8 v2, v0, 0x10

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v3

    add-int v1, v2, v3

    .line 1326
    .local v1, "magic_v2":I
    const v2, -0x643ec502

    if-ne v2, v1, :cond_1f

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    goto :goto_c

    .line 1327
    :cond_1f
    const/4 v2, -0x1

    goto :goto_c
.end method

.method private static getGroupCharactersSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I
    .registers 3
    .param p0, "group"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$000([I)I

    move-result v0

    .line 353
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->hasSeveralChars()Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_e
    return v0
.end method

.method private static getGroupCountSize(I)I
    .registers 4
    .param p0, "count"    # I

    .prologue
    .line 363
    const/16 v0, 0x7f

    if-lt v0, p0, :cond_6

    .line 364
    const/4 v0, 0x1

    .line 366
    :goto_5
    return v0

    .line 365
    :cond_6
    const/16 v0, 0x7fff

    if-lt v0, p0, :cond_c

    .line 366
    const/4 v0, 0x2

    goto :goto_5

    .line 368
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t have more than 32767 groups in a node (found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getGroupCountSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I
    .registers 2
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v0

    return v0
.end method

.method private static getShortcutListSize(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "shortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    if-nez p0, :cond_4

    const/4 v2, 0x0

    .line 409
    :cond_3
    return v2

    .line 405
    :cond_4
    const/4 v2, 0x2

    .line 406
    .local v2, "size":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 407
    .local v1, "shortcut":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getShortcutSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 408
    goto :goto_9
.end method

.method private static getShortcutSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;)I
    .registers 7
    .param p0, "shortcut"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .prologue
    .line 386
    const/4 v3, 0x1

    .line 387
    .local v3, "size":I
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    .line 388
    .local v4, "word":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 389
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_19

    .line 390
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 391
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 389
    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_8

    .line 393
    .end local v0    # "codePoint":I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 394
    return v3
.end method

.method private static getWordAtAddress(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;
    .registers 21
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .param p1, "headerSize"    # J
    .param p3, "address"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    sget-object v12, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->wordCache:Ljava/util/TreeMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1221
    .local v3, "cachedString":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 1261
    .end local v3    # "cachedString":Ljava/lang/String;
    :goto_e
    return-object v3

    .line 1222
    .restart local v3    # "cachedString":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 1223
    .local v10, "originalPointer":J
    invoke-virtual/range {p0 .. p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1224
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readCharGroupCount(Ljava/io/RandomAccessFile;)I

    move-result v4

    .line 1225
    .local v4, "count":I
    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v5

    .line 1226
    .local v5, "groupOffset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 1229
    .local v9, "result":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1230
    .local v8, "last":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_27
    if-ltz v6, :cond_49

    .line 1231
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readCharGroup(Ljava/io/RandomAccessFile;I)Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;

    move-result-object v7

    .line 1232
    .local v7, "info":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    iget v5, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mEndAddress:I

    .line 1233
    iget v12, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mOriginalAddress:I

    move/from16 v0, p3

    if-ne v12, v0, :cond_59

    .line 1234
    new-instance v12, Ljava/lang/String;

    iget-object v13, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    const/4 v14, 0x0

    iget-object v15, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    array-length v15, v15

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1259
    .end local v7    # "info":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    :cond_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1260
    sget-object v12, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->wordCache:Ljava/util/TreeMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v9

    .line 1261
    goto :goto_e

    .line 1238
    .restart local v7    # "info":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    :cond_59
    iget v12, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v12}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 1239
    iget v12, v7, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    move/from16 v0, p3

    if-le v12, v0, :cond_8e

    .line 1240
    if-nez v8, :cond_6c

    .line 1230
    :cond_69
    :goto_69
    add-int/lit8 v6, v6, -0x1

    goto :goto_27

    .line 1241
    :cond_6c
    new-instance v12, Ljava/lang/String;

    iget-object v13, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    array-length v15, v15

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    iget v12, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    int-to-long v12, v12

    add-long v12, v12, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1243
    iget v12, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    add-int/lit8 v5, v12, 0x1

    .line 1244
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v6

    .line 1245
    const/4 v8, 0x0

    .line 1246
    goto :goto_69

    .line 1248
    :cond_8e
    move-object v8, v7

    .line 1250
    :cond_8f
    if-nez v6, :cond_69

    iget v12, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v12}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v12

    if-eqz v12, :cond_69

    .line 1251
    new-instance v12, Ljava/lang/String;

    iget-object v13, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    array-length v15, v15

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    iget v12, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    int-to-long v12, v12

    add-long v12, v12, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1253
    iget v12, v8, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    add-int/lit8 v5, v12, 0x1

    .line 1254
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v6

    .line 1255
    const/4 v8, 0x0

    .line 1256
    goto :goto_69
.end method

.method private static hasChildrenAddress(I)Z
    .registers 2
    .param p0, "address"    # I

    .prologue
    .line 451
    const/high16 v0, -0x80000000

    if-eq v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isBinaryDictionary(Ljava/lang/String;)Z
    .registers 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1404
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v1, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getFormatVersion(Ljava/io/RandomAccessFile;)I

    move-result v2

    .line 1406
    .local v2, "version":I
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_1b

    .line 1407
    if-lt v2, v3, :cond_17

    const/4 v5, 0x2

    if-gt v2, v5, :cond_17

    :goto_15
    move v4, v3

    .line 1411
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    .end local v2    # "version":I
    :goto_16
    return v4

    .restart local v1    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "version":I
    :cond_17
    move v3, v4

    .line 1407
    goto :goto_15

    .line 1408
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    .end local v2    # "version":I
    :catch_19
    move-exception v0

    .line 1409
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_16

    .line 1410
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1b
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/io/IOException;
    goto :goto_16
.end method

.method private static final makeBigramFlags(ZIIILjava/lang/String;)I
    .registers 19
    .param p0, "more"    # Z
    .param p1, "offset"    # I
    .param p2, "bigramFrequency"    # I
    .param p3, "unigramFrequency"    # I
    .param p4, "word"    # Ljava/lang/String;

    .prologue
    .line 746
    if-eqz p0, :cond_1a

    const/16 v5, 0x80

    move v10, v5

    :goto_5
    if-gez p1, :cond_1d

    const/16 v5, 0x40

    :goto_9
    add-int v2, v10, v5

    .line 748
    .local v2, "bigramFlags":I
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v5

    packed-switch v5, :pswitch_data_90

    .line 759
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v10, "Strange offset size"

    invoke-direct {v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 746
    .end local v2    # "bigramFlags":I
    :cond_1a
    const/4 v5, 0x0

    move v10, v5

    goto :goto_5

    :cond_1d
    const/4 v5, 0x0

    goto :goto_9

    .line 750
    .restart local v2    # "bigramFlags":I
    :pswitch_1f
    or-int/lit8 v2, v2, 0x10

    .line 761
    :goto_21
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_65

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unigram freq is superior to bigram freq for \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\". Bigram freq is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", unigram freq for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->e(Ljava/lang/String;)V

    .line 765
    move/from16 p2, p3

    .line 790
    :cond_65
    move/from16 v0, p3

    rsub-int v5, v0, 0xff

    int-to-double v10, v5

    const-wide v12, 0x4030800000000000L    # 16.5

    div-double v8, v10, v12

    .line 792
    .local v8, "stepSize":D
    add-int/lit8 v5, p3, 0x1

    int-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    .line 793
    .local v6, "firstStepStart":D
    move/from16 v0, p2

    int-to-double v10, v0

    sub-double/2addr v10, v6

    div-double/2addr v10, v8

    double-to-int v3, v10

    .line 799
    .local v3, "discretizedFrequency":I
    if-lez v3, :cond_8d

    move v4, v3

    .line 800
    .local v4, "finalBigramFrequency":I
    :goto_83
    and-int/lit8 v5, v4, 0xf

    add-int/2addr v2, v5

    .line 801
    return v2

    .line 753
    .end local v3    # "discretizedFrequency":I
    .end local v4    # "finalBigramFrequency":I
    .end local v6    # "firstStepStart":D
    .end local v8    # "stepSize":D
    :pswitch_87
    or-int/lit8 v2, v2, 0x20

    .line 754
    goto :goto_21

    .line 756
    :pswitch_8a
    or-int/lit8 v2, v2, 0x30

    .line 757
    goto :goto_21

    .line 799
    .restart local v3    # "discretizedFrequency":I
    .restart local v6    # "firstStepStart":D
    .restart local v8    # "stepSize":D
    :cond_8d
    const/4 v4, 0x0

    goto :goto_83

    .line 748
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_87
        :pswitch_8a
    .end packed-switch
.end method

.method private static makeCharGroupFlags(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;II)B
    .registers 6
    .param p0, "group"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .param p1, "groupAddress"    # I
    .param p2, "childrenOffset"    # I

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "flags":B
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    const/16 v1, 0x20

    int-to-byte v0, v1

    .line 701
    :cond_a
    iget v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-ltz v1, :cond_11

    .line 702
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 704
    :cond_11
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    if-eqz v1, :cond_27

    .line 705
    invoke-static {p2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 716
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Node with a strange address"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :pswitch_24
    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    .line 719
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    .line 723
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 725
    :cond_2e
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    .line 729
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 731
    :cond_35
    return v0

    .line 710
    :pswitch_36
    or-int/lit16 v1, v0, 0x80

    int-to-byte v0, v1

    .line 711
    goto :goto_27

    .line 713
    :pswitch_3a
    or-int/lit16 v1, v0, 0xc0

    int-to-byte v0, v1

    .line 714
    goto :goto_27

    .line 705
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method private static final makeOptionsValue(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;)I
    .registers 6
    .param p0, "dictionary"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    .prologue
    const/4 v3, 0x0

    .line 808
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    .line 809
    .local v1, "options":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->hasBigrams()Z

    move-result v0

    .line 810
    .local v0, "hasBigrams":Z
    iget-boolean v2, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mFrenchLigatureProcessing:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x4

    :goto_c
    iget-boolean v4, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mGermanUmlautProcessing:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    :goto_11
    add-int/2addr v2, v4

    if-eqz v0, :cond_16

    const/16 v3, 0x8

    :cond_16
    add-int/2addr v2, v3

    return v2

    :cond_18
    move v2, v3

    goto :goto_c

    :cond_1a
    move v4, v3

    goto :goto_11
.end method

.method private static final makeShortcutFlags(ZI)I
    .registers 4
    .param p0, "more"    # Z
    .param p1, "frequency"    # I

    .prologue
    .line 823
    if-eqz p0, :cond_8

    const/16 v0, 0x80

    :goto_4
    and-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static readCharGroup(Ljava/io/RandomAccessFile;I)Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    .registers 26
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .param p1, "originalGroupAddress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1096
    move/from16 v4, p1

    .line 1097
    .local v4, "addressPointer":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v5

    .line 1098
    .local v5, "flags":I
    add-int/lit8 v4, v4, 0x1

    .line 1100
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_9d

    .line 1101
    const/4 v14, 0x0

    .line 1102
    .local v14, "index":I
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Ljava/io/RandomAccessFile;)I

    move-result v13

    .line 1103
    .local v13, "character":I
    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    move v15, v14

    .line 1104
    .end local v14    # "index":I
    .local v15, "index":I
    :goto_17
    const/4 v2, -0x1

    if-eq v2, v13, :cond_2b

    .line 1105
    sget-object v2, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->characterBuffer:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aput v13, v2, v15

    .line 1106
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Ljava/io/RandomAccessFile;)I

    move-result v13

    .line 1107
    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_17

    .line 1109
    :cond_2b
    sget-object v2, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->characterBuffer:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v15}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    .line 1116
    .end local v15    # "index":I
    .local v6, "characters":[I
    :goto_32
    and-int/lit8 v2, v5, 0x10

    if-eqz v2, :cond_ad

    .line 1117
    add-int/lit8 v4, v4, 0x1

    .line 1118
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v7

    .line 1122
    .local v7, "frequency":I
    :goto_3c
    move v8, v4

    .line 1123
    .local v8, "childrenAddress":I
    and-int/lit16 v2, v5, 0xc0

    sparse-switch v2, :sswitch_data_10e

    .line 1138
    const/high16 v8, -0x80000000

    .line 1141
    :goto_44
    const/4 v9, 0x0

    .line 1142
    .local v9, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_79

    .line 1143
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v18

    .line 1144
    .local v18, "pointerBefore":J
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .restart local v9    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    .line 1147
    :cond_55
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v20

    .line 1148
    .local v20, "targetFlags":I
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v21

    .line 1149
    .local v21, "word":Ljava/lang/String;
    new-instance v2, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    and-int/lit8 v3, v20, 0xf

    move-object/from16 v0, v21

    invoke-direct {v2, v0, v3}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_55

    .line 1153
    int-to-long v2, v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    sub-long v22, v22, v18

    add-long v2, v2, v22

    long-to-int v4, v2

    .line 1155
    .end local v18    # "pointerBefore":J
    .end local v20    # "targetFlags":I
    .end local v21    # "word":Ljava/lang/String;
    :cond_79
    const/4 v10, 0x0

    .line 1156
    .local v10, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    and-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_e9

    .line 1157
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .restart local v10    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    :cond_83
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v12

    .line 1160
    .local v12, "bigramFlags":I
    add-int/lit8 v4, v4, 0x1

    .line 1161
    and-int/lit8 v2, v12, 0x40

    if-nez v2, :cond_cf

    const/16 v17, 0x1

    .line 1162
    .local v17, "sign":I
    :goto_8f
    move v11, v4

    .line 1163
    .local v11, "bigramAddress":I
    and-int/lit8 v2, v12, 0x30

    sparse-switch v2, :sswitch_data_11c

    .line 1179
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Has bigrams with no address"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1111
    .end local v6    # "characters":[I
    .end local v7    # "frequency":I
    .end local v8    # "childrenAddress":I
    .end local v9    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .end local v10    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    .end local v11    # "bigramAddress":I
    .end local v12    # "bigramFlags":I
    .end local v13    # "character":I
    .end local v17    # "sign":I
    :cond_9d
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$500(Ljava/io/RandomAccessFile;)I

    move-result v13

    .line 1112
    .restart local v13    # "character":I
    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$100(I)I

    move-result v2

    add-int/2addr v4, v2

    .line 1113
    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    aput v13, v6, v2

    .restart local v6    # "characters":[I
    goto :goto_32

    .line 1120
    :cond_ad
    const/4 v7, -0x1

    .restart local v7    # "frequency":I
    goto :goto_3c

    .line 1125
    .restart local v8    # "childrenAddress":I
    :sswitch_af
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    add-int/2addr v8, v2

    .line 1126
    add-int/lit8 v4, v4, 0x1

    .line 1127
    goto :goto_44

    .line 1129
    :sswitch_b7
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    add-int/2addr v8, v2

    .line 1130
    add-int/lit8 v4, v4, 0x2

    .line 1131
    goto :goto_44

    .line 1133
    :sswitch_bf
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 1134
    add-int/lit8 v4, v4, 0x3

    .line 1135
    goto/16 :goto_44

    .line 1161
    .restart local v9    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .restart local v10    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;>;"
    .restart local v12    # "bigramFlags":I
    :cond_cf
    const/16 v17, -0x1

    goto :goto_8f

    .line 1165
    .restart local v11    # "bigramAddress":I
    .restart local v17    # "sign":I
    :sswitch_d2
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int v2, v2, v17

    add-int/2addr v11, v2

    .line 1166
    add-int/lit8 v4, v4, 0x1

    .line 1181
    :goto_db
    new-instance v2, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;

    and-int/lit8 v3, v12, 0xf

    invoke-direct {v2, v3, v11}, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    and-int/lit16 v2, v12, 0x80

    if-nez v2, :cond_83

    .line 1186
    .end local v11    # "bigramAddress":I
    .end local v12    # "bigramFlags":I
    .end local v17    # "sign":I
    :cond_e9
    new-instance v2, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;-><init>(III[IIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    .line 1169
    .restart local v11    # "bigramAddress":I
    .restart local v12    # "bigramFlags":I
    .restart local v17    # "sign":I
    :sswitch_f1
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    mul-int v2, v2, v17

    add-int/2addr v11, v2

    .line 1170
    add-int/lit8 v4, v4, 0x2

    .line 1171
    goto :goto_db

    .line 1173
    :sswitch_fb
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v3

    add-int v16, v2, v3

    .line 1175
    .local v16, "offset":I
    mul-int v2, v17, v16

    add-int/2addr v11, v2

    .line 1176
    add-int/lit8 v4, v4, 0x3

    .line 1177
    goto :goto_db

    .line 1123
    nop

    :sswitch_data_10e
    .sparse-switch
        0x40 -> :sswitch_af
        0x80 -> :sswitch_b7
        0xc0 -> :sswitch_bf
    .end sparse-switch

    .line 1163
    :sswitch_data_11c
    .sparse-switch
        0x10 -> :sswitch_d2
        0x20 -> :sswitch_f1
        0x30 -> :sswitch_fb
    .end sparse-switch
.end method

.method private static readCharGroupCount(Ljava/io/RandomAccessFile;)I
    .registers 4
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    .line 1195
    .local v0, "msb":I
    const/16 v1, 0x7f

    if-lt v1, v0, :cond_9

    .line 1198
    .end local v0    # "msb":I
    :goto_8
    return v0

    .restart local v0    # "msb":I
    :cond_9
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_8
.end method

.method public static readDictionaryBinary(Ljava/io/RandomAccessFile;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .registers 24
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .param p1, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getFormatVersion(Ljava/io/RandomAccessFile;)I

    move-result v17

    .line 1345
    .local v17, "version":I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_3d

    .line 1346
    :cond_14
    new-instance v19, Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "This file has version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", but this implementation does not support versions above "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1352
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v12

    .line 1355
    .local v12, "optionsFlags":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1356
    .local v11, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_b0

    .line 1357
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 1369
    .local v6, "headerSize":J
    :goto_52
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 1370
    .local v14, "reverseNodeMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 1371
    .local v13, "reverseGroupMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v14, v13}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readNode(Ljava/io/RandomAccessFile;JLjava/util/Map;Ljava/util/Map;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-result-object v15

    .line 1373
    .local v15, "root":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    new-instance v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;

    new-instance v21, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    and-int/lit8 v19, v12, 0x1

    if-eqz v19, :cond_ec

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6e
    and-int/lit8 v19, v12, 0x4

    if-eqz v19, :cond_f2

    const/16 v19, 0x1

    :goto_74
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;-><init>(Ljava/util/HashMap;ZZ)V

    move-object/from16 v0, v21

    invoke-direct {v10, v15, v0}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;-><init>(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;)V

    .line 1377
    .local v10, "newDict":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    if-eqz p1, :cond_133

    .line 1378
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/pantech/inputmethod/skyime/makedict/Word;

    .line 1379
    .local v18, "w":Lcom/pantech/inputmethod/skyime/makedict/Word;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mFrequency:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mShortcutTargets:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->add(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_88

    .line 1359
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "headerSize":J
    .end local v10    # "newDict":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .end local v13    # "reverseGroupMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    .end local v14    # "reverseNodeMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    .end local v15    # "root":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .end local v18    # "w":Lcom/pantech/inputmethod/skyime/makedict/Word;
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v19

    shl-int/lit8 v19, v19, 0x18

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v20

    shl-int/lit8 v20, v20, 0x10

    add-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    add-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v6, v0

    .line 1361
    .restart local v6    # "headerSize":J
    :goto_cf
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v20

    cmp-long v19, v20, v6

    if-gez v19, :cond_e5

    .line 1362
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v9

    .line 1363
    .local v9, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$600(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v16

    .line 1364
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 1366
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_52

    .line 1373
    .restart local v13    # "reverseGroupMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    .restart local v14    # "reverseNodeMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    .restart local v15    # "root":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_ec
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6e

    :cond_f2
    const/16 v19, 0x0

    goto :goto_74

    .line 1381
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "newDict":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    :cond_f5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_133

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/pantech/inputmethod/skyime/makedict/Word;

    .line 1385
    .restart local v18    # "w":Lcom/pantech/inputmethod/skyime/makedict/Word;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_10f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 1386
    .local v4, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/Word;->mWord:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_10f

    .line 1391
    .end local v4    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v18    # "w":Lcom/pantech/inputmethod/skyime/makedict/Word;
    :cond_133
    return-object v10
.end method

.method private static readNode(Ljava/io/RandomAccessFile;JLjava/util/Map;Ljava/util/Map;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .registers 28
    .param p0, "source"    # Ljava/io/RandomAccessFile;
    .param p1, "headerSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;",
            ">;)",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1281
    .local p3, "reverseNodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    .local p4, "reverseGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long v4, v4, p1

    long-to-int v0, v4

    move/from16 v20, v0

    .line 1282
    .local v20, "nodeOrigin":I
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readCharGroupCount(Ljava/io/RandomAccessFile;)I

    move-result v11

    .line 1283
    .local v11, "count":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    .local v19, "nodeContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    invoke-static {v11}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(I)I

    move-result v4

    add-int v14, v20, v4

    .line 1285
    .local v14, "groupOffset":I
    move v15, v11

    .local v15, "i":I
    :goto_19
    if-lez v15, :cond_be

    .line 1286
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readCharGroup(Ljava/io/RandomAccessFile;I)Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;

    move-result-object v17

    .line 1287
    .local v17, "info":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mShortcutTargets:Ljava/util/ArrayList;

    .line 1288
    .local v6, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    const/4 v7, 0x0

    .line 1289
    .local v7, "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    if-eqz v4, :cond_5c

    .line 1290
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .restart local v7    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mBigrams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;

    .line 1292
    .local v10, "bigram":Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;
    iget v4, v10, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;->mAddress:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getWordAtAddress(Ljava/io/RandomAccessFile;JI)Ljava/lang/String;

    move-result-object v21

    .line 1293
    .local v21, "word":Ljava/lang/String;
    new-instance v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    iget v5, v10, Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;->mFrequency:I

    move-object/from16 v0, v21

    invoke-direct {v4, v0, v5}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1296
    .end local v10    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/PendingAttribute;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "word":Ljava/lang/String;
    :cond_5c
    move-object/from16 v0, v17

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->hasChildrenAddress(I)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1297
    move-object/from16 v0, v17

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 1298
    .local v9, "children":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    if-nez v9, :cond_91

    .line 1299
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 1300
    .local v12, "currentPosition":J
    move-object/from16 v0, v17

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mChildrenAddress:I

    int-to-long v4, v4

    add-long v4, v4, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1301
    invoke-static/range {p0 .. p4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->readNode(Ljava/io/RandomAccessFile;JLjava/util/Map;Ljava/util/Map;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-result-object v9

    .line 1302
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1304
    .end local v12    # "currentPosition":J
    :cond_91
    new-instance v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mFrequency:I

    invoke-direct/range {v4 .. v9}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .end local v9    # "children":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :goto_a3
    move-object/from16 v0, v17

    iget v14, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mEndAddress:I

    .line 1285
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_19

    .line 1308
    :cond_ab
    new-instance v4, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mCharacters:[I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;->mFrequency:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;-><init>([ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 1313
    .end local v6    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .end local v7    # "bigrams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .end local v17    # "info":Lcom/pantech/inputmethod/skyime/makedict/CharGroupInfo;
    :cond_be
    new-instance v18, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    invoke-direct/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;-><init>(Ljava/util/ArrayList;)V

    .line 1314
    .local v18, "node":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 1315
    move-object/from16 v0, v18

    iget v4, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    return-object v18
.end method

.method private static setNodeMaximumSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)V
    .registers 6
    .param p0, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 438
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v3

    .line 439
    .local v3, "size":I
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 440
    .local v0, "g":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getCharGroupMaximumSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I

    move-result v1

    .line 441
    .local v1, "groupSize":I
    iput v1, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    .line 442
    add-int/2addr v3, v1

    .line 443
    goto :goto_a

    .line 444
    .end local v0    # "g":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v1    # "groupSize":I
    :cond_1e
    iput v3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 445
    return-void
.end method

.method private static showStatistics(Ljava/util/ArrayList;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    const v2, 0x7fffffff

    .line 941
    .local v2, "firstTerminalAddress":I
    const/high16 v7, -0x80000000

    .line 942
    .local v7, "lastTerminalAddress":I
    const/4 v12, 0x0

    .line 943
    .local v12, "size":I
    const/4 v1, 0x0

    .line 944
    .local v1, "charGroups":I
    const/4 v8, 0x0

    .line 945
    .local v8, "maxGroups":I
    const/4 v9, 0x0

    .line 946
    .local v9, "maxRuns":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 947
    .local v10, "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iget-object v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_27

    iget-object v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 948
    :cond_27
    iget-object v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 949
    .local v0, "cg":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    add-int/lit8 v1, v1, 0x1

    .line 950
    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v13, v13

    if-le v13, v9, :cond_43

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v9, v13

    .line 951
    :cond_43
    iget v13, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    if-ltz v13, :cond_2d

    .line 952
    iget v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    if-ge v13, v2, :cond_4d

    .line 953
    iget v2, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 954
    :cond_4d
    iget v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    if-le v13, v7, :cond_2d

    .line 955
    iget v7, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    goto :goto_2d

    .line 958
    .end local v0    # "cg":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_54
    iget v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    iget v14, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v13, v14

    if-le v13, v12, :cond_d

    iget v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    iget v14, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int v12, v13, v14

    goto :goto_d

    .line 960
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_62
    add-int/lit8 v13, v8, 0x1

    new-array v3, v13, [I

    .line 961
    .local v3, "groupCounts":[I
    add-int/lit8 v13, v9, 0x1

    new-array v11, v13, [I

    .line 962
    .local v11, "runCounts":[I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 963
    .restart local v10    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iget-object v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    aget v14, v3, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v3, v13

    .line 964
    iget-object v13, v10, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_8c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 965
    .restart local v0    # "cg":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    array-length v13, v13

    aget v14, v11, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v11, v13

    goto :goto_8c

    .line 969
    .end local v0    # "cg":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_a2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Statistics:\n  total file size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nodes\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " groups ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-float v14, v1

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " groups per node)\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  first terminal at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  last terminal at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Group stats : max = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 977
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11e
    array-length v13, v3

    if-ge v4, v13, :cond_146

    .line 978
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v3, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 977
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    .line 980
    :cond_146
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Character run stats : max = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 981
    const/4 v4, 0x0

    :goto_15d
    array-length v13, v11

    if-ge v4, v13, :cond_185

    .line 982
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v11, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 981
    add-int/lit8 v4, v4, 0x1

    goto :goto_15d

    .line 984
    :cond_185
    return-void
.end method

.method private static stackNodes(Ljava/util/ArrayList;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "flatNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    const/4 v6, 0x0

    .line 582
    .local v6, "nodeOffset":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 583
    .local v5, "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iput v6, v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 584
    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v1

    .line 585
    .local v1, "groupCountSize":I
    const/4 v2, 0x0

    .line 586
    .local v2, "groupOffset":I
    iget-object v7, v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 587
    .local v0, "g":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    add-int v7, v1, v6

    add-int/2addr v7, v2

    iput v7, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 588
    iget v7, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedSize:I

    add-int/2addr v2, v7

    .line 589
    goto :goto_1e

    .line 590
    .end local v0    # "g":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    :cond_33
    add-int v7, v2, v1

    iget v8, v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    if-eq v7, v8, :cond_41

    .line 591
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Bug : Stored and computed node size differ"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 593
    :cond_41
    iget v7, v5, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    add-int/2addr v6, v7

    .line 594
    goto :goto_5

    .line 595
    .end local v1    # "groupCountSize":I
    .end local v2    # "groupOffset":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_45
    return v6
.end method

.method public static writeDictionaryBinary(Ljava/io/OutputStream;Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;I)V
    .registers 24
    .param p0, "destination"    # Ljava/io/OutputStream;
    .param p1, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 1005
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_45

    .line 1006
    :cond_10
    new-instance v18, Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Requested file format version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", but this implementation only supports versions "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " through "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/makedict/UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1011
    :cond_45
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x100

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1014
    .local v7, "headerBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_d5

    .line 1016
    const/16 v18, -0x65

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    const/16 v18, -0x3f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1018
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1019
    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1021
    shr-int/lit8 v18, p2, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1022
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1031
    :goto_94
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->makeOptionsValue(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;)I

    move-result v15

    .line 1032
    .local v15, "options":I
    shr-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1033
    and-int/lit16 v0, v15, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1034
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_1d9

    .line 1035
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    .line 1037
    .local v8, "headerSizeOffset":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v9, v0, :cond_f4

    .line 1038
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1037
    add-int/lit8 v9, v9, 0x1

    goto :goto_c5

    .line 1025
    .end local v8    # "headerSizeOffset":I
    .end local v9    # "i":I
    .end local v15    # "options":I
    :cond_d5
    const/16 v18, 0x78

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1026
    const/16 v18, -0x4f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1028
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_94

    .line 1041
    .restart local v8    # "headerSizeOffset":I
    .restart local v9    # "i":I
    .restart local v15    # "options":I
    :cond_f4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_108
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_131

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1042
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mOptions:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1043
    .local v17, "value":Ljava/lang/String;
    invoke-static {v7, v12}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$400(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_108

    .line 1046
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_131
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v16

    .line 1047
    .local v16, "size":I
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1049
    .local v4, "bytes":[B
    shr-int/lit8 v18, v16, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v4, v8

    .line 1050
    add-int/lit8 v18, v8, 0x1

    shr-int/lit8 v19, v16, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v18

    .line 1051
    add-int/lit8 v18, v8, 0x2

    shr-int/lit8 v19, v16, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v18

    .line 1052
    add-int/lit8 v18, v8, 0x3

    shr-int/lit8 v19, v16, 0x0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v18

    .line 1053
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1058
    .end local v4    # "bytes":[B
    .end local v8    # "headerSizeOffset":I
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "size":I
    :goto_180
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1061
    const-string v18, "Flattening the tree..."

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->flattenTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1064
    .local v6, "flatNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    const-string v18, "Computing addresses..."

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->computeAddresses(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1066
    const-string v18, "Checking array..."

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 1071
    .local v13, "lastNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v18, v0

    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v19, v0

    add-int v3, v18, v19

    .line 1072
    .local v3, "bufferSize":I
    new-array v2, v3, [B

    .line 1073
    .local v2, "buffer":[B
    const/4 v11, 0x0

    .line 1075
    .local v11, "index":I
    const-string v18, "Writing file..."

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1076
    const/4 v5, 0x0

    .line 1077
    .local v5, "dataEndOffset":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_1c6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1df

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .line 1078
    .local v14, "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->writePlacedNode(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;[BLcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v5

    .line 1079
    goto :goto_1c6

    .line 1055
    .end local v2    # "buffer":[B
    .end local v3    # "bufferSize":I
    .end local v5    # "dataEndOffset":I
    .end local v6    # "flatNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "index":I
    .end local v13    # "lastNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    .end local v14    # "n":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_1d9
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_180

    .line 1083
    .restart local v2    # "buffer":[B
    .restart local v3    # "bufferSize":I
    .restart local v5    # "dataEndOffset":I
    .restart local v6    # "flatNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "index":I
    .restart local v13    # "lastNode":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
    :cond_1df
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1086
    const-string v18, "Done"

    invoke-static/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/makedict/MakedictLog;->i(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method private static writePlacedNode(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;[BLcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I
    .registers 34
    .param p0, "dict"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
    .param p1, "buffer"    # [B
    .param p2, "node"    # Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    .prologue
    .line 838
    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v17, v0

    .line 840
    .local v17, "index":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 841
    .local v15, "groupCount":I
    invoke-static/range {p2 .. p2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCountSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;)I

    move-result v11

    .line 842
    .local v11, "countSize":I
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v0, v11, :cond_72

    .line 843
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .local v18, "index":I
    int-to-byte v0, v15

    move/from16 v28, v0

    aput-byte v28, p1, v17

    move/from16 v17, v18

    .line 852
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :goto_23
    move/from16 v14, v17

    .line 853
    .local v14, "groupAddress":I
    const/16 v16, 0x0

    .local v16, "i":I
    move/from16 v18, v17

    .end local v17    # "index":I
    .restart local v18    # "index":I
    :goto_29
    move/from16 v0, v16

    if-ge v0, v15, :cond_205

    .line 854
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    .line 855
    .local v13, "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_b2

    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Bug: write index is not the same as the cached address of the group : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " <> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 844
    .end local v13    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v14    # "groupAddress":I
    .end local v16    # "i":I
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :cond_72
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v0, v11, :cond_97

    .line 847
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    shr-int/lit8 v28, v15, 0x8

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, p1, v17

    .line 848
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "index":I
    .restart local v17    # "index":I
    and-int/lit16 v0, v15, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, p1, v18

    goto :goto_23

    .line 850
    :cond_97
    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Strange size from getGroupCountSize : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 858
    .end local v17    # "index":I
    .restart local v13    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .restart local v14    # "groupAddress":I
    .restart local v16    # "i":I
    .restart local v18    # "index":I
    :cond_b2
    invoke-static {v13}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getGroupCharactersSize(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    add-int v14, v14, v28

    .line 864
    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v28, v0

    if-ltz v28, :cond_c2

    add-int/lit8 v14, v14, 0x1

    .line 865
    :cond_c2
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-object/from16 v28, v0

    if-nez v28, :cond_15d

    const/high16 v10, -0x80000000

    .line 867
    .local v10, "childrenOffset":I
    :goto_ca
    invoke-static {v13, v14, v10}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->makeCharGroupFlags(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;II)B

    move-result v12

    .line 868
    .local v12, "flags":B
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "index":I
    .restart local v17    # "index":I
    aput-byte v12, p1, v18

    .line 869
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChars:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$200([I[BI)I

    move-result v17

    .line 870
    invoke-virtual {v13}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->hasSeveralChars()Z

    move-result v28

    if-eqz v28, :cond_ee

    .line 871
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    const/16 v28, 0x1f

    aput-byte v28, p1, v17

    move/from16 v17, v18

    .line 873
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :cond_ee
    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v28, v0

    if-ltz v28, :cond_103

    .line 874
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    iget v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, p1, v17

    move/from16 v17, v18

    .line 876
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :cond_103
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v10}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->writeVariableAddress([BII)I

    move-result v21

    .line 877
    .local v21, "shift":I
    add-int v17, v17, v21

    .line 878
    add-int v14, v14, v21

    .line 881
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_196

    .line 882
    move/from16 v19, v17

    .line 883
    .local v19, "indexOfShortcutByteSize":I
    add-int/lit8 v17, v17, 0x2

    .line 884
    add-int/lit8 v14, v14, 0x2

    .line 885
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mShortcutTargets:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 886
    .local v24, "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    :goto_123
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16b

    .line 887
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 888
    .local v26, "target":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    add-int/lit8 v14, v14, 0x1

    .line 889
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    move-object/from16 v0, v26

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->makeShortcutFlags(ZI)I

    move-result v23

    .line 891
    .local v23, "shortcutFlags":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, p1, v17

    .line 892
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput$CharEncoding;->access$300([BILjava/lang/String;)I

    move-result v25

    .line 893
    .local v25, "shortcutShift":I
    add-int v17, v18, v25

    .line 894
    .end local v18    # "index":I
    .restart local v17    # "index":I
    add-int v14, v14, v25

    .line 895
    goto :goto_123

    .line 865
    .end local v10    # "childrenOffset":I
    .end local v12    # "flags":B
    .end local v17    # "index":I
    .end local v19    # "indexOfShortcutByteSize":I
    .end local v21    # "shift":I
    .end local v23    # "shortcutFlags":I
    .end local v24    # "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .end local v25    # "shortcutShift":I
    .end local v26    # "target":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .restart local v18    # "index":I
    :cond_15d
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mChildren:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v28, v0

    sub-int v10, v28, v14

    goto/16 :goto_ca

    .line 896
    .end local v18    # "index":I
    .restart local v10    # "childrenOffset":I
    .restart local v12    # "flags":B
    .restart local v17    # "index":I
    .restart local v19    # "indexOfShortcutByteSize":I
    .restart local v21    # "shift":I
    .restart local v24    # "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    :cond_16b
    sub-int v22, v17, v19

    .line 897
    .local v22, "shortcutByteSize":I
    const v28, 0xffff

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_17e

    .line 898
    new-instance v28, Ljava/lang/RuntimeException;

    const-string v29, "Shortcut list too large"

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 900
    :cond_17e
    shr-int/lit8 v28, v22, 0x8

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, p1, v19

    .line 901
    add-int/lit8 v28, v19, 0x1

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, p1, v28

    .line 904
    .end local v19    # "indexOfShortcutByteSize":I
    .end local v22    # "shortcutByteSize":I
    .end local v24    # "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    :cond_196
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1ff

    .line 905
    iget-object v0, v13, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mBigrams:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 906
    .local v8, "bigramIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    :goto_1a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1ff

    .line 907
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;

    .line 908
    .local v6, "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->mRoot:Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;

    move-object/from16 v28, v0

    iget-object v0, v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;->findWordInTree(Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;

    move-result-object v26

    .line 910
    .local v26, "target":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    move-object/from16 v0, v26

    iget v5, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mCachedAddress:I

    .line 911
    .local v5, "addressOfBigram":I
    move-object/from16 v0, v26

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;->mFrequency:I

    move/from16 v27, v0

    .line 912
    .local v27, "unigramFrequencyForThisWord":I
    add-int/lit8 v14, v14, 0x1

    .line 913
    sub-int v20, v5, v14

    .line 914
    .local v20, "offset":I
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    iget v0, v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mFrequency:I

    move/from16 v29, v0

    iget-object v0, v6, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;->mWord:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v29

    move/from16 v3, v27

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->makeBigramFlags(ZIIILjava/lang/String;)I

    move-result v7

    .line 916
    .local v7, "bigramFlags":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    int-to-byte v0, v7

    move/from16 v28, v0

    aput-byte v28, p1, v17

    .line 917
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->writeVariableAddress([BII)I

    move-result v9

    .line 918
    .local v9, "bigramShift":I
    add-int v17, v18, v9

    .line 919
    .end local v18    # "index":I
    .restart local v17    # "index":I
    add-int/2addr v14, v9

    .line 920
    goto :goto_1a4

    .line 853
    .end local v5    # "addressOfBigram":I
    .end local v6    # "bigram":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;
    .end local v7    # "bigramFlags":I
    .end local v8    # "bigramIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$WeightedString;>;"
    .end local v9    # "bigramShift":I
    .end local v20    # "offset":I
    .end local v26    # "target":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v27    # "unigramFrequencyForThisWord":I
    :cond_1ff
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    .end local v17    # "index":I
    .restart local v18    # "index":I
    goto/16 :goto_29

    .line 924
    .end local v10    # "childrenOffset":I
    .end local v12    # "flags":B
    .end local v13    # "group":Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;
    .end local v21    # "shift":I
    :cond_205
    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_250

    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Not the same size : written "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    move/from16 v30, v0

    sub-int v30, v18, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes out of a node that should have "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p2

    iget v0, v0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 928
    :cond_250
    return v18
.end method

.method private static writeVariableAddress([BII)I
    .registers 7
    .param p0, "buffer"    # [B
    .param p1, "index"    # I
    .param p2, "address"    # I

    .prologue
    .line 677
    invoke-static {p2}, Lcom/pantech/inputmethod/skyime/makedict/BinaryDictInputOutput;->getByteSize(I)I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 693
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has a strange size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :pswitch_26
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 680
    const/4 v1, 0x1

    move p1, v0

    .line 691
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_2d
    return v1

    .line 682
    :pswitch_2e
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 683
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 684
    const/4 v1, 0x2

    goto :goto_2d

    .line 686
    :pswitch_40
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 687
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 688
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 689
    const/4 v1, 0x3

    move p1, v0

    .end local v0    # "index":I
    .restart local p1    # "index":I
    goto :goto_2d

    .line 691
    :pswitch_5c
    const/4 v1, 0x0

    goto :goto_2d

    .line 677
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_26
        :pswitch_2e
        :pswitch_40
    .end packed-switch
.end method
