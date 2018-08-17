.class public Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;
.super Ljava/lang/Object;
.source "InputTypeCompatUtils.java"


# static fields
.field private static final FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

.field private static final NUMBER_PASSWORD_INPUT_TYPE:I

.field private static final OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

.field private static final TEXT_PASSWORD_INPUT_TYPE:I = 0x81

.field private static final TEXT_PERSON_NAME_INPUT_TYPE:I = 0x61

.field private static final TEXT_VISIBLE_PASSWORD_INPUT_TYPE:I = 0x91

.field private static final WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

.field private static final WEB_TEXT_PASSWORD_INPUT_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 24
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    .line 26
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    .line 28
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_NUMBER_VARIATION_PASSWORD"

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    .line 30
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    .line 33
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    .line 36
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    invoke-static {v3, v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    .line 51
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_4a
    sput v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    .line 55
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_58
    sput v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    .line 60
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_66

    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v1, v0, 0x2

    :cond_66
    sput v1, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    .line 64
    return-void

    :cond_69
    move v0, v1

    .line 51
    goto :goto_4a

    :cond_6b
    move v0, v1

    .line 55
    goto :goto_58
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmailVariation(I)Z
    .registers 2
    .param p0, "variation"    # I

    .prologue
    .line 96
    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    invoke-static {p0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressVariation(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isNumberPasswordInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 82
    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_a

    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 109
    and-int/lit16 v0, p0, 0xfff

    .line 111
    .local v0, "maskedInputType":I
    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isTextPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isNumberPasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isPersonNameInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 124
    and-int/lit16 v0, p0, 0xfff

    .line 126
    .local v0, "maskedInputType":I
    const/16 v1, 0x61

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static isTextPasswordInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 87
    const/16 v0, 0x81

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVisiblePasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 117
    and-int/lit16 v0, p0, 0xfff

    .line 119
    .local v0, "maskedInputType":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static isWebEditTextInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 67
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWebEmailAddressInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 77
    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-eqz v0, :cond_a

    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isWebEmailAddressVariation(I)Z
    .registers 2
    .param p0, "variation"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWebInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 101
    and-int/lit16 v0, p0, 0xfff

    .line 103
    .local v0, "maskedInputType":I
    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isWebEditTextInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressInputType(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static isWebPasswordInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 72
    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_a

    sget v0, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
