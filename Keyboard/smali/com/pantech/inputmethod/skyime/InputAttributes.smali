.class public Lcom/pantech/inputmethod/skyime/InputAttributes;
.super Ljava/lang/Object;
.source "InputAttributes.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mApplicationSpecifiedCompletionOn:Z

.field public final mEditorAction:I

.field public final mInputTypeNoAutoCorrect:Z

.field public final mIsNoExtractUI:Z

.field public final mIsSettingsSuggestionStripOn:Z


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 16
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "isFullscreenMode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v9, Lcom/pantech/inputmethod/skyime/InputAttributes;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    .line 39
    if-eqz p1, :cond_35

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 40
    .local v5, "inputType":I
    :goto_11
    and-int/lit8 v4, v5, 0xf

    .line 41
    .local v4, "inputClass":I
    if-eq v4, v7, :cond_60

    .line 46
    if-nez p1, :cond_37

    .line 47
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v10, "No editor info for this field. Bug?"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1e
    :goto_1e
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 58
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 59
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    .line 99
    :goto_24
    if-nez p1, :cond_c2

    move v9, v8

    :goto_27
    iput v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mEditorAction:I

    .line 101
    if-eqz p1, :cond_cb

    .line 102
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v10, 0x2000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_c8

    :goto_32
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsNoExtractUI:Z

    .line 106
    :goto_34
    return-void

    .end local v4    # "inputClass":I
    .end local v5    # "inputType":I
    :cond_35
    move v5, v8

    .line 39
    goto :goto_11

    .line 48
    .restart local v4    # "inputClass":I
    .restart local v5    # "inputType":I
    :cond_37
    if-nez v5, :cond_41

    .line 50
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v10, "InputType.TYPE_NULL is specified"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 51
    :cond_41
    if-nez v4, :cond_1e

    .line 53
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v10, "Unexpected input class: inputType=0x%08x imeOptions=0x%08x"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 61
    :cond_60
    and-int/lit16 v6, v5, 0xff0

    .line 62
    .local v6, "variation":I
    const/high16 v9, 0x80000

    and-int/2addr v9, v5

    if-eqz v9, :cond_b2

    move v3, v7

    .line 64
    .local v3, "flagNoSuggestions":Z
    :goto_68
    const/high16 v9, 0x20000

    and-int/2addr v9, v5

    if-eqz v9, :cond_b4

    move v2, v7

    .line 66
    .local v2, "flagMultiLine":Z
    :goto_6e
    const v9, 0x8000

    and-int/2addr v9, v5

    if-eqz v9, :cond_b6

    move v1, v7

    .line 68
    .local v1, "flagAutoCorrect":Z
    :goto_75
    const/high16 v9, 0x10000

    and-int/2addr v9, v5

    if-eqz v9, :cond_b8

    move v0, v7

    .line 72
    .local v0, "flagAutoComplete":Z
    :goto_7b
    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v9

    if-nez v9, :cond_99

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isVisiblePasswordInputType(I)Z

    move-result v9

    if-nez v9, :cond_99

    invoke-static {v6}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isEmailVariation(I)Z

    move-result v9

    if-nez v9, :cond_99

    const/16 v9, 0x10

    if-eq v9, v6, :cond_99

    const/16 v9, 0xb0

    if-eq v9, v6, :cond_99

    if-nez v3, :cond_99

    if-eqz v0, :cond_ba

    .line 79
    :cond_99
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    .line 88
    :goto_9b
    const/16 v9, 0xa0

    if-ne v6, v9, :cond_a1

    if-eqz v1, :cond_a7

    :cond_a1
    if-nez v3, :cond_a7

    if-nez v1, :cond_bd

    if-nez v2, :cond_bd

    .line 92
    :cond_a7
    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    .line 97
    :goto_a9
    if-eqz v0, :cond_c0

    if-eqz p2, :cond_c0

    move v9, v7

    :goto_ae
    iput-boolean v9, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    goto/16 :goto_24

    .end local v0    # "flagAutoComplete":Z
    .end local v1    # "flagAutoCorrect":Z
    .end local v2    # "flagMultiLine":Z
    .end local v3    # "flagNoSuggestions":Z
    :cond_b2
    move v3, v8

    .line 62
    goto :goto_68

    .restart local v3    # "flagNoSuggestions":Z
    :cond_b4
    move v2, v8

    .line 64
    goto :goto_6e

    .restart local v2    # "flagMultiLine":Z
    :cond_b6
    move v1, v8

    .line 66
    goto :goto_75

    .restart local v1    # "flagAutoCorrect":Z
    :cond_b8
    move v0, v8

    .line 68
    goto :goto_7b

    .line 81
    .restart local v0    # "flagAutoComplete":Z
    :cond_ba
    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    goto :goto_9b

    .line 94
    :cond_bd
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    goto :goto_a9

    :cond_c0
    move v9, v8

    .line 97
    goto :goto_ae

    .line 99
    .end local v0    # "flagAutoComplete":Z
    .end local v1    # "flagAutoCorrect":Z
    .end local v2    # "flagMultiLine":Z
    .end local v3    # "flagNoSuggestions":Z
    .end local v6    # "variation":I
    :cond_c2
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v9, v9, 0xff

    goto/16 :goto_27

    :cond_c8
    move v8, v7

    .line 102
    goto/16 :goto_32

    .line 104
    :cond_cb
    iput-boolean v8, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsNoExtractUI:Z

    goto/16 :goto_34
.end method

.method private dumpFlags(I)V
    .registers 5
    .param p1, "inputType"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Input class:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    and-int/lit8 v0, p1, 0xf

    .line 112
    .local v0, "inputClass":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 113
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_TEXT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_13
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 115
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_PHONE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 117
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_NUMBER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_27
    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 119
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_CLASS_DATETIME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_31
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Variation:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_43

    .line 122
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_43
    and-int/lit8 v1, p1, 0x30

    if-eqz v1, :cond_4e

    .line 124
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4e
    and-int/lit16 v1, p1, 0xb0

    if-eqz v1, :cond_59

    .line 126
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_FILTER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_59
    and-int/lit8 v1, p1, 0x50

    if-eqz v1, :cond_64

    .line 128
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_LONG_MESSAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_64
    and-int/lit8 v1, p1, 0x0

    if-eqz v1, :cond_6f

    .line 130
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_NORMAL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_6f
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7a

    .line 132
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_7a
    and-int/lit8 v1, p1, 0x60

    if-eqz v1, :cond_85

    .line 134
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PERSON_NAME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_85
    and-int/lit16 v1, p1, 0xc0

    if-eqz v1, :cond_90

    .line 136
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_PHONETIC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_90
    and-int/lit8 v1, p1, 0x70

    if-eqz v1, :cond_9b

    .line 138
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_9b
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_a6

    .line 140
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_a6
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_b1

    .line 142
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_URI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b1
    and-int/lit16 v1, p1, 0x90

    if-eqz v1, :cond_bc

    .line 144
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_bc
    and-int/lit16 v1, p1, 0xa0

    if-eqz v1, :cond_c7

    .line 146
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_c7
    and-int/lit16 v1, p1, 0xd0

    if-eqz v1, :cond_d2

    .line 148
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_d2
    and-int/lit16 v1, p1, 0xe0

    if-eqz v1, :cond_dd

    .line 150
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_dd
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "Flags:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/high16 v1, 0x80000

    and-int/2addr v1, p1

    if-eqz v1, :cond_f0

    .line 153
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_f0
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_fc

    .line 155
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_fc
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    if-eqz v1, :cond_108

    .line 157
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_108
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_113

    .line 159
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_113
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_11e

    .line 161
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_11e
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_129

    .line 163
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_129
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_136

    .line 165
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_136
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_142

    .line 167
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->TAG:Ljava/lang/String;

    const-string v2, "  TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_142
    return-void
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 180
    if-nez p2, :cond_4

    const/4 v1, 0x0

    .line 183
    :goto_3
    return v1

    .line 181
    :cond_4
    if-eqz p0, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "findingKey":Ljava/lang/String;
    :goto_1d
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    .end local v0    # "findingKey":Ljava/lang/String;
    :cond_24
    move-object v0, p1

    .line 181
    goto :goto_1d
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n mInputTypeNoAutoCorrect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mIsSettingsSuggestionStripOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n mApplicationSpecifiedCompletionOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
