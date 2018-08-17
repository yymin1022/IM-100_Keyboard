.class public Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;
.super Ljava/lang/Object;
.source "KeyboardIconsSet.java"


# static fields
.field private static final ICON_ACTION_ENTER_FLOATING_KEY:I = 0x20

.field private static final ICON_DELETE_FLOATING_KEY:I = 0x23

.field private static final ICON_DELETE_KEY:I = 0x2

.field private static final ICON_DELETE_SMALL_KEY:I = 0x13

.field private static final ICON_EMOJI_EMOTICONS_KEY:I = 0x1b

.field private static final ICON_EMOJI_NATURE_KEY:I = 0x18

.field private static final ICON_EMOJI_OBJECTS_KEY:I = 0x17

.field private static final ICON_EMOJI_PEOPLE_KEY:I = 0x16

.field private static final ICON_EMOJI_PLACES_KEY:I = 0x19

.field private static final ICON_EMOJI_RECETNS_KEY:I = 0x15

.field private static final ICON_EMOJI_SYMBOLS_KEY:I = 0x1a

.field private static final ICON_HINT_CUSTOM_SYMBOLS_KEY:I = 0xf

.field private static final ICON_HINT_EDIT_MODE_KEY:I = 0x1f

.field private static final ICON_HINT_EMAIL_KEY:I = 0xd

.field private static final ICON_HINT_FIRST_PAGE_KEY:I = 0xe

.field private static final ICON_HINT_FLOATING_COMMON_KEY:I = 0x35

.field private static final ICON_HINT_FLOATING_DOMAIN_KEY:I = 0x2a

.field private static final ICON_HINT_FLOATING_HIDE_KEY:I = 0x29

.field private static final ICON_HINT_FLOATING_SETTING_KEY:I = 0x28

.field private static final ICON_HINT_HIDE_KEY:I = 0xb

.field private static final ICON_HINT_SETTING_KEY:I = 0xa

.field private static final ICON_HINT_URI_KEY:I = 0xc

.field private static final ICON_LAST:I = 0x35

.field private static final ICON_MODE_FLOATING_KEY:I = 0x1c

.field private static final ICON_MODE_SPACE_SMALL_KEY:I = 0x1d

.field private static final ICON_NEXT_PAGE_KEY:I = 0x11

.field private static final ICON_NORMAL_SYMBOLS_KEY:I = 0x14

.field private static final ICON_PREV_PAGE_KEY:I = 0x10

.field private static final ICON_RETURN_KEY:I = 0x5

.field private static final ICON_SEARCH_KEY:I = 0x6

.field private static final ICON_SETTINGS_KEY:I = 0x3

.field private static final ICON_SHIFTED_SHIFT_KEY:I = 0x9

.field private static final ICON_SHIFT_FLOATING_KEY:I = 0x24

.field private static final ICON_SHIFT_KEY:I = 0x1

.field private static final ICON_SHIFT_LOCKED_KEY:I = 0x12

.field private static final ICON_SHIFT_LOCK_FLOATING_KEY:I = 0x26

.field private static final ICON_SHIFT_ON_FLOATING_KEY:I = 0x25

.field private static final ICON_SHORTCUT_FOR_LABEL:I = 0x8

.field private static final ICON_SHORTCUT_KEY:I = 0x7

.field private static final ICON_SPACE_FLOATING_KEY:I = 0x27

.field private static final ICON_SPACE_KEY:I = 0x4

.field private static final ICON_SYMBOL_ARROW_LEFT_FLOATING_KEY:I = 0x21

.field private static final ICON_SYMBOL_ARROW_RIGHT_FLOATING_KEY:I = 0x22

.field public static final ICON_UNDEFINED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIcons:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x36

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static final getIconId(I)I
    .registers 2
    .param p0, "attrIndex"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_7c

    .line 181
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 87
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 89
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 91
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 93
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 95
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 97
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 99
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 101
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 103
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 105
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 107
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 109
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 111
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 113
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 115
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 117
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 119
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 121
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 123
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 126
    :pswitch_37
    const/16 v0, 0x14

    goto :goto_4

    .line 128
    :pswitch_3a
    const/16 v0, 0x15

    goto :goto_4

    .line 130
    :pswitch_3d
    const/16 v0, 0x16

    goto :goto_4

    .line 132
    :pswitch_40
    const/16 v0, 0x17

    goto :goto_4

    .line 134
    :pswitch_43
    const/16 v0, 0x18

    goto :goto_4

    .line 136
    :pswitch_46
    const/16 v0, 0x19

    goto :goto_4

    .line 138
    :pswitch_49
    const/16 v0, 0x1a

    goto :goto_4

    .line 140
    :pswitch_4c
    const/16 v0, 0x1b

    goto :goto_4

    .line 144
    :pswitch_4f
    const/16 v0, 0x1c

    goto :goto_4

    .line 148
    :pswitch_52
    const/16 v0, 0x1d

    goto :goto_4

    .line 152
    :pswitch_55
    const/16 v0, 0x1f

    goto :goto_4

    .line 155
    :pswitch_58
    const/16 v0, 0x35

    goto :goto_4

    .line 157
    :pswitch_5b
    const/16 v0, 0x20

    goto :goto_4

    .line 159
    :pswitch_5e
    const/16 v0, 0x21

    goto :goto_4

    .line 161
    :pswitch_61
    const/16 v0, 0x22

    goto :goto_4

    .line 163
    :pswitch_64
    const/16 v0, 0x23

    goto :goto_4

    .line 165
    :pswitch_67
    const/16 v0, 0x24

    goto :goto_4

    .line 167
    :pswitch_6a
    const/16 v0, 0x25

    goto :goto_4

    .line 169
    :pswitch_6d
    const/16 v0, 0x26

    goto :goto_4

    .line 171
    :pswitch_70
    const/16 v0, 0x27

    goto :goto_4

    .line 174
    :pswitch_73
    const/16 v0, 0x28

    goto :goto_4

    .line 176
    :pswitch_76
    const/16 v0, 0x29

    goto :goto_4

    .line 178
    :pswitch_79
    const/16 v0, 0x2a

    goto :goto_4

    .line 85
    :pswitch_data_7c
    .packed-switch 0xe
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_3
        :pswitch_55
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_58
    .end packed-switch
.end method

.method private static setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-eqz p0, :cond_e

    .line 210
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_e
    return-object p0
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "iconId"    # I

    .prologue
    .line 201
    if-nez p1, :cond_4

    .line 202
    const/4 v0, 0x0

    .line 205
    :goto_3
    return-object v0

    .line 203
    :cond_4
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-lt p1, v0, :cond_24

    .line 204
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon id is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_24
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_3
.end method

.method public loadIcons(Landroid/content/res/TypedArray;)V
    .registers 10
    .param p1, "keyboardAttrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 187
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_40

    .line 188
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 189
    .local v0, "attrIndex":I
    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconId(I)I

    move-result v4

    .line 190
    .local v4, "iconId":I
    if-eqz v4, :cond_1d

    .line 192
    :try_start_11
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_1d} :catch_20

    .line 187
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 193
    :catch_20
    move-exception v2

    .line 194
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v5, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drawable resource for icon #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 198
    .end local v0    # "attrIndex":I
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "iconId":I
    :cond_40
    return-void
.end method
