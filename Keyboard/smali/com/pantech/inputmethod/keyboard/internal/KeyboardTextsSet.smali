.class public final Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;
.super Ljava/lang/Object;
.source "KeyboardTextsSet.java"


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

.field private static final LANGUAGE_DEFAULT:[Ljava/lang/String;

.field private static final LANGUAGE_ar:[Ljava/lang/String;

.field private static final LANGUAGE_be:[Ljava/lang/String;

.field private static final LANGUAGE_ca:[Ljava/lang/String;

.field private static final LANGUAGE_cs:[Ljava/lang/String;

.field private static final LANGUAGE_da:[Ljava/lang/String;

.field private static final LANGUAGE_de:[Ljava/lang/String;

.field private static final LANGUAGE_en:[Ljava/lang/String;

.field private static final LANGUAGE_es:[Ljava/lang/String;

.field private static final LANGUAGE_et:[Ljava/lang/String;

.field private static final LANGUAGE_fa:[Ljava/lang/String;

.field private static final LANGUAGE_fi:[Ljava/lang/String;

.field private static final LANGUAGE_fr:[Ljava/lang/String;

.field private static final LANGUAGE_hi:[Ljava/lang/String;

.field private static final LANGUAGE_hr:[Ljava/lang/String;

.field private static final LANGUAGE_hu:[Ljava/lang/String;

.field private static final LANGUAGE_is:[Ljava/lang/String;

.field private static final LANGUAGE_it:[Ljava/lang/String;

.field private static final LANGUAGE_iw:[Ljava/lang/String;

.field private static final LANGUAGE_ky:[Ljava/lang/String;

.field private static final LANGUAGE_lt:[Ljava/lang/String;

.field private static final LANGUAGE_lv:[Ljava/lang/String;

.field private static final LANGUAGE_mk:[Ljava/lang/String;

.field private static final LANGUAGE_nb:[Ljava/lang/String;

.field private static final LANGUAGE_nl:[Ljava/lang/String;

.field private static final LANGUAGE_pl:[Ljava/lang/String;

.field private static final LANGUAGE_pt:[Ljava/lang/String;

.field private static final LANGUAGE_rm:[Ljava/lang/String;

.field private static final LANGUAGE_ro:[Ljava/lang/String;

.field private static final LANGUAGE_ru:[Ljava/lang/String;

.field private static final LANGUAGE_sk:[Ljava/lang/String;

.field private static final LANGUAGE_sl:[Ljava/lang/String;

.field private static final LANGUAGE_sr:[Ljava/lang/String;

.field private static final LANGUAGE_sv:[Ljava/lang/String;

.field private static final LANGUAGE_tr:[Ljava/lang/String;

.field private static final LANGUAGE_uk:[Ljava/lang/String;

.field private static final LANGUAGE_vi:[Ljava/lang/String;

.field private static final LANGUAGE_zz:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;

.field private static final RESOURCE_NAMES:[Ljava/lang/String;

.field private static final sLocaleToTextsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNameToIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResourceNameToTextsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 48
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    .line 50
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    .line 90
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "label_go_key"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "label_send_key"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "label_next_key"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "label_done_key"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "label_previous_key"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "label_to_alpha_key"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "label_to_symbol_key"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "label_to_symbol_with_microphone_key"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "label_pause_key"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "label_wait_key"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->RESOURCE_NAMES:[Ljava/lang/String;

    .line 107
    const/16 v9, 0x7a

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "more_keys_for_a"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "more_keys_for_e"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "more_keys_for_i"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "more_keys_for_o"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "more_keys_for_u"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "more_keys_for_s"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "more_keys_for_n"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "more_keys_for_c"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "more_keys_for_y"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "more_keys_for_d"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "more_keys_for_r"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "more_keys_for_t"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "more_keys_for_z"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "more_keys_for_k"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "more_keys_for_l"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "more_keys_for_g"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string v11, "more_keys_for_v"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string v11, "more_keys_for_h"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, "more_keys_for_j"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string v11, "more_keys_for_w"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "keylabel_for_nordic_row1_11"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "keylabel_for_nordic_row2_10"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "keylabel_for_nordic_row2_11"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "more_keys_for_nordic_row2_10"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "more_keys_for_nordic_row2_11"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "keylabel_for_east_slavic_row1_9"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "keylabel_for_east_slavic_row2_1"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "keylabel_for_east_slavic_row3_5"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string v11, "more_keys_for_cyrillic_u"

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const-string v11, "more_keys_for_cyrillic_ye"

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string v11, "more_keys_for_cyrillic_en"

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "more_keys_for_cyrillic_ha"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string v11, "more_keys_for_east_slavic_row2_1"

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const-string v11, "more_keys_for_cyrillic_o"

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "more_keys_for_cyrillic_soft_sign"

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string v11, "keylabel_for_south_slavic_row1_6"

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, "keylabel_for_south_slavic_row2_11"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string v11, "keylabel_for_south_slavic_row3_1"

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, "keylabel_for_south_slavic_row3_8"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string v11, "more_keys_for_cyrillic_ie"

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, "more_keys_for_cyrillic_i"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const-string v11, "more_keys_for_single_quote"

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "more_keys_for_double_quote"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "more_keys_for_tablet_double_quote"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const-string v11, "more_keys_for_currency_dollar"

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const-string v11, "more_keys_for_currency_euro"

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const-string v11, "more_keys_for_currency_pound"

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const-string v11, "more_keys_for_currency_general"

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "more_keys_for_punctuation"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "more_keys_for_star"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "more_keys_for_bullet"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const-string v11, "more_keys_for_plus"

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "more_keys_for_left_parenthesis"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string v11, "more_keys_for_right_parenthesis"

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "more_keys_for_less_than"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string v11, "more_keys_for_greater_than"

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const-string v11, "more_keys_for_arabic_diacritics"

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const-string v11, "keyhintlabel_for_arabic_diacritics"

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "keylabel_for_symbols_1"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const-string v11, "keylabel_for_symbols_2"

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "keylabel_for_symbols_3"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const-string v11, "keylabel_for_symbols_4"

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "keylabel_for_symbols_5"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const-string v11, "keylabel_for_symbols_6"

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "keylabel_for_symbols_7"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const-string v11, "keylabel_for_symbols_8"

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "keylabel_for_symbols_9"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const-string v11, "keylabel_for_symbols_0"

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, "additional_more_keys_for_symbols_1"

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const-string v11, "additional_more_keys_for_symbols_2"

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, "additional_more_keys_for_symbols_3"

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const-string v11, "additional_more_keys_for_symbols_4"

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, "additional_more_keys_for_symbols_5"

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const-string v11, "additional_more_keys_for_symbols_6"

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, "additional_more_keys_for_symbols_7"

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const-string v11, "additional_more_keys_for_symbols_8"

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const-string v11, "additional_more_keys_for_symbols_9"

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const-string v11, "additional_more_keys_for_symbols_0"

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    const-string v11, "more_keys_for_symbols_1"

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    const-string v11, "more_keys_for_symbols_2"

    aput-object v11, v9, v10

    const/16 v10, 0x50

    const-string v11, "more_keys_for_symbols_3"

    aput-object v11, v9, v10

    const/16 v10, 0x51

    const-string v11, "more_keys_for_symbols_4"

    aput-object v11, v9, v10

    const/16 v10, 0x52

    const-string v11, "more_keys_for_symbols_5"

    aput-object v11, v9, v10

    const/16 v10, 0x53

    const-string v11, "more_keys_for_symbols_6"

    aput-object v11, v9, v10

    const/16 v10, 0x54

    const-string v11, "more_keys_for_symbols_7"

    aput-object v11, v9, v10

    const/16 v10, 0x55

    const-string v11, "more_keys_for_symbols_8"

    aput-object v11, v9, v10

    const/16 v10, 0x56

    const-string v11, "more_keys_for_symbols_9"

    aput-object v11, v9, v10

    const/16 v10, 0x57

    const-string v11, "more_keys_for_symbols_0"

    aput-object v11, v9, v10

    const/16 v10, 0x58

    const-string v11, "keylabel_for_comma"

    aput-object v11, v9, v10

    const/16 v10, 0x59

    const-string v11, "more_keys_for_comma"

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    const-string v11, "keylabel_for_symbols_exclamation"

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    const-string v11, "keylabel_for_symbols_question"

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    const-string v11, "keylabel_for_symbols_semicolon"

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    const-string v11, "keylabel_for_symbols_percent"

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    const-string v11, "more_keys_for_symbols_exclamation"

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    const-string v11, "more_keys_for_symbols_question"

    aput-object v11, v9, v10

    const/16 v10, 0x60

    const-string v11, "more_keys_for_symbols_semicolon"

    aput-object v11, v9, v10

    const/16 v10, 0x61

    const-string v11, "more_keys_for_symbols_percent"

    aput-object v11, v9, v10

    const/16 v10, 0x62

    const-string v11, "keylabel_for_tablet_comma"

    aput-object v11, v9, v10

    const/16 v10, 0x63

    const-string v11, "keyhintlabel_for_tablet_comma"

    aput-object v11, v9, v10

    const/16 v10, 0x64

    const-string v11, "more_keys_for_tablet_comma"

    aput-object v11, v9, v10

    const/16 v10, 0x65

    const-string v11, "keyhintlabel_for_tablet_period"

    aput-object v11, v9, v10

    const/16 v10, 0x66

    const-string v11, "more_keys_for_tablet_period"

    aput-object v11, v9, v10

    const/16 v10, 0x67

    const-string v11, "keylabel_for_apostrophe"

    aput-object v11, v9, v10

    const/16 v10, 0x68

    const-string v11, "keyhintlabel_for_apostrophe"

    aput-object v11, v9, v10

    const/16 v10, 0x69

    const-string v11, "more_keys_for_apostrophe"

    aput-object v11, v9, v10

    const/16 v10, 0x6a

    const-string v11, "more_keys_for_am_pm"

    aput-object v11, v9, v10

    const/16 v10, 0x6b

    const-string v11, "settings_as_more_key"

    aput-object v11, v9, v10

    const/16 v10, 0x6c

    const-string v11, "shortcut_as_more_key"

    aput-object v11, v9, v10

    const/16 v10, 0x6d

    const-string v11, "action_next_as_more_key"

    aput-object v11, v9, v10

    const/16 v10, 0x6e

    const-string v11, "action_previous_as_more_key"

    aput-object v11, v9, v10

    const/16 v10, 0x6f

    const-string v11, "label_to_more_symbol_key"

    aput-object v11, v9, v10

    const/16 v10, 0x70

    const-string v11, "label_to_more_symbol_for_tablet_key"

    aput-object v11, v9, v10

    const/16 v10, 0x71

    const-string v11, "label_tab_key"

    aput-object v11, v9, v10

    const/16 v10, 0x72

    const-string v11, "label_to_phone_numeric_key"

    aput-object v11, v9, v10

    const/16 v10, 0x73

    const-string v11, "label_to_phone_symbols_key"

    aput-object v11, v9, v10

    const/16 v10, 0x74

    const-string v11, "label_time_am"

    aput-object v11, v9, v10

    const/16 v10, 0x75

    const-string v11, "label_time_pm"

    aput-object v11, v9, v10

    const/16 v10, 0x76

    const-string v11, "label_to_symbol_key_pcqwerty"

    aput-object v11, v9, v10

    const/16 v10, 0x77

    const-string v11, "keylabel_for_popular_domain"

    aput-object v11, v9, v10

    const/16 v10, 0x78

    const-string v11, "more_keys_for_popular_domain"

    aput-object v11, v9, v10

    const/16 v10, 0x79

    const-string v11, "more_keys_for_smiley"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->NAMES:[Ljava/lang/String;

    .line 235
    const/16 v9, 0x7a

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const-string v11, "!fixedColumnOrder!4,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const-string v11, "\u00a2,\u00a3,\u20ac,\u00a5,\u20b1"

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const-string v11, "\u00a2,\u00a3,$,\u00a5,\u20b1"

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const-string v11, "\u00a2,$,\u20ac,\u00a5,\u20b1"

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const-string v11, "\u00a2,$,\u20ac,\u00a3,\u00a5,\u20b1"

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "!fixedColumnOrder!8,\",\',#,-,:,!,\\,,?,@,&,\\%,+,;,/,(,)"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "\u2020,\u2021,\u2605"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "\u266a,\u2665,\u2660,\u2666,\u2663"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const-string v11, "\u00b1"

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "!fixedColumnOrder!3,<,{,["

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string v11, "!fixedColumnOrder!3,>,},]"

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "!fixedColumnOrder!3,\u2039,\u2264,\u00ab"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string v11, "!fixedColumnOrder!3,\u203a,\u2265,\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "1"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const-string v11, "2"

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "3"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const-string v11, "4"

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "5"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const-string v11, "6"

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "7"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const-string v11, "8"

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "9"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const-string v11, "0"

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    const-string v11, "\u00b9,\u00bd,\u2153,\u00bc,\u215b"

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    const-string v11, "\u00b2,\u2154"

    aput-object v11, v9, v10

    const/16 v10, 0x50

    const-string v11, "\u00b3,\u00be,\u215c"

    aput-object v11, v9, v10

    const/16 v10, 0x51

    const-string v11, "\u2074"

    aput-object v11, v9, v10

    const/16 v10, 0x52

    const-string v11, "\u215d"

    aput-object v11, v9, v10

    const/16 v10, 0x53

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x54

    const-string v11, "\u215e"

    aput-object v11, v9, v10

    const/16 v10, 0x55

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x56

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x57

    const-string v11, "\u207f,\u2205"

    aput-object v11, v9, v10

    const/16 v10, 0x58

    const-string v11, ","

    aput-object v11, v9, v10

    const/16 v10, 0x59

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    const-string v11, "!"

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    const-string v11, ";"

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    const-string v11, "%"

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    const-string v11, "\u00a1"

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    const-string v11, "\u00bf"

    aput-object v11, v9, v10

    const/16 v10, 0x60

    const-string v11, ""

    aput-object v11, v9, v10

    const/16 v10, 0x61

    const-string v11, "\u2030"

    aput-object v11, v9, v10

    const/16 v10, 0x62

    const-string v11, ","

    aput-object v11, v9, v10

    const/16 v10, 0x63

    const-string v11, "!"

    aput-object v11, v9, v10

    const/16 v10, 0x64

    const-string v11, "!"

    aput-object v11, v9, v10

    const/16 v10, 0x65

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x66

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x67

    const-string v11, "\'"

    aput-object v11, v9, v10

    const/16 v10, 0x68

    const-string v11, "\""

    aput-object v11, v9, v10

    const/16 v10, 0x69

    const-string v11, "\""

    aput-object v11, v9, v10

    const/16 v10, 0x6a

    const-string v11, "!fixedColumnOrder!2,!hasLabels!,!text/label_time_am,!text/label_time_pm"

    aput-object v11, v9, v10

    const/16 v10, 0x6b

    const-string v11, "!icon/settings_key|!code/key_settings"

    aput-object v11, v9, v10

    const/16 v10, 0x6c

    const-string v11, "!icon/shortcut_key|!code/key_shortcut"

    aput-object v11, v9, v10

    const/16 v10, 0x6d

    const-string v11, "!hasLabels!,!text/label_next_key|!code/key_action_next"

    aput-object v11, v9, v10

    const/16 v10, 0x6e

    const-string v11, "!hasLabels!,!text/label_previous_key|!code/key_action_previous"

    aput-object v11, v9, v10

    const/16 v10, 0x6f

    const-string v11, "= \\ <"

    aput-object v11, v9, v10

    const/16 v10, 0x70

    const-string v11, "~ \\ {"

    aput-object v11, v9, v10

    const/16 v10, 0x71

    const-string v11, "Tab"

    aput-object v11, v9, v10

    const/16 v10, 0x72

    const-string v11, "123"

    aput-object v11, v9, v10

    const/16 v10, 0x73

    const-string v11, "\uff0a\uff03"

    aput-object v11, v9, v10

    const/16 v10, 0x74

    const-string v11, "AM"

    aput-object v11, v9, v10

    const/16 v10, 0x75

    const-string v11, "PM"

    aput-object v11, v9, v10

    const/16 v10, 0x76

    const-string v11, "Sym"

    aput-object v11, v9, v10

    const/16 v10, 0x77

    const-string v11, ".com"

    aput-object v11, v9, v10

    const/16 v10, 0x78

    const-string v11, "!hasLabels!,.net,.org,.gov,.edu"

    aput-object v11, v9, v10

    const/16 v10, 0x79

    const-string v11, "!fixedColumnOrder!5,!hasLabels!,=-O|=-O ,:-P|:-P ,;-)|;-) ,:-(|:-( ,:-)|:-) ,:-!|:-! ,:-$|:-$ ,B-)|B-) ,:O|:O ,:-*|:-* ,:-D|:-D ,:\'(|:\'( ,:-\\\\|:-\\\\ ,O:-)|O:-) ,:-[|:-[ "

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    .line 383
    const/16 v9, 0x6a

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "!fixedColumnOrder!8,\",\',#,-,:,!,\u060c,\u061f,@,&,\\%,+,\u061b,/,(,)"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "\u2605,\u066d"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "\u266a"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "!fixedColumnOrder!4,\ufd3e|\ufd3f,<|>,{|},[|]"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string v11, "!fixedColumnOrder!4,\ufd3f|\ufd3e,>|<,}|{,]|["

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,\u00ab|\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string v11, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,\u00bb|\u00ab"

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const-string v11, "!fixedColumnOrder!7,\u0655,\u0654,\u0652,\u064d,\u064c,\u064b,\u0651,\u0656,\u0670,\u0653,\u0650,\u064f,\u064e,\u0640\u0640\u0640|\u0640"

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const-string v11, "\u0651"

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "\u0661"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const-string v11, "\u0662"

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "\u0663"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const-string v11, "\u0664"

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "\u0665"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const-string v11, "\u0666"

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "\u0667"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const-string v11, "\u0668"

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "\u0669"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const-string v11, "\u0660"

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, "1"

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const-string v11, "2"

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, "3"

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const-string v11, "4"

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, "5"

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const-string v11, "6"

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, "7"

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const-string v11, "8"

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const-string v11, "9"

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const-string v11, "0,\u066b,\u066c"

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x50

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x51

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x52

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x53

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x54

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x55

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x56

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x57

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x58

    const-string v11, "\u060c"

    aput-object v11, v9, v10

    const/16 v10, 0x59

    const-string v11, "\\,"

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    const-string v11, "\u061f"

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    const-string v11, "\u061b"

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    const-string v11, "\u066a"

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x60

    const-string v11, ";"

    aput-object v11, v9, v10

    const/16 v10, 0x61

    const-string v11, "\\%,\u2030"

    aput-object v11, v9, v10

    const/16 v10, 0x62

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x63

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x64

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x65

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x66

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x67

    const-string v11, "\u060c"

    aput-object v11, v9, v10

    const/16 v10, 0x68

    const-string v11, "\u061f"

    aput-object v11, v9, v10

    const/16 v10, 0x69

    const-string v11, "\u061f,\u061b,!,:,-,/,\',\""

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ar:[Ljava/lang/String;

    .line 508
    const/16 v9, 0x23

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "\u045e"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "\u044b"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "\u0456"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_be:[Ljava/lang/String;

    .line 531
    const/16 v9, 0xf

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e1,\u00e4,\u00e2,\u00e3,\u00e5,\u0105,\u00e6,\u0101,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e8,\u00e9,\u00eb,\u00ea,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u00f6,\u00f4,\u00f5,\u00f8,\u0153,\u014d,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u0107,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u0140,\u0142"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ca:[Ljava/lang/String;

    .line 591
    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u011b,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ee,\u00ef,\u00ec,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u016f,\u00fb,\u00fc,\u00f9,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0148,\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u00e7,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0159"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u0165"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017a,\u017c"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_cs:[Ljava/lang/String;

    .line 661
    const/16 v9, 0x19

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e4,\u00e0,\u00e2,\u00e3,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00eb"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ef"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f4,\u00f2,\u00f5,\u0153,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u00df,\u015b,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u00f0"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u0142"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00e5"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00e6"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00f8"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "\u00e4"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "\u00f6"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_da:[Ljava/lang/String;

    .line 722
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e4,\u00e2,\u00e0,\u00e1,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u0117"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f6,\u00f4,\u00f2,\u00f3,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u00df,\u015b,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_de:[Ljava/lang/String;

    .line 760
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ee,\u00ef,\u00ed,\u012b,\u00ec"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f4,\u00f6,\u00f2,\u00f3,\u0153,\u00f8,\u014d,\u00f5"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fb,\u00fc,\u00f9,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u00df"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_en:[Ljava/lang/String;

    .line 806
    const/16 v9, 0x67

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e0,\u00e4,\u00e2,\u00e3,\u00e5,\u0105,\u00e6,\u0101,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00e8,\u00eb,\u00ea,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f2,\u00f6,\u00f4,\u00f5,\u00f8,\u0153,\u014d,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u0107,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "!fixedColumnOrder!9,\",\',#,-,\u00a1,!,\u00bf,\\,,?,@,&,\\%,+,;,:,/,(,)"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x50

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x51

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x52

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x53

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x54

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x55

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x56

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x57

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x58

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x59

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    const-string v11, "\u00a1"

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    const-string v11, "\u00bf"

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    const-string v11, "!"

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x60

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x61

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x62

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x63

    const-string v11, "\u00a1"

    aput-object v11, v9, v10

    const/16 v10, 0x64

    const-string v11, "\u00a1,!"

    aput-object v11, v9, v10

    const/16 v10, 0x65

    const-string v11, "\u00bf"

    aput-object v11, v9, v10

    const/16 v10, 0x66

    const-string v11, "\u00bf,?"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_es:[Ljava/lang/String;

    .line 888
    const/16 v9, 0x18

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e4,\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e5,\u00e6,\u0105"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u0113,\u00e8,\u0117,\u00e9,\u00ea,\u00eb,\u0119,\u011b"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u012b,\u00ec,\u012f,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f6,\u00f5,\u00f2,\u00f3,\u00f4,\u0153,\u0151,\u00f8"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc,\u016b,\u0173,\u00f9,\u00fa,\u00fb,\u016f,\u0171"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b,\u015f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u00e7,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0157,\u0159,\u0155"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u0163,\u0165"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017c,\u017a"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "\u0137"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u013c,\u0142,\u013a,\u013e"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u0123,\u011f"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00fc"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00f6"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00e4"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "\u00f5"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_et:[Ljava/lang/String;

    .line 988
    const/16 v9, 0x6a

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\",\'"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "!fixedColumnOrder!8,\",\',#,-,:,!,\u060c,\u061f,@,&,\\%,+,\u061b,/,(,)"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "\u2605,\u066d"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "\u266a"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "!fixedColumnOrder!4,\ufd3e|\ufd3f,<|>,{|},[|]"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string v11, "!fixedColumnOrder!4,\ufd3f|\ufd3e,>|<,}|{,]|["

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,<|>"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string v11, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,>|<"

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const-string v11, "!fixedColumnOrder!7,\u0655,\u0652,\u0651,\u064c,\u064d,\u064b,\u0654,\u0656,\u0670,\u0653,\u064f,\u0650,\u064e,\u0640\u0640\u0640|\u0640"

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const-string v11, "\u064b"

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "\u06f1"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const-string v11, "\u06f2"

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "\u06f3"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const-string v11, "\u06f4"

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "\u06f5"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const-string v11, "\u06f6"

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "\u06f7"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const-string v11, "\u06f8"

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "\u06f9"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const-string v11, "\u06f0"

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, "1"

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const-string v11, "2"

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, "3"

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const-string v11, "4"

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, "5"

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const-string v11, "6"

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, "7"

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const-string v11, "8"

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const-string v11, "9"

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const-string v11, "0,\u066b,\u066c"

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x50

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x51

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x52

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x53

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x54

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x55

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x56

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x57

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x58

    const-string v11, "\u060c"

    aput-object v11, v9, v10

    const/16 v10, 0x59

    const-string v11, "\\,"

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    const-string v11, "\u061f"

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    const-string v11, "\u061b"

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    const-string v11, "\u066a"

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    const-string v11, "?"

    aput-object v11, v9, v10

    const/16 v10, 0x60

    const-string v11, ";"

    aput-object v11, v9, v10

    const/16 v10, 0x61

    const-string v11, "\\%,\u2030"

    aput-object v11, v9, v10

    const/16 v10, 0x62

    const-string v11, "\u060c"

    aput-object v11, v9, v10

    const/16 v10, 0x63

    const-string v11, "!"

    aput-object v11, v9, v10

    const/16 v10, 0x64

    const-string v11, "!,\\,"

    aput-object v11, v9, v10

    const/16 v10, 0x65

    const-string v11, "\u061f"

    aput-object v11, v9, v10

    const/16 v10, 0x66

    const-string v11, "\u061f,?"

    aput-object v11, v9, v10

    const/16 v10, 0x67

    const-string v11, "\u060c"

    aput-object v11, v9, v10

    const/16 v10, 0x68

    const-string v11, "\u061f"

    aput-object v11, v9, v10

    const/16 v10, 0x69

    const-string v11, "!fixedColumnOrder!4,:,!,\u061f,\u061b,-,/,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fa:[Ljava/lang/String;

    .line 1117
    const/16 v9, 0x19

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e6,\u00e0,\u00e1,\u00e2,\u00e3,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f8,\u00f4,\u00f2,\u00f3,\u00f5,\u0153,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017a,\u017c"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00e5"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00f6"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00e4"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "\u00f8"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "\u00e6"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fi:[Ljava/lang/String;

    .line 1164
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e2,%,\u00e6,\u00e1,\u00e4,\u00e3,\u00e5,\u0101,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00e8,\u00ea,\u00eb,%,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ee,%,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f4,\u0153,%,\u00f6,\u00f2,\u00f3,\u00f5,\u00f8,\u014d,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00f9,\u00fb,%,\u00fc,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u0107,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "%,\u00ff"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fr:[Ljava/lang/String;

    .line 1217
    const/16 v9, 0x4e

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x39

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "\u0967"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    const-string v11, "\u0968"

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "\u0969"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    const-string v11, "\u096a"

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "\u096b"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    const-string v11, "\u096c"

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "\u096d"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    const-string v11, "\u096e"

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "\u096f"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    const-string v11, "\u0966"

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, "1"

    aput-object v11, v9, v10

    const/16 v10, 0x45

    const-string v11, "2"

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, "3"

    aput-object v11, v9, v10

    const/16 v10, 0x47

    const-string v11, "4"

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, "5"

    aput-object v11, v9, v10

    const/16 v10, 0x49

    const-string v11, "6"

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, "7"

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    const-string v11, "8"

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    const-string v11, "9"

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    const-string v11, "0"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hi:[Ljava/lang/String;

    .line 1257
    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u015b,\u00df"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u0107,\u00e7"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u0111"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017a,\u017c"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hr:[Ljava/lang/String;

    .line 1284
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ee,\u00ef,\u00ec,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f6,\u0151,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u0171,\u00fb,\u00f9,\u016b"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu:[Ljava/lang/String;

    .line 1329
    const/16 v9, 0x17

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e4,\u00e6,\u00e5,\u00e0,\u00e2,\u00e3,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00eb,\u00e8,\u00ea,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ef,\u00ee,\u00ec,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u00f0"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u00fe"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00f0"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00e6"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00fe"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_is:[Ljava/lang/String;

    .line 1392
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e8,\u00e9,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ec,\u00ed,\u00ee,\u00ef,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u00f4,\u00f6,\u00f5,\u0153,\u00f8,\u014d,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00f9,\u00fa,\u00fb,\u00fc,\u016b"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_it:[Ljava/lang/String;

    .line 1437
    const/16 v9, 0x38

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string v11, "\u2605"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const-string v11, "\u00b1,\ufb29"

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "!fixedColumnOrder!3,<|>,{|},[|]"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string v11, "!fixedColumnOrder!3,>|<,}|{,]|["

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,\u00ab|\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string v11, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,\u00bb|\u00ab"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_iw:[Ljava/lang/String;

    .line 1482
    const/16 v9, 0x23

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "\u0449"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "\u044b"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "\u0438"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string v11, "\u04af"

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string v11, "\u04a3"

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const-string v11, "\u04e9"

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ky:[Ljava/lang/String;

    .line 1508
    const/16 v9, 0x10

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u0105,\u00e4,\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e5,\u00e6"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u0117,\u0119,\u0113,\u00e8,\u00e9,\u00ea,\u00eb,\u011b"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u012f,\u012b,\u00ec,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f6,\u00f5,\u00f2,\u00f3,\u00f4,\u0153,\u0151,\u00f8"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u016b,\u0173,\u00fc,\u016b,\u00f9,\u00fa,\u00fb,\u016f,\u0171"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b,\u015f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u00e7,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0157,\u0159,\u0155"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u0163,\u0165"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017c,\u017a"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "\u0137"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u013c,\u0142,\u013a,\u013e"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u0123,\u011f"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lt:[Ljava/lang/String;

    .line 1598
    const/16 v9, 0x10

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e4,\u00e5,\u00e6,\u0105"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u0113,\u0117,\u00e8,\u00e9,\u00ea,\u00eb,\u0119,\u011b"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u012b,\u012f,\u00ec,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u00f4,\u00f5,\u00f6,\u0153,\u0151,\u00f8"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u016b,\u0173,\u00f9,\u00fa,\u00fb,\u00fc,\u016f,\u0171"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b,\u015f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u00e7,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0157,\u0159,\u0155"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u0163,\u0165"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017c,\u017a"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "\u0137"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u013c,\u0142,\u013a,\u013e"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u0123,\u011f"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lv:[Ljava/lang/String;

    .line 1687
    const/16 v9, 0x2c

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string v11, "\u0455"

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, "\u045c"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string v11, "\u0437"

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, "\u0453"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string v11, "\u0450"

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, "\u045d"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_mk:[Ljava/lang/String;

    .line 1723
    const/16 v9, 0x19

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e4,\u00e1,\u00e2,\u00e3,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f4,\u00f2,\u00f3,\u00f6,\u00f5,\u0153,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00e5"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00f8"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00e6"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "\u00f6"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "\u00e4"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nb:[Ljava/lang/String;

    .line 1770
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e4,\u00e2,\u00e0,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00eb,\u00ea,\u00e8,\u0119,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b,\u0133"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u0133"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nl:[Ljava/lang/String;

    .line 1821
    const/16 v9, 0xf

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u0105,\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u0119,\u00e8,\u00e9,\u00ea,\u00eb,\u0117,\u0113"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u015b,\u00df,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0144,\u00f1"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u0107,\u00e7,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017c,\u017a,\u017e"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u0142"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pl:[Ljava/lang/String;

    .line 1875
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e3,\u00e0,\u00e2,\u00e4,\u00e5,\u00e6,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00ea,\u00e8,\u0119,\u0117,\u0113,\u00eb"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u00ee,\u00ec,\u00ef,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f3,\u00f5,\u00f4,\u00f2,\u00f6,\u0153,\u00f8,\u014d,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u010d,\u0107"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pt:[Ljava/lang/String;

    .line 1925
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u00f6,\u00f4,\u00f5,\u0153,\u00f8"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_rm:[Ljava/lang/String;

    .line 1940
    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e2,\u00e3,\u0103,\u00e0,\u00e1,\u00e4,\u00e6,\u00e5,\u0101"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ee,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0219,\u00df,\u015b,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u021b"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ro:[Ljava/lang/String;

    .line 1974
    const/16 v9, 0x23

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "\u0449"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "\u044b"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "\u0438"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const-string v11, "\u0451"

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ru:[Ljava/lang/String;

    .line 1998
    const/16 v9, 0x10

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e1,\u00e4,\u0101,\u00e0,\u00e2,\u00e3,\u00e5,\u00e6,\u0105"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u011b,\u0113,\u0117,\u00e8,\u00ea,\u00eb,\u0119"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ed,\u012b,\u012f,\u00ec,\u00ee,\u00ef,\u0131"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f4,\u00f3,\u00f6,\u00f2,\u00f5,\u0153,\u0151,\u00f8"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fa,\u016f,\u00fc,\u016b,\u0173,\u00f9,\u00fb,\u0171"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161,\u00df,\u015b,\u015f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u0148,\u0146,\u00f1,\u0144,\u0144"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u00e7,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u00ff"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0155,\u0159,\u0157"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u0165,\u0163"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e,\u017c,\u017a"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "\u0137"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u013e,\u013a,\u013c,\u0142"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u0123,\u011f"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sk:[Ljava/lang/String;

    .line 2088
    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u010d,\u0107"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u0111"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017e"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sl:[Ljava/lang/String;

    .line 2108
    const/16 v9, 0x2c

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string v11, "\u0437"

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, "\u045b"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string v11, "\u0455"

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, "\u0452"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string v11, "\u0450"

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, "\u045d"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string v11, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sr:[Ljava/lang/String;

    .line 2144
    const/16 v9, 0x19

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u0153,\u00f4,\u00f2,\u00f3,\u00f5,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u00df,\u015b,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "\u00e5"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "\u00f6"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "\u00e4"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "\u00f8"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "\u00e6"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sv:[Ljava/lang/String;

    .line 2186
    const/16 v9, 0x10

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e2"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u0131,\u00ee,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f6,\u00f4,\u0153,\u00f2,\u00f3,\u00f5,\u00f8,\u014d"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u015f,\u00df,\u015b,\u0161"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u0107,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u011f"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tr:[Ljava/lang/String;

    .line 2231
    const/16 v9, 0x23

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string v11, "\u0449"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "\u0456"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string v11, "\u0438"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string v11, "\u0457"

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "\u044a"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_uk:[Ljava/lang/String;

    .line 2255
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e1,\u1ea3,\u00e3,\u1ea1,\u0103,\u1eb1,\u1eaf,\u1eb3,\u1eb5,\u1eb7,\u00e2,\u1ea7,\u1ea5,\u1ea9,\u1eab,\u1ead"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e8,\u00e9,\u1ebb,\u1ebd,\u1eb9,\u00ea,\u1ec1,\u1ebf,\u1ec3,\u1ec5,\u1ec7"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ec,\u00ed,\u1ec9,\u0129,\u1ecb"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u1ecf,\u00f5,\u1ecd,\u00f4,\u1ed3,\u1ed1,\u1ed5,\u1ed7,\u1ed9,\u01a1,\u1edd,\u1edb,\u1edf,\u1ee1,\u1ee3"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00f9,\u00fa,\u1ee7,\u0169,\u1ee5,\u01b0,\u1eeb,\u1ee9,\u1eed,\u1eef,\u1ef1"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u1ef3,\u00fd,\u1ef7,\u1ef9,\u1ef5"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u0111"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_vi:[Ljava/lang/String;

    .line 2336
    const/16 v9, 0x14

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "\u00e0,\u00e1,\u00e2,\u00e3,\u00e4,\u00e5,\u00e6,\u00e3,\u00e5,\u0101,\u0103,\u0105,\u00aa"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113,\u0115,\u0117,\u0119,\u011b"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "\u00ec,\u00ed,\u00ee,\u00ef,\u0129,\u012b,\u012d,\u012f,\u0131,\u0133"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "\u00f2,\u00f3,\u00f4,\u00f5,\u00f6,\u00f8,\u014d,\u014f,\u0151,\u0153,\u00ba"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "\u00f9,\u00fa,\u00fb,\u00fc,\u0169,\u016b,\u016d,\u016f,\u0171,\u0173"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "\u00df,\u015b,\u015d,\u015f,\u0161,\u017f"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "\u00f1,\u0144,\u0146,\u0148,\u0149,\u014b"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "\u00e7,\u0107,\u0109,\u010b,\u010d"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "\u00fd,\u0177,\u00ff,\u0133"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "\u010f,\u0111,\u00f0"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "\u0155,\u0157,\u0159"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "\u00fe,\u0163,\u0165,\u0167"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "\u017a,\u017c,\u017e"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "\u0137,\u0138"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "\u013a,\u013c,\u013e,\u0140,\u0142"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "\u011d,\u011f,\u0121,\u0123"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string v11, "\u0125"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, "\u0135"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string v11, "\u0175"

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zz:[Ljava/lang/String;

    .line 2458
    const/16 v9, 0x4c

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "DEFAULT"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "ar"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ar:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "be"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_be:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "ca"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ca:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "cs"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_cs:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "da"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_da:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "de"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_de:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "en"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_en:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string v11, "es"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_es:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, "et"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_et:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "fa"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fa:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "fi"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fi:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string v11, "fr"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fr:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string v11, "hi"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hi:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string v11, "hr"

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hr:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string v11, "hu"

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string v11, "is"

    aput-object v11, v9, v10

    const/16 v10, 0x21

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_is:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string v11, "it"

    aput-object v11, v9, v10

    const/16 v10, 0x23

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_it:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string v11, "iw"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_iw:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string v11, "ky"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ky:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string v11, "lt"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lt:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string v11, "lv"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lv:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const-string v11, "mk"

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_mk:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const-string v11, "nb"

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nb:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string v11, "nl"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nl:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string v11, "pl"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pl:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string v11, "pt"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pt:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string v11, "rm"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_rm:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x38

    const-string v11, "ro"

    aput-object v11, v9, v10

    const/16 v10, 0x39

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ro:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    const-string v11, "ru"

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ru:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    const-string v11, "sk"

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sk:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    const-string v11, "sl"

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sl:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x40

    const-string v11, "sr"

    aput-object v11, v9, v10

    const/16 v10, 0x41

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sr:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x42

    const-string v11, "sv"

    aput-object v11, v9, v10

    const/16 v10, 0x43

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sv:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x44

    const-string v11, "tr"

    aput-object v11, v9, v10

    const/16 v10, 0x45

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tr:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x46

    const-string v11, "uk"

    aput-object v11, v9, v10

    const/16 v10, 0x47

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_uk:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x48

    const-string v11, "vi"

    aput-object v11, v9, v10

    const/16 v10, 0x49

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_vi:[Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    const-string v11, "zz"

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    sget-object v11, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zz:[Ljava/lang/String;

    aput-object v11, v9, v10

    sput-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    .line 2500
    const/4 v3, 0x0

    .line 2501
    .local v3, "id":I
    sget-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v4, v3

    .end local v3    # "id":I
    .local v4, "id":I
    :goto_1dbb
    if-ge v2, v6, :cond_1dce

    aget-object v7, v0, v2

    .line 2502
    .local v7, "name":Ljava/lang/String;
    sget-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "id":I
    .restart local v3    # "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "id":I
    .restart local v4    # "id":I
    goto :goto_1dbb

    .line 2505
    .end local v7    # "name":Ljava/lang/String;
    :cond_1dce
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1dcf
    sget-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    array-length v9, v9

    if-ge v1, v9, :cond_1ded

    .line 2506
    sget-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    aget-object v5, v9, v1

    check-cast v5, Ljava/lang/String;

    .line 2507
    .local v5, "language":Ljava/lang/String;
    sget-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    check-cast v9, [Ljava/lang/String;

    move-object v8, v9

    nop

    nop

    .line 2508
    .local v8, "texts":[Ljava/lang/String;
    sget-object v9, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    add-int/lit8 v1, v1, 0x2

    goto :goto_1dcf

    .line 2510
    .end local v5    # "language":Ljava/lang/String;
    .end local v8    # "texts":[Ljava/lang/String;
    :cond_1ded
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 87
    :goto_b
    return-object v2

    .line 84
    :cond_c
    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_2f

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4b

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .line 87
    :goto_40
    if-nez v1, :cond_4d

    sget-object v2, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_b

    .line 86
    :cond_4b
    const/4 v1, 0x0

    goto :goto_40

    :cond_4d
    move-object v2, v1

    .line 87
    goto :goto_b
.end method

.method public loadStringResources(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->RESOURCE_NAMES:[Ljava/lang/String;

    const v1, 0x7f0c0068

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->loadStringResourcesInternal(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method loadStringResourcesInternal(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceNames"    # [Ljava/lang/String;
    .param p3, "referenceId"    # I

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 72
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "packageName":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_21

    aget-object v6, v0, v1

    .line 74
    .local v6, "resName":Ljava/lang/String;
    const-string v7, "string"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 75
    .local v5, "resId":I
    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 77
    .end local v5    # "resId":I
    .end local v6    # "resName":Ljava/lang/String;
    :cond_21
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    if-nez v0, :cond_12

    .line 60
    sget-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    .line 62
    :cond_12
    return-void
.end method
