.class public Lcom/pantech/inputmethod/skyime/AutomataKor;
.super Ljava/lang/Object;
.source "AutomataKor.java"

# interfaces
.implements Lcom/pantech/inputmethod/skyime/Automata;


# static fields
.field private static final ADD_STROKE_INITIAL_TABLE:[[I

.field private static final ADD_STROKE_VOWEL_LG:[[I

.field private static final CODE_IDX_CHUN:I = 0x63

.field private static final CODE_IDX_CHUN_2:I = 0x62

.field private static final COMBI_VOWEL_TABLE:[[I

.field private static final COMBI_VOWEL_TABLE_CJI:[[I

.field private static final COMBI_VOWEL_TABLE_NRG:[[I

.field private static final COMBI_VOWEL_TABLE_QWERTY:[[I

.field private static final COMBI_VOWEL_TABLE_QWERTY_DOUBLETAP:[[I

.field private static final COMBI_VOWEL_TABLE_SMART:[[I

.field private static final DEBUG:Z

.field private static final FINAL_TO_DFINAL:[[I

.field private static final IDX_0:I = 0x0

.field private static final IDX_1_M:I = 0x1

.field private static final IDX_2_F:I = 0x2

.field private static final IDX_3_F1:I = 0x3

.field private static final IDX_4_F2:I = 0x4

.field private static final IDX_MAX:I = 0x6

.field private static final IDX_NEXT_I:I = 0x5

.field private static final INITIAL_CODE_TABLE:[C

.field private static final INITIAL_FINAL_TABLE:[[I

.field private static final INPUT_CODE_CHUN:I = 0xb7

.field private static final INPUT_CODE_CHUN_2:I = 0x2025

.field private static final INVALID_INDEX:I = 0x0

.field public static final KEYCODE_BASE:I = 0x3e9

.field public static final KEYCODE_MAX:I = 0x410

.field public static final KEYCODE_M_BASE:I = 0x3fc

.field private static final KEY_CODE_ADD_STROKE:I = 0x449

.field public static final KEY_CODE_CHUN:I = 0x44b

.field private static final KEY_CODE_CHUN_2:I = 0x44a

.field private static final KEY_CODE_DOUBLE_CON:I = 0x448

.field private static final KOR_INPUT_ADD_STROKE:I = 0x5

.field private static final KOR_INPUT_CHUN:I = 0x4

.field private static final KOR_INPUT_CONSONANT_A:I = 0x0

.field private static final KOR_INPUT_CONSONANT_B:I = 0x1

.field private static final KOR_INPUT_DOUBLE_CON:I = 0x6

.field private static final KOR_INPUT_VOWEL_A:I = 0x2

.field private static final KOR_INPUT_VOWEL_B:I = 0x3

.field private static final KOR_STATE_0:I = 0x0

.field private static final KOR_STATE_1_C:I = 0x8

.field private static final KOR_STATE_1_I:I = 0x1

.field private static final KOR_STATE_1_M:I = 0x2

.field private static final KOR_STATE_2_IM:I = 0x3

.field private static final KOR_STATE_2_I_C:I = 0x9

.field private static final KOR_STATE_3_IMF:I = 0x4

.field private static final KOR_STATE_3_IM_I:I = 0x5

.field private static final KOR_STATE_4_IMFF:I = 0x6

.field private static final KOR_STATE_4_IMF_I:I = 0x7

.field public static final KOR_TYPE_CJI:I = 0x2

.field public static final KOR_TYPE_NRG:I = 0x3

.field public static final KOR_TYPE_QWERTY:I = 0x0

.field public static final KOR_TYPE_QWERTY_MULTITAP:I = 0x6

.field public static final KOR_TYPE_SKY2:I = 0x1

.field public static final KOR_TYPE_SKY_QWERTY:I = 0x4

.field public static final KOR_TYPE_SMART:I = 0x5

.field private static final LOCAL_CODE_BACKSPACE:I = -0x5

.field private static final MULTITAP_INITIAL_NRG:[[I

.field private static final MULTITAP_INITIAL_TABLE:[[I

.field private static final MULTITAP_INITIAL_TABLE_CJI:[[I

.field private static final MULTI_CONSONANT_TABLE:[[I

.field private static final MULTI_CONSONANT_TABLE_CJI:[[I

.field private static final MULTI_CONSONANT_TABLE_SKY_QWERTY:[[I

.field private static final MULTI_VOWEL_TABLE:[[I

.field private static final MULTI_VOWEL_TABLE_NRG:[[I

.field private static final MULTI_VOWEL_TABLE_QWERTY_DOUBLE_TAP:[[I

.field private static final NUM_I:I = 0x13

.field private static final NUM_M:I = 0x15

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCodeIdx:[I

.field private mComposingText:Ljava/lang/StringBuilder;

.field private mInputType:I

.field private mKorQwertyDoubleTap:Z

.field private mMultitapCount:I

.field private mNewTextLength:I

.field private mPrevKeyCode:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 10
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    .line 11
    const-class v0, Lcom/pantech/inputmethod/skyime/AutomataKor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    .line 915
    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6cc

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6d4

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_6dc

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_6e4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6ec

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_6f4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6fc

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_704

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_70c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_714

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_71c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_724

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_72c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_734

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_73c

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_TABLE:[[I

    .line 971
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_744

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_74c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_754

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_75c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_764

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_76c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_774

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_77c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_784

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_78c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_794

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_79c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_7a4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_7ac

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_7b4

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_7bc

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_TABLE_CJI:[[I

    .line 1030
    const/16 v0, 0x15

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7c4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_7cc

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7d4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_7dc

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7e4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_7ec

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_7f4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7fc

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_804

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_80c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_814

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_81c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_824

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_82c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_834

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_83c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_844

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_84c

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_854

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_85c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_864

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_NRG:[[I

    .line 1091
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_86c

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_874

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_87c

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_884

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_88c

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_894

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_89c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_8a4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8ac

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_8b4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_8bc

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_8c4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_8cc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_8d4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_8dc

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_8e4

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_FINAL_TABLE:[[I

    .line 1166
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_8ec

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8f6

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_8fe

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_908

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_912

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_91c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_926

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE:[[I

    .line 1192
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_92e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_938

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_940

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_94a

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_954

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_95e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_968

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE_CJI:[[I

    .line 1218
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_970

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_978

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_980

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_988

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_990

    aput-object v1, v0, v7

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE_SKY_QWERTY:[[I

    .line 1285
    const/16 v0, 0xd

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_998

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_9a0

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_9a8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_9b0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_9b8

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_9c0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9c8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_9d0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_9d8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9e0

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_9e8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_9f0

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_9f8

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->ADD_STROKE_INITIAL_TABLE:[[I

    .line 1342
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_a00

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_a0a

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_a14

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_a1e

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_a28

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_a32

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_a3c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_a46

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_a50

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_a5a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_a64

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->FINAL_TO_DFINAL:[[I

    .line 1409
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a6e

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_a76

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_a7e

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_a86

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_a8e

    aput-object v1, v0, v7

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE:[[I

    .line 1427
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a98

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_aa0

    aput-object v1, v0, v6

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE_NRG:[[I

    .line 1437
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_aa8

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_ab0

    aput-object v1, v0, v6

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE_QWERTY_DOUBLE_TAP:[[I

    .line 1481
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_ab8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_ac2

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_acc

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_ad6

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_ae0

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_aea

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_af4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_afe

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_b08

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_b12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_b1c

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE:[[I

    .line 1523
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_b26

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_b30

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_b3a

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_b44

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_b4e

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_b58

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_b62

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_QWERTY:[[I

    .line 1552
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_b6c

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_b76

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_b80

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_b8a

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_b94

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_b9e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_ba8

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_QWERTY_DOUBLETAP:[[I

    .line 1590
    const/16 v0, 0x18

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_bb2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_bbc

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_bc6

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_bd0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_bda

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_be4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_bee

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_bf8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_c02

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_c0c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_c16

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_c20

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_c2a

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_c34

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_c3e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_c48

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_c52

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_c5c

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_c66

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_c70

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_c7a

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_c84

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    fill-array-data v2, :array_c8e

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [I

    fill-array-data v2, :array_c98

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_CJI:[[I

    .line 1678
    const/16 v0, 0xd

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_ca2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_cac

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_cb6

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_cc0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_cca

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_cd4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_cde

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_ce8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_cf2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_cfc

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_d06

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_d10

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_d1a

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_NRG:[[I

    .line 1721
    const/16 v0, 0xd

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_d24

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_d2e

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_d38

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_d42

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_d4c

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_d56

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_d60

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_d6a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_d74

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_d7e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_d88

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_d92

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_d9c

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_SMART:[[I

    .line 1855
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_da6

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_dae

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_db6

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_dbe

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_dc6

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_dce

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_dd6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_dde

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->ADD_STROKE_VOWEL_LG:[[I

    .line 1901
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_de6

    sput-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_CODE_TABLE:[C

    return-void

    .line 915
    nop

    :array_6cc
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_6d4
    .array-data 4
        0x1
        0xb
    .end array-data

    :array_6dc
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_6e4
    .array-data 4
        0x3
        0xf
    .end array-data

    :array_6ec
    .array-data 4
        0x3
        0xe
    .end array-data

    :array_6f4
    .array-data 4
        0x6
        0x10
    .end array-data

    :array_6fc
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_704
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_70c
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_714
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_71c
    .array-data 4
        0x6
        0xa
    .end array-data

    :array_724
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_72c
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_734
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_73c
    .array-data 4
        0x8
        0xb
    .end array-data

    .line 971
    :array_744
    .array-data 4
        0x1
        0x13
    .end array-data

    :array_74c
    .array-data 4
        0x1
        0xb
    .end array-data

    :array_754
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_75c
    .array-data 4
        0x3
        0xb
    .end array-data

    :array_764
    .array-data 4
        0x3
        0xf
    .end array-data

    :array_76c
    .array-data 4
        0x3
        0xe
    .end array-data

    :array_774
    .array-data 4
        0x6
        0x10
    .end array-data

    :array_77c
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_784
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_78c
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_794
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_79c
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_7a4
    .array-data 4
        0x6
        0xa
    .end array-data

    :array_7ac
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_7b4
    .array-data 4
        0x8
        0x13
    .end array-data

    :array_7bc
    .array-data 4
        0x8
        0xb
    .end array-data

    .line 1030
    :array_7c4
    .array-data 4
        0x1
        0xb
    .end array-data

    :array_7cc
    .array-data 4
        0x1
        0xd
    .end array-data

    :array_7d4
    .array-data 4
        0x1
        0xf
    .end array-data

    :array_7dc
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_7e4
    .array-data 4
        0x3
        0xa
    .end array-data

    :array_7ec
    .array-data 4
        0x3
        0xe
    .end array-data

    :array_7f4
    .array-data 4
        0x3
        0xf
    .end array-data

    :array_7fc
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_804
    .array-data 4
        0x6
        0x10
    .end array-data

    :array_80c
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_814
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_81c
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_824
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_82c
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_834
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_83c
    .array-data 4
        0x6
        0xf
    .end array-data

    :array_844
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_84c
    .array-data 4
        0x8
        0xb
    .end array-data

    :array_854
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_85c
    .array-data 4
        0x8
        0xf
    .end array-data

    :array_864
    .array-data 4
        0x8
        0xe
    .end array-data

    .line 1091
    :array_86c
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_874
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_87c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_884
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_88c
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_894
    .array-data 4
        0x7
        0x10
    .end array-data

    :array_89c
    .array-data 4
        0x8
        0x11
    .end array-data

    :array_8a4
    .array-data 4
        0xa
        0x13
    .end array-data

    :array_8ac
    .array-data 4
        0xb
        0x14
    .end array-data

    :array_8b4
    .array-data 4
        0xc
        0x15
    .end array-data

    :array_8bc
    .array-data 4
        0xd
        0x16
    .end array-data

    :array_8c4
    .array-data 4
        0xf
        0x17
    .end array-data

    :array_8cc
    .array-data 4
        0x10
        0x18
    .end array-data

    :array_8d4
    .array-data 4
        0x11
        0x19
    .end array-data

    :array_8dc
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_8e4
    .array-data 4
        0x13
        0x1b
    .end array-data

    .line 1166
    :array_8ec
    .array-data 4
        0x1
        0x10
        0x2
    .end array-data

    :array_8f6
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_8fe
    .array-data 4
        0x4
        0x11
        0x5
    .end array-data

    :array_908
    .array-data 4
        0x8
        0x12
        0x9
    .end array-data

    :array_912
    .array-data 4
        0x7
        0xa
        0xb
    .end array-data

    :array_91c
    .array-data 4
        0xd
        0xf
        0xe
    .end array-data

    :array_926
    .array-data 4
        0xc
        0x13
    .end array-data

    .line 1192
    :array_92e
    .array-data 4
        0x1
        0x10
        0x2
    .end array-data

    :array_938
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_940
    .array-data 4
        0x4
        0x11
        0x5
    .end array-data

    :array_94a
    .array-data 4
        0x8
        0x12
        0x9
    .end array-data

    :array_954
    .array-data 4
        0xa
        0x13
        0xb
    .end array-data

    :array_95e
    .array-data 4
        0xd
        0xf
        0xe
    .end array-data

    :array_968
    .array-data 4
        0xc
        0x7
    .end array-data

    .line 1218
    :array_970
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_978
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_980
    .array-data 4
        0x8
        0x9
    .end array-data

    :array_988
    .array-data 4
        0xa
        0xb
    .end array-data

    :array_990
    .array-data 4
        0xd
        0xe
    .end array-data

    .line 1285
    :array_998
    .array-data 4
        0x1
        0x10
    .end array-data

    :array_9a0
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_9a8
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_9b0
    .array-data 4
        0x4
        0x11
    .end array-data

    :array_9b8
    .array-data 4
        0x11
        0x3
    .end array-data

    :array_9c0
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_9c8
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_9d0
    .array-data 4
        0x12
        0x7
    .end array-data

    :array_9d8
    .array-data 4
        0xa
        0xd
    .end array-data

    :array_9e0
    .array-data 4
        0xd
        0xf
    .end array-data

    :array_9e8
    .array-data 4
        0xf
        0xa
    .end array-data

    :array_9f0
    .array-data 4
        0xc
        0x13
    .end array-data

    :array_9f8
    .array-data 4
        0x13
        0xc
    .end array-data

    .line 1342
    :array_a00
    .array-data 4
        0x1
        0x13
        0x3
    .end array-data

    :array_a0a
    .array-data 4
        0x4
        0x16
        0x5
    .end array-data

    :array_a14
    .array-data 4
        0x4
        0x1b
        0x6
    .end array-data

    :array_a1e
    .array-data 4
        0x8
        0x1
        0x9
    .end array-data

    :array_a28
    .array-data 4
        0x8
        0x10
        0xa
    .end array-data

    :array_a32
    .array-data 4
        0x8
        0x11
        0xb
    .end array-data

    :array_a3c
    .array-data 4
        0x8
        0x1a
        0xe
    .end array-data

    :array_a46
    .array-data 4
        0x8
        0x13
        0xc
    .end array-data

    :array_a50
    .array-data 4
        0x8
        0x19
        0xd
    .end array-data

    :array_a5a
    .array-data 4
        0x8
        0x1b
        0xf
    .end array-data

    :array_a64
    .array-data 4
        0x11
        0x13
        0x12
    .end array-data

    .line 1409
    :array_a6e
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_a76
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_a7e
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_a86
    .array-data 4
        0xe
        0x12
    .end array-data

    :array_a8e
    .array-data 4
        0x15
        0x13
        0x14
    .end array-data

    .line 1427
    :array_a98
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_aa0
    .array-data 4
        0x9
        0xe
    .end array-data

    .line 1437
    :array_aa8
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_ab0
    .array-data 4
        0x6
        0x8
    .end array-data

    .line 1481
    :array_ab8
    .array-data 4
        0x1
        0x15
        0x2
    .end array-data

    :array_ac2
    .array-data 4
        0x3
        0x15
        0x4
    .end array-data

    :array_acc
    .array-data 4
        0x5
        0x15
        0x6
    .end array-data

    :array_ad6
    .array-data 4
        0x7
        0x15
        0x8
    .end array-data

    :array_ae0
    .array-data 4
        0x9
        0x1
        0xa
    .end array-data

    :array_aea
    .array-data 4
        0xa
        0x15
        0xb
    .end array-data

    :array_af4
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_afe
    .array-data 4
        0xe
        0x5
        0xf
    .end array-data

    :array_b08
    .array-data 4
        0xf
        0x15
        0x10
    .end array-data

    :array_b12
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_b1c
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    .line 1523
    :array_b26
    .array-data 4
        0x9
        0x1
        0xa
    .end array-data

    :array_b30
    .array-data 4
        0x9
        0x2
        0xb
    .end array-data

    :array_b3a
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_b44
    .array-data 4
        0xe
        0x5
        0xf
    .end array-data

    :array_b4e
    .array-data 4
        0xe
        0x6
        0x10
    .end array-data

    :array_b58
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_b62
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    .line 1552
    :array_b6c
    .array-data 4
        0x9
        0x1
        0xa
    .end array-data

    :array_b76
    .array-data 4
        0x9
        0x2
        0xb
    .end array-data

    :array_b80
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_b8a
    .array-data 4
        0xe
        0x5
        0xf
    .end array-data

    :array_b94
    .array-data 4
        0xe
        0x6
        0x10
    .end array-data

    :array_b9e
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_ba8
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    .line 1590
    :array_bb2
    .array-data 4
        0x15
        0x63
        0x1
    .end array-data

    :array_bbc
    .array-data 4
        0x3
        0x63
        0x1
    .end array-data

    :array_bc6
    .array-data 4
        0x1
        0x63
        0x3
    .end array-data

    :array_bd0
    .array-data 4
        0x63
        0x15
        0x5
    .end array-data

    :array_bda
    .array-data 4
        0x62
        0x15
        0x7
    .end array-data

    :array_be4
    .array-data 4
        0x63
        0x63
        0x62
    .end array-data

    :array_bee
    .array-data 4
        0x62
        0x63
        0x62
    .end array-data

    :array_bf8
    .array-data 4
        0x63
        0x13
        0x9
    .end array-data

    :array_c02
    .array-data 4
        0x62
        0x13
        0xd
    .end array-data

    :array_c0c
    .array-data 4
        0x13
        0x63
        0xe
    .end array-data

    :array_c16
    .array-data 4
        0xe
        0x63
        0x12
    .end array-data

    :array_c20
    .array-data 4
        0x12
        0x63
        0xe
    .end array-data

    :array_c2a
    .array-data 4
        0x13
        0x62
        0x12
    .end array-data

    :array_c34
    .array-data 4
        0x1
        0x15
        0x2
    .end array-data

    :array_c3e
    .array-data 4
        0x3
        0x15
        0x4
    .end array-data

    :array_c48
    .array-data 4
        0x5
        0x15
        0x6
    .end array-data

    :array_c52
    .array-data 4
        0x7
        0x15
        0x8
    .end array-data

    :array_c5c
    .array-data 4
        0xc
        0x63
        0xa
    .end array-data

    :array_c66
    .array-data 4
        0xa
        0x15
        0xb
    .end array-data

    :array_c70
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_c7a
    .array-data 4
        0x12
        0x15
        0xf
    .end array-data

    :array_c84
    .array-data 4
        0xf
        0x15
        0x10
    .end array-data

    :array_c8e
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_c98
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    .line 1678
    :array_ca2
    .array-data 4
        0x1
        0x15
        0x2
    .end array-data

    :array_cac
    .array-data 4
        0x3
        0x15
        0x4
    .end array-data

    :array_cb6
    .array-data 4
        0x5
        0x15
        0x6
    .end array-data

    :array_cc0
    .array-data 4
        0x7
        0x15
        0x8
    .end array-data

    :array_cca
    .array-data 4
        0x9
        0x1
        0xa
    .end array-data

    :array_cd4
    .array-data 4
        0xa
        0x15
        0xb
    .end array-data

    :array_cde
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_ce8
    .array-data 4
        0xe
        0x1
        0xf
    .end array-data

    :array_cf2
    .array-data 4
        0xe
        0x5
        0xf
    .end array-data

    :array_cfc
    .array-data 4
        0xf
        0x15
        0x10
    .end array-data

    :array_d06
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_d10
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    :array_d1a
    .array-data 4
        0xf
        0x1
        0xf
    .end array-data

    .line 1721
    :array_d24
    .array-data 4
        0x1
        0x15
        0x2
    .end array-data

    :array_d2e
    .array-data 4
        0x3
        0x15
        0x4
    .end array-data

    :array_d38
    .array-data 4
        0x5
        0x15
        0x6
    .end array-data

    :array_d42
    .array-data 4
        0x7
        0x15
        0x8
    .end array-data

    :array_d4c
    .array-data 4
        0x9
        0x1
        0xa
    .end array-data

    :array_d56
    .array-data 4
        0x9
        0x2
        0xb
    .end array-data

    :array_d60
    .array-data 4
        0x9
        0x15
        0xc
    .end array-data

    :array_d6a
    .array-data 4
        0xa
        0x15
        0xb
    .end array-data

    :array_d74
    .array-data 4
        0xe
        0x5
        0xf
    .end array-data

    :array_d7e
    .array-data 4
        0xe
        0x6
        0x10
    .end array-data

    :array_d88
    .array-data 4
        0xe
        0x15
        0x11
    .end array-data

    :array_d92
    .array-data 4
        0xf
        0x15
        0x10
    .end array-data

    :array_d9c
    .array-data 4
        0x13
        0x15
        0x14
    .end array-data

    .line 1855
    :array_da6
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_dae
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_db6
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_dbe
    .array-data 4
        0x7
        0x5
    .end array-data

    :array_dc6
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_dce
    .array-data 4
        0xd
        0x9
    .end array-data

    :array_dd6
    .array-data 4
        0xe
        0x12
    .end array-data

    :array_dde
    .array-data 4
        0x12
        0xe
    .end array-data

    .line 1901
    :array_de6
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    .line 74
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    .line 89
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mNewTextLength:I

    .line 93
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    .line 94
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    .line 97
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    .line 100
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    .line 101
    return-void
.end method

.method private addStrokeVowel(I)Z
    .registers 9
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1886
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v4, :cond_2c

    .line 1887
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStrokeVowel: index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_2c
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->ADD_STROKE_VOWEL_LG:[[I

    .line 1891
    .local v1, "table":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    array-length v4, v1

    if-ge v0, v4, :cond_48

    .line 1892
    aget-object v4, v1, v0

    aget v4, v4, v3

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_45

    .line 1893
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget-object v4, v1, v0

    aget v4, v4, v2

    aput v4, v3, p1

    .line 1898
    :goto_44
    return v2

    .line 1891
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_48
    move v2, v3

    .line 1898
    goto :goto_44
.end method

.method private clearComposingText()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mNewTextLength:I

    .line 311
    return-void
.end method

.method private finalToInitial(I)I
    .registers 7
    .param p1, "codeIndex"    # I

    .prologue
    .line 1143
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_FINAL_TABLE:[[I

    .line 1144
    .local v2, "table":[[I
    const/4 v1, 0x0

    .line 1145
    .local v1, "initialC":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 1146
    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v3, p1, :cond_14

    .line 1147
    aget-object v3, v2, v0

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 1151
    :cond_13
    return v1

    .line 1145
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getAddStrokeInitial(I)I
    .registers 7
    .param p1, "codeIndex"    # I

    .prologue
    .line 1328
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->ADD_STROKE_INITIAL_TABLE:[[I

    .line 1330
    .local v2, "table":[[I
    const/4 v1, 0x0

    .line 1332
    .local v1, "initial":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 1333
    aget-object v3, v2, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_14

    .line 1334
    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 1339
    :cond_13
    return v1

    .line 1332
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getCharCodeFromIndex(III)C
    .registers 8
    .param p1, "indexI"    # I
    .param p2, "indexM"    # I
    .param p3, "indexF"    # I

    .prologue
    .line 1907
    const/4 v0, 0x0

    .line 1909
    .local v0, "code":I
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    .line 1910
    int-to-char v1, v0

    .line 1933
    :goto_8
    return v1

    .line 1912
    :cond_9
    if-nez p2, :cond_15

    if-nez p3, :cond_15

    .line 1913
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_CODE_TABLE:[C

    add-int/lit8 v2, p1, -0x1

    aget-char v0, v1, v2

    .line 1914
    int-to-char v1, v0

    goto :goto_8

    .line 1916
    :cond_15
    if-nez p1, :cond_49

    if-nez p3, :cond_49

    .line 1917
    const/16 v1, 0x63

    if-ne p2, v1, :cond_3d

    .line 1918
    const/16 v0, 0xb7

    .line 1919
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v1, :cond_3b

    .line 1920
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCharCodeFromIndex: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_3b
    :goto_3b
    int-to-char v1, v0

    goto :goto_8

    .line 1922
    :cond_3d
    const/16 v1, 0x62

    if-ne p2, v1, :cond_44

    .line 1923
    const/16 v0, 0x2025

    goto :goto_3b

    .line 1926
    :cond_44
    add-int/lit16 v1, p2, 0x314f

    add-int/lit8 v0, v1, -0x1

    goto :goto_3b

    .line 1931
    :cond_49
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x15

    add-int/lit8 v2, p2, -0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v1, p3

    const v2, 0xac00

    add-int v0, v1, v2

    .line 1933
    int-to-char v1, v0

    goto :goto_8
.end method

.method private getDoubleChar(I)I
    .registers 3
    .param p1, "initialIndex"    # I

    .prologue
    .line 1271
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/16 v0, 0x8

    if-eq p1, v0, :cond_12

    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    const/16 v0, 0xd

    if-ne p1, v0, :cond_15

    .line 1273
    :cond_12
    add-int/lit8 v0, p1, 0x1

    .line 1280
    :goto_14
    return v0

    .line 1275
    :cond_15
    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x5

    if-eq p1, v0, :cond_27

    const/16 v0, 0x9

    if-eq p1, v0, :cond_27

    const/16 v0, 0xb

    if-eq p1, v0, :cond_27

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2a

    .line 1277
    :cond_27
    add-int/lit8 v0, p1, -0x1

    goto :goto_14

    .line 1280
    :cond_2a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private getFinal(II)Z
    .registers 11
    .param p1, "finalCode"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1381
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->FINAL_TO_DFINAL:[[I

    .line 1382
    .local v2, "table":[[I
    const/4 v0, 0x0

    .line 1384
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 1385
    aget-object v3, v2, v1

    aget v3, v3, v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, p2

    if-ne v3, v4, :cond_36

    aget-object v3, v2, v1

    aget v3, v3, v7

    if-ne v3, p1, :cond_36

    .line 1386
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget-object v4, v2, v1

    aget v4, v4, v5

    aput v4, v3, v5

    .line 1387
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v4, 0x3

    aget-object v5, v2, v1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1388
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v4, 0x4

    aget-object v5, v2, v1

    aget v5, v5, v7

    aput v5, v3, v4

    .line 1389
    const/4 v0, 0x1

    .line 1394
    :cond_35
    return v0

    .line 1384
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private getMultiConsonant(I)I
    .registers 9
    .param p1, "codeIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 1240
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7d

    .line 1241
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE_CJI:[[I

    .line 1250
    .local v2, "table":[[I
    :goto_8
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 1251
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiConsonant: codeIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMultitapCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_30
    const/4 v0, 0x0

    .line 1254
    .local v0, "consonant":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    array-length v3, v2

    if-ge v1, v3, :cond_7c

    .line 1255
    aget-object v3, v2, v1

    aget v3, v3, v6

    if-ne v3, p1, :cond_92

    .line 1256
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    aget-object v4, v2, v1

    array-length v4, v4

    if-lt v3, v4, :cond_44

    .line 1257
    iput v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    .line 1258
    :cond_44
    aget-object v3, v2, v1

    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    aget v0, v3, v4

    .line 1259
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v3, :cond_7c

    .line 1260
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiConsonant: codeIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMultitapCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " consonant="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_7c
    return v0

    .line 1244
    .end local v0    # "consonant":I
    .end local v1    # "i":I
    .end local v2    # "table":[[I
    :cond_7d
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8a

    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-nez v3, :cond_8e

    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    if-eqz v3, :cond_8e

    .line 1245
    :cond_8a
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE_SKY_QWERTY:[[I

    .restart local v2    # "table":[[I
    goto/16 :goto_8

    .line 1248
    .end local v2    # "table":[[I
    :cond_8e
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_CONSONANT_TABLE:[[I

    .restart local v2    # "table":[[I
    goto/16 :goto_8

    .line 1254
    .restart local v0    # "consonant":I
    .restart local v1    # "i":I
    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method

.method private getMultiVowel(I)I
    .registers 10
    .param p1, "codeIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 1449
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    move v3, v4

    .line 1478
    :cond_7
    :goto_7
    return v3

    .line 1452
    :cond_8
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3b

    .line 1453
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE_NRG:[[I

    .line 1463
    .local v2, "table":[[I
    :goto_f
    const/4 v3, 0x0

    .line 1464
    .local v3, "vowel":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 1465
    aget-object v5, v2, v0

    aget v5, v5, v4

    if-ne v5, p1, :cond_4c

    .line 1466
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1b
    aget-object v5, v2, v0

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 1467
    aget-object v5, v2, v0

    aget v5, v5, v1

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_49

    .line 1468
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    aget-object v6, v2, v0

    array-length v6, v6

    if-lt v5, v6, :cond_34

    .line 1469
    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    .line 1470
    :cond_34
    aget-object v4, v2, v0

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    aget v3, v4, v5

    .line 1471
    goto :goto_7

    .line 1456
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "table":[[I
    .end local v3    # "vowel":I
    :cond_3b
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-nez v5, :cond_46

    iget-boolean v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    if-eqz v5, :cond_46

    .line 1457
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE_QWERTY_DOUBLE_TAP:[[I

    .restart local v2    # "table":[[I
    goto :goto_f

    .line 1461
    .end local v2    # "table":[[I
    :cond_46
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTI_VOWEL_TABLE:[[I

    .restart local v2    # "table":[[I
    goto :goto_f

    .line 1466
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "vowel":I
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1464
    .end local v1    # "j":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private getVowel(I)Z
    .registers 9
    .param p1, "inputCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 1814
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    packed-switch v3, :pswitch_data_40

    .line 1834
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    if-eqz v3, :cond_39

    .line 1835
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_QWERTY_DOUBLETAP:[[I

    .line 1843
    .local v2, "table":[[I
    :goto_c
    const/4 v0, 0x0

    .line 1844
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 1845
    aget-object v3, v2, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v6

    if-ne v3, v4, :cond_3c

    aget-object v3, v2, v1

    aget v3, v3, v6

    if-ne v3, p1, :cond_3c

    .line 1846
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget-object v4, v2, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v3, v6

    .line 1847
    const/4 v0, 0x1

    .line 1852
    :cond_2c
    return v0

    .line 1816
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "table":[[I
    :pswitch_2d
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_NRG:[[I

    .line 1817
    .restart local v2    # "table":[[I
    goto :goto_c

    .line 1821
    .end local v2    # "table":[[I
    :pswitch_30
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE:[[I

    .line 1822
    .restart local v2    # "table":[[I
    goto :goto_c

    .line 1824
    .end local v2    # "table":[[I
    :pswitch_33
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_CJI:[[I

    .line 1825
    .restart local v2    # "table":[[I
    goto :goto_c

    .line 1828
    .end local v2    # "table":[[I
    :pswitch_36
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_SMART:[[I

    .line 1829
    .restart local v2    # "table":[[I
    goto :goto_c

    .line 1838
    .end local v2    # "table":[[I
    :cond_39
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_QWERTY:[[I

    .restart local v2    # "table":[[I
    goto :goto_c

    .line 1844
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1814
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_30
        :pswitch_33
        :pswitch_2d
        :pswitch_30
        :pswitch_36
    .end packed-switch
.end method

.method private initialToFinal(I)I
    .registers 7
    .param p1, "codeIndex"    # I

    .prologue
    .line 1155
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_FINAL_TABLE:[[I

    .line 1156
    .local v2, "table":[[I
    const/4 v0, 0x0

    .line 1157
    .local v0, "finalC":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 1158
    aget-object v3, v2, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_14

    .line 1159
    aget-object v3, v2, v1

    const/4 v4, 0x1

    aget v0, v3, v4

    .line 1163
    :cond_13
    return v0

    .line 1157
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private isDFianl(I)Z
    .registers 7
    .param p1, "code"    # I

    .prologue
    .line 1398
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->FINAL_TO_DFINAL:[[I

    .line 1399
    .local v2, "table":[[I
    const/4 v0, 0x0

    .line 1400
    .local v0, "dfinal":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 1401
    aget-object v3, v2, v1

    const/4 v4, 0x2

    aget v3, v3, v4

    if-ne v3, p1, :cond_10

    .line 1402
    const/4 v0, 0x1

    .line 1406
    :cond_f
    return v0

    .line 1400
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private isMultitapComposing(II)Z
    .registers 9
    .param p1, "prevCode"    # I
    .param p2, "codeIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1064
    const/16 v4, 0x13

    if-lt p2, v4, :cond_7

    .line 1088
    :cond_6
    :goto_6
    return v2

    .line 1068
    :cond_7
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 1069
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_TABLE_CJI:[[I

    .line 1082
    .local v1, "table":[[I
    :goto_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v4, v1

    if-ge v0, v4, :cond_6

    .line 1083
    aget-object v4, v1, v0

    aget v4, v4, v2

    if-ne v4, p1, :cond_2f

    aget-object v4, v1, v0

    aget v4, v4, v3

    if-ne v4, p2, :cond_2f

    move v2, v3

    .line 1084
    goto :goto_6

    .line 1071
    .end local v0    # "i":I
    .end local v1    # "table":[[I
    :cond_20
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    .line 1072
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_NRG:[[I

    .restart local v1    # "table":[[I
    goto :goto_e

    .line 1075
    .end local v1    # "table":[[I
    :cond_28
    iget v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-ne v4, v3, :cond_6

    .line 1076
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->MULTITAP_INITIAL_TABLE:[[I

    .restart local v1    # "table":[[I
    goto :goto_e

    .line 1082
    .restart local v0    # "i":I
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private isMultitapQwerty(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    if-eqz v0, :cond_22

    .line 330
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3fd

    if-eq p1, v0, :cond_20

    const/16 v0, 0x401

    if-ne p1, v0, :cond_22

    .line 333
    :cond_20
    const/4 v0, 0x1

    .line 336
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isMultitapSkyQwerty(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 314
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_24

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_24

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_24

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_24

    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_24

    const/16 v0, 0x3fc

    if-eq p1, v0, :cond_24

    const/16 v0, 0x400

    if-eq p1, v0, :cond_24

    const/16 v0, 0x404

    if-eq p1, v0, :cond_24

    const/16 v0, 0x409

    if-ne p1, v0, :cond_26

    .line 322
    :cond_24
    const/4 v0, 0x1

    .line 324
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private processBackspace()Z
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 340
    const/4 v0, 0x1

    .line 342
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->resetMultitap()V

    .line 343
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 344
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackspace: mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_27
    iget v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    packed-switch v1, :pswitch_data_ac

    .line 394
    :cond_2c
    :goto_2c
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v1, :cond_4a

    .line 395
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackspace: after, mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4a
    iget v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    .line 399
    return v0

    .line 347
    :pswitch_50
    const/4 v0, 0x0

    .line 348
    goto :goto_2c

    .line 351
    :pswitch_52
    iput v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 352
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    goto :goto_2c

    .line 357
    :pswitch_58
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->splitVowel(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 358
    iput v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 359
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    goto :goto_2c

    .line 365
    :pswitch_68
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->splitVowel(I)Z

    move-result v1

    if-nez v1, :cond_75

    .line 366
    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2c

    .line 369
    :cond_75
    iget v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-ne v1, v7, :cond_2c

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    const/16 v2, 0x62

    if-eq v1, v2, :cond_89

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2c

    .line 370
    :cond_89
    const/16 v1, 0x9

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2c

    .line 376
    :pswitch_8e
    iput v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2c

    .line 380
    :pswitch_91
    iput v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 381
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    goto :goto_2c

    .line 385
    :pswitch_99
    iput v8, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 386
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v6

    aput v2, v1, v7

    goto :goto_2c

    .line 390
    :pswitch_a4
    iput v8, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 391
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    goto :goto_2c

    .line 345
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_50
        :pswitch_52
        :pswitch_58
        :pswitch_68
        :pswitch_91
        :pswitch_8e
        :pswitch_99
        :pswitch_a4
        :pswitch_58
        :pswitch_68
    .end packed-switch
.end method

.method private processState1_C(II)V
    .registers 7
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/16 v0, 0x62

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 848
    packed-switch p2, :pswitch_data_6a

    .line 874
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processState1_C: invalid type, korInput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " codeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_29
    :goto_29
    return-void

    .line 850
    :pswitch_2a
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    if-ne v2, v0, :cond_34

    const/16 v0, 0x63

    :cond_34
    aput v0, v1, v3

    goto :goto_29

    .line 856
    :pswitch_37
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 857
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 858
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 859
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    const-string v1, "processState1_C: fail_getVowel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_4b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v3

    invoke-direct {p0, v2, v0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 861
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v0, v3

    .line 862
    const/16 v0, 0x8

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 868
    :pswitch_5b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v3

    invoke-direct {p0, v2, v0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 869
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v0, v2

    .line 870
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 848
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5b
        :pswitch_37
        :pswitch_37
        :pswitch_2a
    .end packed-switch
.end method

.method private processState1_I(II)V
    .registers 7
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    packed-switch p2, :pswitch_data_6c

    .line 442
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processState1_I: invalid type, korInput="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codeIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_27
    :goto_27
    return-void

    .line 406
    :pswitch_28
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/16 v2, 0x63

    aput v2, v1, v3

    .line 407
    const/16 v1, 0x9

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_27

    .line 412
    :pswitch_33
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v3

    .line 413
    const/4 v1, 0x3

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_27

    .line 417
    :pswitch_3b
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v2

    invoke-direct {p0, v1, v2, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 418
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v2

    goto :goto_27

    .line 424
    :pswitch_47
    const/4 v0, 0x0

    .line 425
    .local v0, "newInitial":I
    const/4 v1, 0x5

    if-ne p2, v1, :cond_5a

    .line 426
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getAddStrokeInitial(I)I

    move-result v0

    .line 435
    :goto_53
    if-lez v0, :cond_27

    .line 436
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v1, v2

    goto :goto_27

    .line 428
    :cond_5a
    const/4 v1, 0x6

    if-ne p2, v1, :cond_66

    .line 429
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getDoubleChar(I)I

    move-result v0

    goto :goto_53

    .line 432
    :cond_66
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiConsonant(I)I

    move-result v0

    goto :goto_53

    .line 404
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_47
        :pswitch_33
        :pswitch_33
        :pswitch_28
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method private processState1_M(II)V
    .registers 8
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 450
    packed-switch p2, :pswitch_data_90

    .line 497
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processState1_M: invalid type, korInput="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codeIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_28
    :goto_28
    return-void

    .line 452
    :pswitch_29
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 453
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 454
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 455
    sget-object v1, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    const-string v2, "processState1_M: fail_getVowel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_3c
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 457
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v3

    .line 458
    const/16 v1, 0x8

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 463
    :pswitch_4c
    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->addStrokeVowel(I)Z

    .line 464
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 468
    :pswitch_52
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 469
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 470
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v3

    goto :goto_28

    .line 476
    :pswitch_64
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiVowel(I)I

    move-result v0

    .line 477
    .local v0, "multiVowel":I
    if-lez v0, :cond_6f

    .line 478
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v1, v3

    goto :goto_28

    .line 481
    :cond_6f
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 482
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 483
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v3

    goto :goto_28

    .line 491
    .end local v0    # "multiVowel":I
    :pswitch_81
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 492
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v1, v4

    .line 493
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 450
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_81
        :pswitch_81
        :pswitch_52
        :pswitch_64
        :pswitch_29
        :pswitch_4c
    .end packed-switch
.end method

.method private processState2_IM(II)V
    .registers 10
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 505
    packed-switch p2, :pswitch_data_a8

    .line 560
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processState2_IM: invalid type, korInput="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codeIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_29
    :goto_29
    return-void

    .line 507
    :pswitch_2a
    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 508
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 509
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 510
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v4

    .line 511
    const/16 v2, 0x8

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 516
    :pswitch_46
    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->addStrokeVowel(I)Z

    .line 517
    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 521
    :pswitch_4c
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 522
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 523
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v4

    .line 524
    iput v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 530
    :pswitch_64
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiVowel(I)I

    move-result v1

    .line 531
    .local v1, "multiVowel":I
    if-lez v1, :cond_6f

    .line 532
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v1, v2, v4

    goto :goto_29

    .line 535
    :cond_6f
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 536
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 537
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v4

    .line 538
    iput v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 546
    .end local v1    # "multiVowel":I
    :pswitch_87
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v0

    .line 548
    .local v0, "finalCode":I
    if-lez v0, :cond_95

    .line 549
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v2, v6

    .line 550
    const/4 v2, 0x4

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 553
    :cond_95
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 554
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v5

    .line 555
    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 505
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_87
        :pswitch_87
        :pswitch_4c
        :pswitch_64
        :pswitch_2a
        :pswitch_46
    .end packed-switch
.end method

.method private processState2_I_C(II)V
    .registers 7
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/16 v0, 0x62

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 881
    packed-switch p2, :pswitch_data_76

    .line 909
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processState1_C: invalid type, korInput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " codeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_29
    :goto_29
    return-void

    .line 883
    :pswitch_2a
    const/16 v1, 0x9

    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 884
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    if-ne v2, v0, :cond_38

    const/16 v0, 0x63

    :cond_38
    aput v0, v1, v3

    goto :goto_29

    .line 890
    :pswitch_3b
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 891
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getVowel(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 892
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v1

    invoke-direct {p0, v0, v1, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 893
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v3

    invoke-direct {p0, v1, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 894
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 895
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 896
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    const-string v1, "processState2_I_C, KOR_STATE_2_I_C"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 902
    :pswitch_61
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v1

    invoke-direct {p0, v0, v1, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 903
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v0, v3

    invoke-direct {p0, v1, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 904
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v0, v1

    .line 905
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_29

    .line 881
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_3b
        :pswitch_3b
        :pswitch_2a
    .end packed-switch
.end method

.method private processState3_IMF(II)V
    .registers 13
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 569
    packed-switch p2, :pswitch_data_f8

    .line 643
    sget-object v4, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processState3_IMF: invalid type, korInput="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " codeIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_2a
    :goto_2a
    return-void

    .line 571
    :pswitch_2b
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v9

    invoke-direct {p0, v4, v5, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 572
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v5

    aput v5, v4, v7

    .line 573
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v4, v9

    .line 574
    const/16 v4, 0x9

    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 579
    :pswitch_4b
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v9

    invoke-direct {p0, v4, v5, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 580
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v5

    aput v5, v4, v7

    .line 581
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v4, v9

    .line 582
    const/4 v4, 0x3

    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 589
    :pswitch_6a
    const/4 v0, 0x0

    .line 590
    .local v0, "curCode":I
    if-ne p2, v5, :cond_89

    .line 591
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 592
    .local v2, "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getAddStrokeInitial(I)I

    move-result v0

    .line 601
    .end local v2    # "prevCodeIdx":I
    :goto_79
    if-lez v0, :cond_2a

    .line 602
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v1

    .line 603
    .local v1, "finalCode":I
    if-lez v1, :cond_9d

    .line 604
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v1, v4, v8

    .line 605
    const/4 v4, 0x4

    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 594
    .end local v1    # "finalCode":I
    :cond_89
    if-ne p2, v4, :cond_98

    .line 595
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 596
    .restart local v2    # "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getDoubleChar(I)I

    move-result v0

    .line 597
    goto :goto_79

    .line 599
    .end local v2    # "prevCodeIdx":I
    :cond_98
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiConsonant(I)I

    move-result v0

    goto :goto_79

    .line 608
    .restart local v1    # "finalCode":I
    :cond_9d
    iput v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 609
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v4, v5

    goto :goto_2a

    .line 616
    .end local v0    # "curCode":I
    .end local v1    # "finalCode":I
    :pswitch_a4
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v1

    .line 617
    .restart local v1    # "finalCode":I
    if-lez v1, :cond_e0

    .line 618
    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 621
    invoke-direct {p0, v1, v8}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getFinal(II)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 622
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v3

    .line 623
    .local v3, "prevIcode":I
    invoke-direct {p0, v3, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isMultitapComposing(II)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 624
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v4, v5

    .line 625
    const/4 v4, 0x7

    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto/16 :goto_2a

    .line 628
    :cond_c9
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v6, v6, v8

    invoke-direct {p0, v4, v5, v6}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 629
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v4, v7

    .line 630
    iput v9, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto/16 :goto_2a

    .line 635
    .end local v3    # "prevIcode":I
    :cond_e0
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v6, v6, v8

    invoke-direct {p0, v4, v5, v6}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 636
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v4, v7

    .line 637
    iput v9, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto/16 :goto_2a

    .line 569
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_6a
        :pswitch_4b
        :pswitch_4b
        :pswitch_2b
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method private processState3_IM_I(II)V
    .registers 11
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 652
    packed-switch p2, :pswitch_data_b4

    .line 703
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processState3_IM_I: invalid type, korInput="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " codeIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_28
    :goto_28
    return-void

    .line 654
    :pswitch_29
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 655
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v6

    aput v4, v3, v5

    .line 656
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v7

    .line 657
    const/16 v3, 0x9

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 662
    :pswitch_45
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 663
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v6

    aput v4, v3, v5

    .line 664
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v7

    .line 665
    const/4 v3, 0x3

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 669
    :pswitch_60
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 670
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    invoke-direct {p0, v3, v5, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 671
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v5

    .line 672
    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 676
    :pswitch_79
    const/4 v0, 0x0

    .line 677
    .local v0, "curCode":I
    if-ne p2, v6, :cond_99

    .line 678
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 679
    .local v2, "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getAddStrokeInitial(I)I

    move-result v0

    .line 689
    .end local v2    # "prevCodeIdx":I
    :goto_88
    if-lez v0, :cond_28

    .line 690
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v1

    .line 691
    .local v1, "finalCode":I
    if-lez v1, :cond_ae

    .line 692
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v4, 0x2

    aput v1, v3, v4

    .line 693
    const/4 v3, 0x4

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_28

    .line 681
    .end local v1    # "finalCode":I
    :cond_99
    const/4 v3, 0x6

    if-ne p2, v3, :cond_a9

    .line 682
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 683
    .restart local v2    # "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getDoubleChar(I)I

    move-result v0

    .line 684
    goto :goto_88

    .line 686
    .end local v2    # "prevCodeIdx":I
    :cond_a9
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiConsonant(I)I

    move-result v0

    goto :goto_88

    .line 696
    .restart local v1    # "finalCode":I
    :cond_ae
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v3, v6

    goto/16 :goto_28

    .line 652
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_60
        :pswitch_79
        :pswitch_45
        :pswitch_45
        :pswitch_29
    .end packed-switch
.end method

.method private processState4_IMFF(II)V
    .registers 14
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 711
    packed-switch p2, :pswitch_data_f0

    .line 771
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processState4_IMFF: invalid type, korInput="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " codeIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_2a
    :goto_2a
    return-void

    .line 713
    :pswitch_2b
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v9

    aput v4, v3, v7

    .line 714
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 715
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v10

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v4

    aput v4, v3, v6

    .line 716
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v8

    .line 717
    const/16 v3, 0x9

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 722
    :pswitch_57
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v9

    aput v4, v3, v7

    .line 723
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 724
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v10

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v4

    aput v4, v3, v6

    .line 725
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v8

    .line 726
    iput v9, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 730
    :pswitch_81
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v5, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 731
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v3, v6

    .line 732
    iput v8, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 739
    :pswitch_97
    const/4 v3, 0x6

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "curCode":I
    const/4 v3, 0x5

    if-ne p2, v3, :cond_da

    .line 743
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v10

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 744
    .local v2, "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getAddStrokeInitial(I)I

    move-result v0

    .line 753
    .end local v2    # "prevCodeIdx":I
    :goto_aa
    if-lez v0, :cond_2a

    .line 754
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v1

    .line 756
    .local v1, "finalCode":I
    invoke-direct {p0, v1, v9}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getFinal(II)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 757
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v4, 0x5

    aput v0, v3, v4

    .line 758
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v7

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isDFianl(I)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 760
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v9

    aput v4, v3, v7

    .line 762
    :cond_cd
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v6, v3, v9

    .line 763
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v6, v3, v10

    .line 764
    const/4 v3, 0x7

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto/16 :goto_2a

    .line 746
    .end local v1    # "finalCode":I
    :cond_da
    const/4 v3, 0x6

    if-ne p2, v3, :cond_ea

    .line 747
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v10

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->finalToInitial(I)I

    move-result v2

    .line 748
    .restart local v2    # "prevCodeIdx":I
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getDoubleChar(I)I

    move-result v0

    .line 749
    goto :goto_aa

    .line 751
    .end local v2    # "prevCodeIdx":I
    :cond_ea
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiConsonant(I)I

    move-result v0

    goto :goto_aa

    .line 711
    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_81
        :pswitch_97
        :pswitch_57
        :pswitch_57
        :pswitch_2b
        :pswitch_97
        :pswitch_97
    .end packed-switch
.end method

.method private processState4_IMF_I(II)V
    .registers 13
    .param p1, "codeIndex"    # I
    .param p2, "korInput"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 779
    packed-switch p2, :pswitch_data_d8

    .line 839
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processState4_IMF_I: invalid type, korInput="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codeIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2a
    :goto_2a
    return-void

    .line 781
    :pswitch_2b
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 782
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    aput v3, v2, v5

    .line 783
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v7

    .line 784
    const/16 v2, 0x9

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 789
    :pswitch_4b
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 790
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v6

    aput v3, v2, v5

    .line 791
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v7

    .line 792
    iput v9, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 796
    :pswitch_69
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v4, v4, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 797
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v6

    invoke-direct {p0, v2, v5, v5}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setCompletedText(III)V

    .line 798
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput p1, v2, v5

    .line 800
    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_2a

    .line 807
    :pswitch_86
    const/4 v0, 0x0

    .line 808
    .local v0, "curCode":I
    if-ne p2, v6, :cond_b4

    .line 809
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v6

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getAddStrokeInitial(I)I

    move-result v0

    .line 817
    :goto_91
    if-lez v0, :cond_2a

    .line 818
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->initialToFinal(I)I

    move-result v1

    .line 819
    .local v1, "finalCode":I
    if-lez v1, :cond_c5

    .line 820
    const/4 v2, 0x6

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 821
    invoke-direct {p0, v1, v8}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getFinal(II)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 822
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v5, v2, v9

    .line 823
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v3, 0x4

    aput v5, v2, v3

    .line 824
    const/4 v2, 0x7

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 825
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v2, v6

    goto/16 :goto_2a

    .line 811
    .end local v1    # "finalCode":I
    :cond_b4
    const/4 v2, 0x6

    if-ne p2, v2, :cond_c0

    .line 812
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v6

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getDoubleChar(I)I

    move-result v0

    goto :goto_91

    .line 815
    :cond_c0
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getMultiConsonant(I)I

    move-result v0

    goto :goto_91

    .line 829
    .restart local v1    # "finalCode":I
    :cond_c5
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v5, v2, v9

    .line 830
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v3, 0x4

    aput v5, v2, v3

    .line 831
    const/4 v2, 0x7

    iput v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 832
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v2, v6

    goto/16 :goto_2a

    .line 779
    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_69
        :pswitch_86
        :pswitch_4b
        :pswitch_4b
        :pswitch_2b
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method private setCompletedText(III)V
    .registers 6
    .param p1, "indexI"    # I
    .param p2, "indexM"    # I
    .param p3, "indexF"    # I

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1939
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mNewTextLength:I

    .line 1940
    return-void
.end method

.method private setComposingText(I)V
    .registers 9
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1944
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1945
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingText: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_20
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    packed-switch v0, :pswitch_data_fc

    .line 1992
    :goto_25
    return-void

    .line 1948
    :pswitch_26
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    goto :goto_25

    .line 1952
    :pswitch_2a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, v4, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1956
    :pswitch_38
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1960
    :pswitch_46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    invoke-direct {p0, v1, v2, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1964
    :pswitch_58
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    invoke-direct {p0, v1, v2, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1965
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v6

    invoke-direct {p0, v1, v4, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1969
    :pswitch_77
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1971
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v6

    invoke-direct {p0, v1, v4, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 1976
    :pswitch_9a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v3, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    .line 1981
    :pswitch_b1
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v0, :cond_d1

    .line 1982
    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingText: KOR_STATE_1_C, mCodeIdx[IDX_1_M]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_d1
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    .line 1988
    :pswitch_e0
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, v4, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1989
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v1, v1, v3

    invoke-direct {p0, v4, v1, v4}, Lcom/pantech/inputmethod/skyime/AutomataKor;->getCharCodeFromIndex(III)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    .line 1946
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_26
        :pswitch_2a
        :pswitch_38
        :pswitch_46
        :pswitch_9a
        :pswitch_58
        :pswitch_9a
        :pswitch_77
        :pswitch_b1
        :pswitch_e0
    .end packed-switch
.end method

.method private splitVowel(I)Z
    .registers 9
    .param p1, "vowel"    # I

    .prologue
    .line 1767
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    packed-switch v3, :pswitch_data_2e

    .line 1792
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_QWERTY:[[I

    .line 1797
    .local v2, "table":[[I
    :goto_7
    const/4 v0, 0x0

    .line 1799
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 1800
    aget-object v3, v2, v1

    const/4 v4, 0x2

    aget v3, v3, v4

    if-ne v3, p1, :cond_2b

    .line 1801
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v4, 0x1

    aget-object v5, v2, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1802
    const/4 v0, 0x1

    .line 1807
    :cond_1e
    return v0

    .line 1769
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "table":[[I
    :pswitch_1f
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_NRG:[[I

    .line 1770
    .restart local v2    # "table":[[I
    goto :goto_7

    .line 1774
    .end local v2    # "table":[[I
    :pswitch_22
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE:[[I

    .line 1775
    .restart local v2    # "table":[[I
    goto :goto_7

    .line 1777
    .end local v2    # "table":[[I
    :pswitch_25
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_CJI:[[I

    .line 1778
    .restart local v2    # "table":[[I
    goto :goto_7

    .line 1781
    .end local v2    # "table":[[I
    :pswitch_28
    sget-object v2, Lcom/pantech/inputmethod/skyime/AutomataKor;->COMBI_VOWEL_TABLE_SMART:[[I

    .line 1782
    .restart local v2    # "table":[[I
    goto :goto_7

    .line 1799
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1767
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_1f
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public complete2Composing(C)V
    .registers 13
    .param p1, "lastChar"    # C

    .prologue
    .line 2001
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v7, :cond_1c

    sget-object v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "complete2Composing: lastChar="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_1c
    const v7, 0xac00

    if-lt p1, v7, :cond_8d

    .line 2004
    const v7, 0xac00

    sub-int v6, p1, v7

    .line 2008
    .local v6, "temp":I
    div-int/lit16 v7, v6, 0x24c

    add-int/lit8 v3, v7, 0x1

    .line 2009
    .local v3, "initial":I
    rem-int/lit16 v6, v6, 0x24c

    .line 2010
    div-int/lit8 v7, v6, 0x1c

    add-int/lit8 v4, v7, 0x1

    .line 2011
    .local v4, "medium":I
    rem-int/lit8 v1, v6, 0x1c

    .line 2013
    .local v1, "finall":I
    if-lez v1, :cond_78

    .line 2014
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x0

    aput v3, v7, v8

    .line 2015
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x1

    aput v4, v7, v8

    .line 2016
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x2

    aput v1, v7, v8

    .line 2018
    sget-object v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->FINAL_TO_DFINAL:[[I

    .line 2019
    .local v5, "table":[[I
    const/4 v0, 0x0

    .line 2020
    .local v0, "dfinal":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    array-length v7, v5

    if-ge v2, v7, :cond_66

    .line 2021
    aget-object v7, v5, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    if-ne v7, v1, :cond_71

    .line 2022
    const/4 v0, 0x1

    .line 2023
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x3

    aget-object v9, v5, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 2024
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x4

    aget-object v9, v5, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 2029
    :cond_66
    if-eqz v0, :cond_74

    .line 2030
    const/4 v7, 0x6

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 2035
    :goto_6b
    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    .line 2054
    .end local v0    # "dfinal":Z
    .end local v1    # "finall":I
    .end local v2    # "i":I
    .end local v3    # "initial":I
    .end local v4    # "medium":I
    .end local v5    # "table":[[I
    .end local v6    # "temp":I
    :cond_70
    :goto_70
    return-void

    .line 2020
    .restart local v0    # "dfinal":Z
    .restart local v1    # "finall":I
    .restart local v2    # "i":I
    .restart local v3    # "initial":I
    .restart local v4    # "medium":I
    .restart local v5    # "table":[[I
    .restart local v6    # "temp":I
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2032
    :cond_74
    const/4 v7, 0x4

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_6b

    .line 2036
    .end local v0    # "dfinal":Z
    .end local v2    # "i":I
    .end local v5    # "table":[[I
    :cond_78
    if-lez v4, :cond_70

    .line 2037
    const/4 v7, 0x3

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 2038
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x0

    aput v3, v7, v8

    .line 2039
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x1

    aput v4, v7, v8

    .line 2040
    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    goto :goto_70

    .line 2042
    .end local v1    # "finall":I
    .end local v3    # "initial":I
    .end local v4    # "medium":I
    .end local v6    # "temp":I
    :cond_8d
    const/16 v7, 0x3131

    if-lt p1, v7, :cond_70

    const/16 v7, 0x314e

    if-gt p1, v7, :cond_70

    .line 2043
    const/4 v7, 0x1

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 2045
    sget-object v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->INITIAL_CODE_TABLE:[C

    .line 2046
    .local v5, "table":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9b
    array-length v7, v5

    if-ge v2, v7, :cond_a9

    .line 2047
    aget-char v7, v5, v2

    if-ne v7, p1, :cond_af

    .line 2048
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x1

    aput v9, v7, v8

    .line 2052
    :cond_a9
    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    goto :goto_70

    .line 2046
    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b
.end method

.method public destory()V
    .registers 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    .line 115
    return-void
.end method

.method public getComposingText()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mComposingText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getNewTextLength()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mNewTextLength:I

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 124
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->clearComposingText()V

    .line 125
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->resetMultitap()V

    .line 126
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 127
    return-void
.end method

.method public isBackspace(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 138
    const/4 v0, -0x5

    if-ne p1, v0, :cond_5

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isEqualPrevKey(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isMultitapActive()Z
    .registers 4

    .prologue
    .line 1995
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultitapActive: mMultitapCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_2a
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    if-gtz v0, :cond_32

    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isValidCode(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 145
    const/16 v0, 0x3e9

    if-lt p1, v0, :cond_8

    const/16 v0, 0x410

    if-le p1, v0, :cond_1e

    :cond_8
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/16 v0, 0x44b

    if-eq p1, v0, :cond_1e

    :cond_11
    iget v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    const/16 v0, 0x449

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x448

    if-ne p1, v0, :cond_20

    .line 148
    :cond_1e
    const/4 v0, 0x1

    .line 150
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public processKey(I)Z
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v5, :cond_39

    .line 164
    sget-object v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processKey: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPrevKeyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mInputType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_39
    const/4 v5, -0x5

    if-ne p1, v5, :cond_44

    .line 168
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->clearComposingText()V

    .line 169
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processBackspace()Z

    move-result v3

    .line 305
    :cond_43
    :goto_43
    return v3

    .line 172
    :cond_44
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isValidCode(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 175
    const/16 v5, 0x449

    if-ne p1, v5, :cond_eb

    .line 176
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-eqz v5, :cond_43

    .line 185
    :cond_52
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->clearComposingText()V

    .line 188
    const/4 v2, 0x0

    .line 192
    .local v2, "multitapActive":Z
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-eq v5, v4, :cond_82

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-eq v5, v8, :cond_82

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-ne v5, v9, :cond_6a

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-eq v5, v8, :cond_82

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-eq v5, v9, :cond_82

    :cond_6a
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-ne v5, v10, :cond_74

    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isMultitapSkyQwerty(I)Z

    move-result v5

    if-nez v5, :cond_82

    :cond_74
    iget-boolean v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    if-eqz v5, :cond_8d

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    if-nez v5, :cond_8d

    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isMultitapQwerty(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 197
    :cond_82
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    if-ne v5, p1, :cond_fd

    .line 198
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    .line 199
    const/4 v2, 0x1

    .line 206
    :cond_8d
    :goto_8d
    const/4 v0, 0x0

    .line 207
    .local v0, "codeIndex":I
    const/4 v1, -0x1

    .line 209
    .local v1, "korInput":I
    const/16 v5, 0x44b

    if-ne p1, v5, :cond_100

    .line 210
    const/4 v1, 0x4

    .line 211
    const/16 v0, 0x63

    .line 237
    :cond_96
    :goto_96
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v5, :cond_be

    .line 238
    sget-object v5, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processKey: korInput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_be
    iput p1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    .line 242
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    packed-switch v5, :pswitch_data_18a

    .line 300
    :cond_c5
    :goto_c5
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v3, :cond_e3

    .line 301
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processKey: mStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_e3
    iget v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    move v3, v4

    .line 305
    goto/16 :goto_43

    .line 179
    .end local v0    # "codeIndex":I
    .end local v1    # "korInput":I
    .end local v2    # "multitapActive":Z
    :cond_eb
    const/16 v5, 0x448

    if-ne p1, v5, :cond_52

    .line 180
    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-eqz v5, :cond_43

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-eq v5, v8, :cond_43

    iget v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-ne v5, v9, :cond_52

    goto/16 :goto_43

    .line 202
    .restart local v2    # "multitapActive":Z
    :cond_fd
    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    goto :goto_8d

    .line 213
    .restart local v0    # "codeIndex":I
    .restart local v1    # "korInput":I
    :cond_100
    const/16 v5, 0x449

    if-ne p1, v5, :cond_106

    .line 214
    const/4 v1, 0x5

    goto :goto_96

    .line 216
    :cond_106
    const/16 v5, 0x448

    if-ne p1, v5, :cond_10c

    .line 217
    const/4 v1, 0x6

    goto :goto_96

    .line 221
    :cond_10c
    const/16 v5, 0x3fc

    if-ge p1, v5, :cond_11a

    .line 222
    const/4 v1, 0x0

    .line 223
    add-int/lit16 v5, p1, -0x3e9

    add-int/lit8 v0, v5, 0x1

    .line 224
    if-eqz v2, :cond_96

    .line 225
    const/4 v1, 0x1

    goto/16 :goto_96

    .line 229
    :cond_11a
    const/4 v1, 0x2

    .line 230
    add-int/lit16 v5, p1, -0x3fc

    add-int/lit8 v0, v5, 0x1

    .line 231
    if-eqz v2, :cond_96

    .line 232
    const/4 v1, 0x3

    goto/16 :goto_96

    .line 244
    :pswitch_124
    if-lt v1, v8, :cond_155

    .line 245
    if-ne v1, v10, :cond_152

    .line 246
    const/16 v3, 0x8

    iput v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 251
    :goto_12c
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v3, v4

    .line 252
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v3, :cond_c5

    .line 253
    sget-object v3, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processKey: KOR_STATE_0 -> KOR_STATE_1_M. mCodeIdx[IDX_1_M]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c5

    .line 249
    :cond_152
    iput v8, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    goto :goto_12c

    .line 258
    :cond_155
    iput v4, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 259
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v0, v5, v3

    goto/16 :goto_c5

    .line 264
    :pswitch_15d
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState1_I(II)V

    goto/16 :goto_c5

    .line 268
    :pswitch_162
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState1_M(II)V

    goto/16 :goto_c5

    .line 272
    :pswitch_167
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState2_IM(II)V

    goto/16 :goto_c5

    .line 276
    :pswitch_16c
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState3_IM_I(II)V

    goto/16 :goto_c5

    .line 280
    :pswitch_171
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState3_IMF(II)V

    goto/16 :goto_c5

    .line 284
    :pswitch_176
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState4_IMFF(II)V

    goto/16 :goto_c5

    .line 288
    :pswitch_17b
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState4_IMF_I(II)V

    goto/16 :goto_c5

    .line 292
    :pswitch_180
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState1_C(II)V

    goto/16 :goto_c5

    .line 296
    :pswitch_185
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState2_I_C(II)V

    goto/16 :goto_c5

    .line 242
    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_124
        :pswitch_15d
        :pswitch_162
        :pswitch_167
        :pswitch_171
        :pswitch_16c
        :pswitch_176
        :pswitch_17b
        :pswitch_180
        :pswitch_185
    .end packed-switch
.end method

.method public reCompose(C)Z
    .registers 15
    .param p1, "code"    # C

    .prologue
    const v12, 0xac00

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2058
    const/4 v2, 0x0

    .line 2060
    .local v2, "handled":Z
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v7, :cond_22

    sget-object v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reCompose: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_22
    if-lt p1, v12, :cond_8a

    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    if-ne v7, v11, :cond_8a

    .line 2063
    sub-int v6, p1, v12

    .line 2067
    .local v6, "temp":I
    div-int/lit16 v7, v6, 0x24c

    add-int/lit8 v3, v7, 0x1

    .line 2068
    .local v3, "initial":I
    rem-int/lit16 v6, v6, 0x24c

    .line 2069
    div-int/lit8 v7, v6, 0x1c

    add-int/lit8 v5, v7, 0x1

    .line 2070
    .local v5, "medium":I
    rem-int/lit8 v1, v6, 0x1c

    .line 2072
    .local v1, "finall":I
    const/4 v4, 0x0

    .line 2073
    .local v4, "korInput":I
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aget v0, v7, v10

    .line 2075
    .local v0, "codeIndex":I
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v7, :cond_6b

    sget-object v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reCompose: initial="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " medium="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " finall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_6b
    if-lez v1, :cond_b8

    .line 2078
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/AutomataKor;->isDFianl(I)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 2079
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    .line 2080
    const/4 v7, 0x4

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 2081
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v3, v7, v10

    .line 2082
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v5, v7, v11

    .line 2083
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    const/4 v8, 0x2

    aput v1, v7, v8

    .line 2084
    invoke-direct {p0, v0, v10}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState3_IMF(II)V

    .line 2085
    const/4 v2, 0x1

    .line 2097
    .end local v0    # "codeIndex":I
    .end local v1    # "finall":I
    .end local v3    # "initial":I
    .end local v4    # "korInput":I
    .end local v5    # "medium":I
    .end local v6    # "temp":I
    :cond_8a
    :goto_8a
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->DEBUG:Z

    if-eqz v7, :cond_b0

    sget-object v7, Lcom/pantech/inputmethod/skyime/AutomataKor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reCompose: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_b0
    if-eqz v2, :cond_b7

    iget v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/AutomataKor;->setComposingText(I)V

    .line 2101
    :cond_b7
    return v2

    .line 2087
    .restart local v0    # "codeIndex":I
    .restart local v1    # "finall":I
    .restart local v3    # "initial":I
    .restart local v4    # "korInput":I
    .restart local v5    # "medium":I
    .restart local v6    # "temp":I
    :cond_b8
    if-lez v5, :cond_8a

    .line 2088
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/AutomataKor;->init()V

    .line 2089
    const/4 v7, 0x3

    iput v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mStatus:I

    .line 2090
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v3, v7, v10

    .line 2091
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mCodeIdx:[I

    aput v5, v7, v11

    .line 2092
    invoke-direct {p0, v0, v10}, Lcom/pantech/inputmethod/skyime/AutomataKor;->processState2_IM(II)V

    .line 2093
    const/4 v2, 0x1

    goto :goto_8a
.end method

.method public resetMultitap()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mMultitapCount:I

    .line 119
    iput v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mPrevKeyCode:I

    .line 120
    return-void
.end method

.method public setInputType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    .line 105
    iput v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    .line 111
    :goto_9
    return-void

    .line 108
    :cond_a
    iput p1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mInputType:I

    .line 109
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/AutomataKor;->mKorQwertyDoubleTap:Z

    goto :goto_9
.end method

.method public setShift(Z)V
    .registers 2
    .param p1, "shift"    # Z

    .prologue
    .line 158
    return-void
.end method
