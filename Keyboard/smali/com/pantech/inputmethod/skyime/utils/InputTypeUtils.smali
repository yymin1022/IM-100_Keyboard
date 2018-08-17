.class public Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;
.super Ljava/lang/Object;
.source "InputTypeUtils.java"

# interfaces
.implements Landroid/text/InputType;


# static fields
.field private static final NUMBER_PASSWORD_INPUT_TYPE:I = 0x12

.field private static final TEXT_PASSWORD_INPUT_TYPE:I = 0x81

.field private static final TEXT_VISIBLE_PASSWORD_INPUT_TYPE:I = 0x91

.field private static final WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I = 0xd1

.field private static final WEB_TEXT_PASSWORD_INPUT_TYPE:I = 0xe1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static isEmailVariation(I)Z
    .registers 2
    .param p0, "variation"    # I

    .prologue
    .line 65
    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebEmailAddressVariation(I)Z

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
    .line 52
    const/16 v0, 0x12

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 78
    and-int/lit16 v0, p0, 0xfff

    .line 80
    .local v0, "maskedInputType":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isTextPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isNumberPasswordInputType(I)Z

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

.method private static isTextPasswordInputType(I)Z
    .registers 2
    .param p0, "inputType"    # I

    .prologue
    .line 57
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
    .line 86
    and-int/lit16 v0, p0, 0xfff

    .line 88
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
    .line 38
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
    .line 47
    const/16 v0, 0xd1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWebEmailAddressVariation(I)Z
    .registers 2
    .param p0, "variation"    # I

    .prologue
    .line 61
    const/16 v0, 0xd0

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isWebInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 70
    and-int/lit16 v0, p0, 0xfff

    .line 72
    .local v0, "maskedInputType":I
    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebEditTextInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebEmailAddressInputType(I)Z

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
    .line 42
    const/16 v0, 0xe1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
