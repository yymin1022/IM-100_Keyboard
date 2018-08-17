.class public Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
.super Lcom/pantech/inputmethod/keyboard/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;,
        Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;,
        Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
    }
.end annotation


# static fields
.field private static final ATTR_TEXT_SIZE:[I


# instance fields
.field private final mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mAutoCorrectionSpacebarLedEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

.field mLabelBuilder:Ljava/lang/StringBuilder;

.field private final mRes:Landroid/content/res/Resources;

.field private final mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mShortcutHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private final mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, v0, v1

    sput-object v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->ATTR_TEXT_SIZE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p2}, Lcom/pantech/inputmethod/keyboard/Keyboard;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 38
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mLabelBuilder:Ljava/lang/StringBuilder;

    .line 67
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mTheme:Landroid/content/res/Resources$Theme;

    .line 73
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 75
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 78
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 79
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 80
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 81
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 83
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_42
    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 87
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Key;->getHintIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_52
    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutHintIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    sget-object v1, Lcom/pantech/inputmethod/skyime/R$styleable;->LatinKeyboard:[I

    const v3, 0x7f010001

    const v4, 0x7f0e001e

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_71
    move-object v1, v2

    .line 83
    goto :goto_42

    :cond_73
    move-object v1, v2

    .line 87
    goto :goto_52
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
    .param p3, "x2"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V

    return-void
.end method

.method private getShiftedChar(I)I
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 269
    move v0, p1

    .line 271
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_c

    .line 284
    :goto_4
    return v0

    .line 277
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 278
    goto :goto_4

    .line 281
    :sswitch_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 271
    nop

    :sswitch_data_c
    .sparse-switch
        0x3131 -> :sswitch_5
        0x3137 -> :sswitch_5
        0x3142 -> :sswitch_5
        0x3145 -> :sswitch_5
        0x3148 -> :sswitch_5
        0x3150 -> :sswitch_8
        0x3154 -> :sswitch_8
    .end sparse-switch
.end method

.method private static getSpacebarTextColor(IF)I
    .registers 7
    .param p0, "color"    # I
    .param p1, "fadeFactor"    # F

    .prologue
    .line 166
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 168
    .local v0, "newColor":I
    return v0
.end method

.method public static getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I
    .registers 7
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
    .param p1, "style"    # I
    .param p2, "defValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 262
    sget-object v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->ATTR_TEXT_SIZE:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 264
    .local v1, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return v1
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_67

    .line 235
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 236
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v2, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_31
    return-object v1

    .line 237
    :cond_32
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isKoreanKeyboard()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 238
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->getShiftedChar(I)I

    move-result v0

    .line 239
    .local v0, "new_label":I
    int-to-char v1, v0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_67

    .line 240
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mLabelBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 241
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mLabelBuilder:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_61

    .line 243
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mLabelBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    :cond_61
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mLabelBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0    # "new_label":I
    :cond_67
    move-object v1, p1

    .line 248
    goto :goto_31
.end method

.method public getNearestKeys(II)[I
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 255
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mOccupiedWidth:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHorizontalEdgesPadding:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mOccupiedHeight:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    return-object v0
.end method

.method public needsAutoCorrectionSpacebarLed()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    return v0
.end method

.method public updateActionKey(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/KeyboardView;)V
    .registers 4
    .param p1, "actionLabel"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 220
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 222
    :cond_b
    if-eqz p2, :cond_12

    .line 223
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 225
    :cond_12
    return-void
.end method

.method public updateFunctionKey(Z)V
    .registers 6
    .param p1, "available"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_e

    .line 196
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-nez p1, :cond_32

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 198
    :cond_e
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_1a

    .line 199
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-nez p1, :cond_34

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 201
    :cond_1a
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_26

    .line 202
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-nez p1, :cond_36

    move v0, v1

    :goto_23
    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 204
    :cond_26
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_31

    .line 205
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-nez p1, :cond_38

    :goto_2e
    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 207
    :cond_31
    return-void

    :cond_32
    move v0, v2

    .line 196
    goto :goto_b

    :cond_34
    move v0, v2

    .line 199
    goto :goto_17

    :cond_36
    move v0, v2

    .line 202
    goto :goto_23

    :cond_38
    move v1, v2

    .line 205
    goto :goto_2e
.end method

.method public updateSettingKey(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_c

    .line 213
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 215
    :cond_c
    return-void

    .line 213
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public updateShortcutKey(ZLcom/pantech/inputmethod/keyboard/KeyboardView;)V
    .registers 5
    .param p1, "available"    # Z
    .param p2, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_19

    .line 177
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 180
    if-eqz p2, :cond_19

    .line 181
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 184
    :cond_19
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz v0, :cond_2d

    .line 185
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mShortcutHintIcon:Landroid/graphics/drawable/Drawable;

    :goto_23
    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    if-eqz p2, :cond_2d

    .line 188
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 191
    :cond_2d
    return-void

    .line 178
    :cond_2e
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    .line 185
    :cond_31
    const/4 v0, 0x0

    goto :goto_23
.end method
