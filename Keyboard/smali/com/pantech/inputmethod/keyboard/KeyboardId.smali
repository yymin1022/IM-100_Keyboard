.class public Lcom/pantech/inputmethod/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# static fields
.field public static final EMOJI_MODE_EMOTICONS:I = 0x6

.field public static final EMOJI_MODE_NATURE:I = 0x3

.field public static final EMOJI_MODE_NONE:I = -0x1

.field public static final EMOJI_MODE_OBJECTS:I = 0x2

.field public static final EMOJI_MODE_PEOPLE:I = 0x1

.field public static final EMOJI_MODE_PLACES:I = 0x4

.field public static final EMOJI_MODE_RECETNS:I = 0x0

.field public static final EMOJI_MODE_SYMBOLS:I = 0x5

.field public static final F2KEY_MODE_NONE:I = 0x0

.field public static final F2KEY_MODE_SETTINGS:I = 0x1

.field public static final F2KEY_MODE_SHORTCUT_IME:I = 0x2

.field public static final F2KEY_MODE_SHORTCUT_IME_OR_SETTINGS:I = 0x3

.field public static final INPUT_MODE_FLOATING:I = 0x4

.field public static final INPUT_MODE_FLOATING_LEFT:I = 0x5

.field public static final INPUT_MODE_FLOATING_RIGHT:I = 0x6

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field public static final LANG_EDIT:I = 0x5

.field public static final LANG_EMO:I = 0x4

.field public static final LANG_EMOJI:I = 0x6

.field public static final LANG_ENG:I = 0x2

.field public static final LANG_KOR:I = 0x1

.field public static final LANG_NONE:I = 0x0

.field public static final LANG_NUM:I = 0x3

.field public static final MODE_DATE:I = 0x6

.field public static final MODE_DATETIME:I = 0x8

.field public static final MODE_EMAIL:I = 0x2

.field public static final MODE_IM:I = 0x3

.field public static final MODE_LEFTHAND:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_NUMBER:I = 0x5

.field public static final MODE_PHONE:I = 0x4

.field public static final MODE_RIGHTHAND:I = 0x2

.field public static final MODE_TEXT:I = 0x0

.field public static final MODE_TIME:I = 0x7

.field public static final MODE_URL:I = 0x1

.field public static final TYPE_ENG_KEYPAD:I = 0x0

.field public static final TYPE_ENG_QWERTY:I = 0x2

.field public static final TYPE_KOR_CHUNJIIN:I = 0x3

.field public static final TYPE_KOR_NARATGUL:I = 0x4

.field public static final TYPE_KOR_QWERTY1:I = 0x2

.field public static final TYPE_KOR_QWERTY2:I = 0x5

.field public static final TYPE_KOR_SKY:I


# instance fields
.field public final mAttribute:Landroid/view/inputmethod/EditorInfo;

.field public final mClobberSettingsKey:Z

.field public final mF2KeyMode:I

.field public final mHasSettingsKey:Z

.field public final mHasShortcutKey:Z

.field private final mHashCode:I

.field public final mHideEmojiMode:Z

.field public final mImeAction:I

.field public final mInputMode:I

.field private final mLanguage:I

.field public final mLocale:Ljava/util/Locale;

.field public final mMode:I

.field public final mNavigateAction:Z

.field public final mOrientation:I

.field public final mPasswordInput:Z

.field public final mQwertyLongInput:Z

.field public final mShortcutKeyEnabled:Z

.field public final mWidth:I

.field public final mXmlId:I

.field public final mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZZIZZZII)V
    .registers 22
    .param p1, "xmlName"    # Ljava/lang/String;
    .param p2, "xmlId"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "orientation"    # I
    .param p5, "width"    # I
    .param p6, "mode"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "hasSettingsKey"    # Z
    .param p9, "qwertyLongInput"    # Z
    .param p10, "f2KeyMode"    # I
    .param p11, "clobberSettingsKey"    # Z
    .param p12, "shortcutKeyEnabled"    # Z
    .param p13, "hasShortcutKey"    # Z
    .param p14, "language"    # I
    .param p15, "inputMode"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p7, :cond_e3

    iget v2, p7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 124
    .local v2, "inputType":I
    :goto_7
    if-eqz p7, :cond_e6

    iget v1, p7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 125
    .local v1, "imeOptions":I
    :goto_b
    iput-object p3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    .line 126
    iput p4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    .line 127
    iput p5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    .line 128
    iput p6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 129
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    .line 130
    move/from16 v0, p14

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    .line 133
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    .line 137
    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_e9

    :cond_28
    const/4 v3, 0x1

    :goto_29
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    .line 139
    iput-boolean p8, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    .line 140
    iput-boolean p9, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mQwertyLongInput:Z

    .line 141
    move/from16 v0, p10

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    .line 142
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    .line 143
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    .line 144
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    .line 147
    iget-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-nez v3, :cond_53

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_53

    invoke-static {p7}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrvImeOptionsHideEmojiMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-eqz v3, :cond_ec

    :cond_53
    const/4 v3, 0x1

    :goto_54
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHideEmojiMode:Z

    .line 151
    move/from16 v0, p15

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    .line 155
    const v3, 0x400000ff    # 2.0000608f

    and-int/2addr v3, v1

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    .line 158
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    .line 159
    iput-object p7, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 161
    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHashCode:I

    .line 178
    return-void

    .line 123
    .end local v1    # "imeOptions":I
    .end local v2    # "inputType":I
    :cond_e3
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 124
    .restart local v2    # "inputType":I
    :cond_e6
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 137
    .restart local v1    # "imeOptions":I
    :cond_e9
    const/4 v3, 0x0

    goto/16 :goto_29

    .line 147
    :cond_ec
    const/4 v3, 0x0

    goto/16 :goto_54
.end method

.method private equals(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Z
    .registers 4
    .param p1, "other"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    .line 454
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mQwertyLongInput:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mQwertyLongInput:Z

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    if-ne v0, v1, :cond_66

    iget v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    if-ne v0, v1, :cond_66

    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHideEmojiMode:Z

    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHideEmojiMode:Z

    if-ne v0, v1, :cond_66

    const/4 v0, 0x1

    :goto_65
    return v0

    :cond_66
    const/4 v0, 0x0

    goto :goto_65
.end method

.method public static equivalentEditorInfoForKeyboard(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p0, "a"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "b"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 501
    :cond_6
    :goto_6
    return v0

    .line 500
    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v0, v1

    goto :goto_6

    .line 501
    :cond_d
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_29
    move v0, v1

    goto :goto_6
.end method

.method public static f2KeyModeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "f2KeyMode"    # I

    .prologue
    .line 529
    packed-switch p0, :pswitch_data_12

    .line 539
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 531
    :pswitch_5
    const-string v0, "none"

    goto :goto_4

    .line 533
    :pswitch_8
    const-string v0, "settings"

    goto :goto_4

    .line 535
    :pswitch_b
    const-string v0, "shortcutIme"

    goto :goto_4

    .line 537
    :pswitch_e
    const-string v0, "shortcutImeOrSettings"

    goto :goto_4

    .line 529
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static modeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 510
    packed-switch p0, :pswitch_data_18

    .line 524
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 512
    :pswitch_5
    const-string v0, "text"

    goto :goto_4

    .line 514
    :pswitch_8
    const-string v0, "url"

    goto :goto_4

    .line 516
    :pswitch_b
    const-string v0, "email"

    goto :goto_4

    .line 518
    :pswitch_e
    const-string v0, "im"

    goto :goto_4

    .line 520
    :pswitch_11
    const-string v0, "phone"

    goto :goto_4

    .line 522
    :pswitch_14
    const-string v0, "number"

    goto :goto_4

    .line 510
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public cloneWithNewXml(Ljava/lang/String;I)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 20
    .param p1, "xmlName"    # Ljava/lang/String;
    .param p2, "xmlId"    # I

    .prologue
    .line 181
    new-instance v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mInputMode:I

    move/from16 v16, v0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/pantech/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZZIZZZII)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 450
    instance-of v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->equals(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLanguage()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    return v0
.end method

.method public getXmlId()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHashCode:I

    return v0
.end method

.method public imeAction()I
    .registers 2

    .prologue
    .line 545
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    return v0
.end method

.method public isAlphabetKeyboard()Z
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEditKeyboard()Z
    .registers 3

    .prologue
    .line 397
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050009

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEmoticonKeyboard()Z
    .registers 3

    .prologue
    .line 207
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isFloatingKeyboard()Z
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isPortraitFloatingKeypad()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingLandscapeKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFloatingKeyboardLeft()Z
    .registers 3

    .prologue
    .line 434
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050030

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05001f

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050042

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050014

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public isFloatingKeyboardRight()Z
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050031

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050020

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050043

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050015

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public isFloatingLandScapeEmojiKeyboard()Z
    .registers 3

    .prologue
    .line 300
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05000d

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05000e

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05000f

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isFloatingLandscapeKeyboard()Z
    .registers 3

    .prologue
    .line 280
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingQwertyKeybaord()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardLeft()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardRight()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingLandscapeSymbolKeyboard()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingLandscapeNumberKeyboard()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingLandScapeEmojiKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public isFloatingLandscapeNumberKeyboard()Z
    .registers 3

    .prologue
    .line 308
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003a

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003b

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003c

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050048

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050049

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004a

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004c

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004d

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004e

    if-ne v0, v1, :cond_46

    :cond_44
    const/4 v0, 0x1

    :goto_45
    return v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public isFloatingLandscapeSymbolKeyboard()Z
    .registers 3

    .prologue
    .line 290
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050041

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050042

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050043

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050013

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050014

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050015

    if-ne v0, v1, :cond_31

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public isFloatingQwertyKeybaord()Z
    .registers 3

    .prologue
    .line 270
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002f

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05001e

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050030

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05001f

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050031

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050020

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002b

    if-ne v0, v1, :cond_33

    :cond_31
    const/4 v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public isKoreanKeyboard()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLandscapeEditKeyboard()Z
    .registers 3

    .prologue
    .line 391
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isEditKeyboard()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLandscapeNumberPhoneKeyboard()Z
    .registers 3

    .prologue
    .line 366
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberPhoneKeyboard()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLandscapeNumberSymbolsKeyboard()Z
    .registers 3

    .prologue
    .line 330
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberSymbolsKeyboard()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLandscapeQwertyKeyboard()Z
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isMoreKeyboard()Z
    .registers 3

    .prologue
    .line 361
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050037

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isMoreSettingsKeyboard()Z
    .registers 3

    .prologue
    .line 357
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050038

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isMultitapKeyboard()Z
    .registers 3

    .prologue
    .line 402
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050018

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050034

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050024

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050019

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050035

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050025

    if-ne v0, v1, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public isNumberKeyboard()Z
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isNumberPhoneKeyboard()Z
    .registers 3

    .prologue
    .line 371
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050039

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003d

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003a

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003b

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05003c

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050047

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050050

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050048

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050049

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004a

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004b

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004f

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004c

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004d

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05004e

    if-ne v0, v1, :cond_6b

    :cond_69
    const/4 v0, 0x1

    :goto_6a
    return v0

    :cond_6b
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method public isNumberSymbolsKeyboard()Z
    .registers 3

    .prologue
    .line 335
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050040

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050045

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050017

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050012

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050041

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050042

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050043

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050013

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050014

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050015

    if-ne v0, v1, :cond_48

    :cond_46
    const/4 v0, 0x1

    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public isPhoneKeyboard()Z
    .registers 3

    .prologue
    .line 211
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPortraitFloatingKeypad()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v1, v0, :cond_61

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050019

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05001e

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050041

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050013

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05002f

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05002b

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050035

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050025

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050028

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05003a

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050048

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05004c

    if-eq v1, v2, :cond_60

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05000d

    if-ne v1, v2, :cond_61

    :cond_60
    :goto_60
    return v0

    :cond_61
    const/4 v0, 0x0

    goto :goto_60
.end method

.method public isPortraitFloatingKeypadKeyboard()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v1, v0, :cond_d

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050019

    if-ne v1, v2, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isPortraitFloatingQwertyKeybaord()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 243
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingQwertyKeybaord()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPreviewEnabledKeyboard()Z
    .registers 3

    .prologue
    .line 227
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05001a

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050029

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002a

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050040

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050022

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050033

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050045

    if-ne v0, v1, :cond_33

    :cond_31
    const/4 v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public isQwertyKeyboard()Z
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05001a

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050029

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002a

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050022

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050033

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingQwertyKeybaord()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isLandscapeNumberSymbolsKeyboard()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public isSimpleQwertyKeyboard()Z
    .registers 3

    .prologue
    .line 349
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002a

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSuggestionsKeyboard()Z
    .registers 3

    .prologue
    .line 353
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050052

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSymbolsKeyboard()Z
    .registers 3

    .prologue
    .line 203
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLanguage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public supportHeightResizing()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 413
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v1, v0, :cond_67

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050018

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05001a

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050034

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050029

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05002a

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050024

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050027

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050040

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050012

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050039

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f050047

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05004b

    if-eq v1, v2, :cond_66

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v2, 0x7f05000c

    if-eq v1, v2, :cond_66

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isEditKeyboard()Z

    move-result v1

    if-eqz v1, :cond_67

    :cond_66
    :goto_66
    return v0

    :cond_67
    const/4 v0, 0x0

    goto :goto_66
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 480
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "[%s.xml %s %s%d %s %s %s%s%s%s%s%s%s%s]"

    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    aput-object v0, v3, v5

    const/4 v4, 0x2

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v5, :cond_8b

    const-string v0, "port"

    :goto_1b
    aput-object v0, v3, v4

    const/4 v0, 0x3

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v4}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->imeOptionsName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    invoke-static {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->f2KeyModeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x7

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-eqz v0, :cond_8e

    const-string v0, " clobberSettingsKey"

    :goto_48
    aput-object v0, v3, v4

    const/16 v4, 0x8

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-eqz v0, :cond_91

    const-string v0, " navigateAction"

    :goto_52
    aput-object v0, v3, v4

    const/16 v4, 0x9

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-eqz v0, :cond_94

    const-string v0, " passwordInput"

    :goto_5c
    aput-object v0, v3, v4

    const/16 v4, 0xa

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mQwertyLongInput:Z

    if-eqz v0, :cond_97

    const-string v0, " QwertyLongInput"

    :goto_66
    aput-object v0, v3, v4

    const/16 v4, 0xb

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-eqz v0, :cond_9a

    const-string v0, " hasSettingsKey"

    :goto_70
    aput-object v0, v3, v4

    const/16 v4, 0xc

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-eqz v0, :cond_9d

    const-string v0, " shortcutKeyEnabled"

    :goto_7a
    aput-object v0, v3, v4

    const/16 v4, 0xd

    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-eqz v0, :cond_a0

    const-string v0, " hasShortcutKey"

    :goto_84
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    const-string v0, "land"

    goto :goto_1b

    :cond_8e
    const-string v0, ""

    goto :goto_48

    :cond_91
    const-string v0, ""

    goto :goto_52

    :cond_94
    const-string v0, ""

    goto :goto_5c

    :cond_97
    const-string v0, ""

    goto :goto_66

    :cond_9a
    const-string v0, ""

    goto :goto_70

    :cond_9d
    const-string v0, ""

    goto :goto_7a

    :cond_a0
    const-string v0, ""

    goto :goto_84
.end method
