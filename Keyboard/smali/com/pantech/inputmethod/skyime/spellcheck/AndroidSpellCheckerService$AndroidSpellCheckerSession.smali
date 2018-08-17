.class Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidSpellCheckerSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;,
        Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    }
.end annotation


# instance fields
.field private mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

.field private mLocale:Ljava/util/Locale;

.field private mScript:I

.field private final mService:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

.field private final mSuggestionsCache:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)V
    .registers 4
    .param p1, "service"    # Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .prologue
    .line 521
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    .line 492
    new-instance v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;-><init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mSuggestionsCache:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;

    .line 522
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    .line 523
    return-void
.end method

.method private fixWronglyInvalidatedWordWithSingleQuote(Landroid/view/textservice/TextInfo;Landroid/view/textservice/SentenceSuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 31
    .param p1, "ti"    # Landroid/view/textservice/TextInfo;
    .param p2, "ssi"    # Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v25

    .line 604
    .local v25, "typedText":Ljava/lang/String;
    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 605
    const/16 v26, 0x0

    .line 670
    :goto_e
    return-object v26

    .line 607
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v3

    .line 608
    .local v3, "N":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v5, "additionalOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v4, "additionalLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v7, "additionalSuggestionsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SuggestionsInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_23
    if-ge v9, v3, :cond_db

    .line 613
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v19

    .line 614
    .local v19, "si":Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v8

    .line 615
    .local v8, "flags":I
    and-int/lit8 v26, v8, 0x1

    if-nez v26, :cond_36

    .line 612
    :cond_33
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 618
    :cond_36
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v18

    .line 619
    .local v18, "offset":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v11

    .line 620
    .local v11, "length":I
    add-int v26, v18, v11

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 621
    .local v23, "subText":Ljava/lang/String;
    const-string v26, "\'"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_33

    .line 624
    const-string v26, "\'"

    const/16 v27, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    .line 625
    .local v22, "splitTexts":[Ljava/lang/String;
    if-eqz v22, :cond_33

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_33

    .line 628
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v20, v0

    .line 629
    .local v20, "splitNum":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7d
    move/from16 v0, v20

    if-ge v10, v0, :cond_33

    .line 630
    aget-object v21, v22, v10

    .line 631
    .local v21, "splitText":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_8c

    .line 629
    :cond_89
    :goto_89
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 634
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mSuggestionsCache:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->getSuggestionsFromCache(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;

    move-result-object v26

    if-eqz v26, :cond_89

    .line 637
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v13

    .line 639
    .local v13, "newLength":I
    const/4 v12, 0x0

    .line 640
    .local v12, "newFlags":I
    new-instance v16, Landroid/view/textservice/SuggestionsInfo;

    const/16 v26, 0x0

    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 641
    .local v16, "newSi":Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 646
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 651
    .end local v8    # "flags":I
    .end local v10    # "j":I
    .end local v11    # "length":I
    .end local v12    # "newFlags":I
    .end local v13    # "newLength":I
    .end local v16    # "newSi":Landroid/view/textservice/SuggestionsInfo;
    .end local v18    # "offset":I
    .end local v19    # "si":Landroid/view/textservice/SuggestionsInfo;
    .end local v20    # "splitNum":I
    .end local v21    # "splitText":Ljava/lang/String;
    .end local v22    # "splitTexts":[Ljava/lang/String;
    .end local v23    # "subText":Ljava/lang/String;
    :cond_db
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 652
    .local v6, "additionalSize":I
    if-gtz v6, :cond_e5

    .line 653
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 655
    :cond_e5
    add-int v24, v3, v6

    .line 656
    .local v24, "suggestionsSize":I
    move/from16 v0, v24

    new-array v15, v0, [I

    .line 657
    .local v15, "newOffsets":[I
    move/from16 v0, v24

    new-array v14, v0, [I

    .line 658
    .local v14, "newLengths":[I
    move/from16 v0, v24

    new-array v0, v0, [Landroid/view/textservice/SuggestionsInfo;

    move-object/from16 v17, v0

    .line 660
    .local v17, "newSuggestionsInfos":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v9, 0x0

    :goto_f6
    if-ge v9, v3, :cond_113

    .line 661
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v26

    aput v26, v15, v9

    .line 662
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v26

    aput v26, v14, v9

    .line 663
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v26

    aput-object v26, v17, v9

    .line 660
    add-int/lit8 v9, v9, 0x1

    goto :goto_f6

    .line 665
    :cond_113
    :goto_113
    move/from16 v0, v24

    if-ge v9, v0, :cond_146

    .line 666
    sub-int v26, v9, v3

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, v15, v9

    .line 667
    sub-int v26, v9, v3

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, v14, v9

    .line 668
    sub-int v26, v9, v3

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/textservice/SuggestionsInfo;

    aput-object v26, v17, v9

    .line 665
    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    .line 670
    :cond_146
    new-instance v26, Landroid/view/textservice/SentenceSuggestionsInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v14}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    goto/16 :goto_e
.end method

.method private static isLetterCheckableByLanguage(II)Z
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "script"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 543
    packed-switch p1, :pswitch_data_3c

    .line 558
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible value of script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_1e
    const/16 v2, 0x2af

    if-gt p0, v2, :cond_29

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 555
    :cond_28
    :goto_28
    return v0

    :cond_29
    move v0, v1

    .line 550
    goto :goto_28

    .line 555
    :pswitch_2b
    const/16 v2, 0x400

    if-lt p0, v2, :cond_39

    const/16 v2, 0x52f

    if-gt p0, v2, :cond_39

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_39
    move v0, v1

    goto :goto_28

    .line 543
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2b
    .end packed-switch
.end method

.method private onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;
    .registers 28
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "prevWord"    # Ljava/lang/String;
    .param p3, "suggestionsLimit"    # I

    .prologue
    .line 728
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, "inText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mSuggestionsCache:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->getSuggestionsFromCache(Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;

    move-result-object v5

    .line 731
    .local v5, "cachedSuggestionsParams":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    if-eqz v5, :cond_20

    .line 735
    new-instance v21, Landroid/view/textservice/SuggestionsInfo;

    iget v0, v5, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;->mFlags:I

    move/from16 v22, v0

    iget-object v0, v5, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 830
    .end local v5    # "cachedSuggestionsParams":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    .end local v13    # "inText":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v21

    .line 739
    .restart local v5    # "cachedSuggestionsParams":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    .restart local v13    # "inText":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mScript:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v13, v0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->shouldFilterOut(Ljava/lang/String;I)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_59

    move-result v21

    if-eqz v21, :cond_c6

    .line 740
    const/4 v9, 0x0

    .line 742
    .local v9, "dictInfo":Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;

    move-result-object v9

    .line 743
    if-nez v9, :cond_7b

    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$600()Landroid/view/textservice/SuggestionsInfo;
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_ab

    move-result-object v21

    .line 747
    if-eqz v9, :cond_1f

    .line 748
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v22

    if-nez v22, :cond_1f

    .line 749
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_58} :catch_59

    goto :goto_1f

    .line 824
    .end local v5    # "cachedSuggestionsParams":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    .end local v9    # "dictInfo":Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    .end local v13    # "inText":Ljava/lang/String;
    :catch_59
    move-exception v10

    .line 829
    .local v10, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception while spellcheking: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$600()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v21

    goto :goto_1f

    .line 744
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "cachedSuggestionsParams":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsParams;
    .restart local v9    # "dictInfo":Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    .restart local v13    # "inText":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    iget-object v0, v9, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a6

    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$700()Landroid/view/textservice/SuggestionsInfo;
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_ab

    move-result-object v21

    .line 747
    :goto_8b
    if-eqz v9, :cond_1f

    .line 748
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v22

    if-nez v22, :cond_1f

    .line 749
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_a4} :catch_59

    goto/16 :goto_1f

    .line 744
    :cond_a6
    :try_start_a6
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$600()Landroid/view/textservice/SuggestionsInfo;
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_ab

    move-result-object v21

    goto :goto_8b

    .line 747
    :catchall_ab
    move-exception v21

    if-eqz v9, :cond_c5

    .line 748
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v22

    if-nez v22, :cond_c5

    .line 749
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    throw v21

    .line 754
    .end local v9    # "dictInfo":Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    :cond_c6
    const-string v21, "\u2019"

    const-string v22, "\'"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 757
    .local v19, "text":Ljava/lang/String;
    new-instance v18, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$900(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$1000(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)F

    move-result v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;-><init>(Ljava/lang/String;FFI)V

    .line 760
    .local v18, "suggestionsGatherer":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    new-instance v8, Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-direct {v8}, Lcom/pantech/inputmethod/skyime/WordComposer;-><init>()V

    .line 761
    .local v8, "composer":Lcom/pantech/inputmethod/skyime/WordComposer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 762
    .local v15, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_ff
    if-ge v12, v15, :cond_148

    .line 763
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 765
    .local v7, "codePoint":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mScript:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/pantech/inputmethod/skyime/spellcheck/SpellCheckerProximityInfo;->getXYForCodePointAndScript(II)I

    move-result v20

    .line 767
    .local v20, "xy":I
    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_135

    .line 768
    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v7, v0, v1, v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 762
    :goto_12a
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v12

    goto :goto_ff

    .line 771
    :cond_135
    const v21, 0xffff

    and-int v21, v21, v20

    shr-int/lit8 v22, v20, 0x10

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v7, v0, v1, v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    goto :goto_12a

    .line 775
    .end local v7    # "codePoint":I
    .end local v20    # "xy":I
    :cond_148
    invoke-static/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$1100(Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_14b} :catch_59

    move-result v6

    .line 776
    .local v6, "capitalizeType":I
    const/4 v14, 0x1

    .line 777
    .local v14, "isInDict":Z
    const/4 v9, 0x0

    .line 779
    .restart local v9    # "dictInfo":Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
    :try_start_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;

    move-result-object v9

    .line 780
    if-nez v9, :cond_179

    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$600()Landroid/view/textservice/SuggestionsInfo;
    :try_end_15d
    .catchall {:try_start_14e .. :try_end_15d} :catchall_215

    move-result-object v21

    .line 791
    if-eqz v9, :cond_1f

    .line 792
    :try_start_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v22

    if-nez v22, :cond_1f

    .line 793
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/RuntimeException; {:try_start_160 .. :try_end_177} :catch_59

    goto/16 :goto_1f

    .line 781
    :cond_179
    :try_start_179
    iget-object v0, v9, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/Dictionary;->getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    .line 783
    iget-object v0, v9, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 784
    if-nez v14, :cond_1b2

    if-eqz v6, :cond_1b2

    .line 788
    iget-object v0, v9, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/pantech/inputmethod/skyime/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_1b1
    .catchall {:try_start_179 .. :try_end_1b1} :catchall_215

    move-result v14

    .line 791
    :cond_1b2
    if-eqz v9, :cond_1cb

    .line 792
    :try_start_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v21

    if-nez v21, :cond_1cb

    .line 793
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->getResults(ILjava/util/Locale;)Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    move-result-object v16

    .line 814
    .local v16, "result":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    if-eqz v14, :cond_230

    const/16 v21, 0x1

    move/from16 v22, v21

    :goto_1df
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mHasRecommendedSuggestions:Z

    move/from16 v21, v0

    if-eqz v21, :cond_235

    invoke-static {}, Lcom/pantech/inputmethod/compat/SuggestionsInfoCompatUtils;->getValueOf_RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS()I

    move-result v21

    :goto_1eb
    or-int v11, v22, v21

    .line 821
    .local v11, "flags":I
    new-instance v17, Landroid/view/textservice/SuggestionsInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 822
    .local v17, "retval":Landroid/view/textservice/SuggestionsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mSuggestionsCache:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession$SuggestionsCache;->putSuggestionsToCache(Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v21, v17

    .line 823
    goto/16 :goto_1f

    .line 791
    .end local v11    # "flags":I
    .end local v16    # "result":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    .end local v17    # "retval":Landroid/view/textservice/SuggestionsInfo;
    :catchall_215
    move-exception v21

    if-eqz v9, :cond_22f

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->offer(Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;)Z

    move-result v22

    if-nez v22, :cond_22f

    .line 793
    invoke-static {}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Can\'t re-insert a dictionary into its pool"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22f
    throw v21
    :try_end_230
    .catch Ljava/lang/RuntimeException; {:try_start_1b4 .. :try_end_230} :catch_59

    .line 814
    .restart local v16    # "result":Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    :cond_230
    const/16 v21, 0x2

    move/from16 v22, v21

    goto :goto_1df

    :cond_235
    const/16 v21, 0x0

    goto :goto_1eb
.end method

.method private static shouldFilterOut(Ljava/lang/String;I)Z
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "script"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 575
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_f

    .line 598
    :cond_e
    :goto_e
    return v5

    .line 580
    :cond_f
    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 582
    .local v1, "firstCodePoint":I
    invoke-static {v1, p1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->isLetterCheckableByLanguage(II)Z

    move-result v7

    if-nez v7, :cond_1d

    const/16 v7, 0x27

    if-ne v7, v1, :cond_e

    .line 586
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 587
    .local v3, "length":I
    const/4 v4, 0x0

    .line 588
    .local v4, "letterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v3, :cond_3e

    .line 589
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 593
    .local v0, "codePoint":I
    const/16 v7, 0x40

    if-eq v7, v0, :cond_e

    const/16 v7, 0x2f

    if-eq v7, v0, :cond_e

    .line 594
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->isLetterCheckableByLanguage(II)Z

    move-result v7

    if-eqz v7, :cond_39

    add-int/lit8 v4, v4, 0x1

    .line 588
    :cond_39
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_23

    .line 598
    .end local v0    # "codePoint":I
    :cond_3e
    mul-int/lit8 v7, v4, 0x4

    mul-int/lit8 v8, v3, 0x3

    if-lt v7, v8, :cond_e

    move v5, v6

    goto :goto_e
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "localeString":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$400(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    .line 529
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    .line 530
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$500(Ljava/util/Locale;)I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mScript:I

    .line 531
    return-void
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 8
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 676
    invoke-super {p0, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v1

    .line 678
    .local v1, "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    if-eqz v1, :cond_a

    array-length v3, v1

    array-length v4, p1

    if-eq v3, v4, :cond_b

    .line 688
    :cond_a
    return-object v1

    .line 681
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v3, v1

    if-ge v0, v3, :cond_a

    .line 682
    aget-object v3, p1, v0

    aget-object v4, v1, v0

    invoke-direct {p0, v3, v4}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->fixWronglyInvalidatedWordWithSingleQuote(Landroid/view/textservice/TextInfo;Landroid/view/textservice/SentenceSuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v2

    .line 684
    .local v2, "tempSsi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-eqz v2, :cond_1b

    .line 685
    aput-object v2, v1, v0

    .line 681
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .registers 4
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .registers 12
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 694
    array-length v1, p1

    .line 695
    .local v1, "length":I
    new-array v4, v1, [Landroid/view/textservice/SuggestionsInfo;

    .line 696
    .local v4, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_39

    .line 698
    if-eqz p3, :cond_37

    if-lez v0, :cond_37

    .line 699
    add-int/lit8 v5, v0, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "prevWordCandidate":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v2, 0x0

    .line 706
    .end local v3    # "prevWordCandidate":Ljava/lang/String;
    .local v2, "prevWord":Ljava/lang/String;
    :goto_19
    aget-object v5, p1, v0

    invoke-direct {p0, v5, v2, p2}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    aput-object v5, v4, v0

    .line 707
    aget-object v5, v4, v0

    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v2    # "prevWord":Ljava/lang/String;
    .restart local v3    # "prevWordCandidate":Ljava/lang/String;
    :cond_35
    move-object v2, v3

    .line 702
    goto :goto_19

    .line 704
    .end local v3    # "prevWordCandidate":Ljava/lang/String;
    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "prevWord":Ljava/lang/String;
    goto :goto_19

    .line 710
    .end local v2    # "prevWord":Ljava/lang/String;
    :cond_39
    return-object v4
.end method
