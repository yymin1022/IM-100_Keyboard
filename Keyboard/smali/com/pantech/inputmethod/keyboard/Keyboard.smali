.class public Lcom/pantech/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    }
.end annotation


# static fields
.field public static final CODE_CANCEL:I = -0x4

.field public static final CODE_CAPSLOCK:I = -0x3

.field public static final CODE_CLIPBOARD:I = -0x7b

.field public static final CODE_CLOSE:I = -0x7d

.field public static final CODE_CLOSING_ANGLE_BRACKET:I = 0x3e

.field public static final CODE_CLOSING_CURLY_BRACKET:I = 0x7d

.field public static final CODE_CLOSING_PARENTHESIS:I = 0x29

.field public static final CODE_CLOSING_SQUARE_BRACKET:I = 0x5d

.field public static final CODE_CUSTOM_POPUP_OPTION:I = -0x1f4

.field public static final CODE_DASH:I = 0x2d

.field public static final CODE_DELETE:I = -0x5

.field public static final CODE_DIGIT0:I = 0x30

.field public static final CODE_DOUBLE_QUOTE:I = 0x22

.field public static final CODE_DUMMY:I = 0x0

.field public static final CODE_EDIT:I = 0xd6

.field public static final CODE_EDIT_ALL:I = 0xcc

.field public static final CODE_EDIT_BACK:I = 0xd4

.field public static final CODE_EDIT_CHOOSE:I = 0xce

.field public static final CODE_EDIT_CLEAR:I = 0xcd

.field public static final CODE_EDIT_CLOSE:I = 0xd5

.field public static final CODE_EDIT_COPY:I = 0xd1

.field public static final CODE_EDIT_CUT:I = 0xd2

.field public static final CODE_EDIT_DOWN:I = 0xc9

.field public static final CODE_EDIT_END:I = 0xd0

.field public static final CODE_EDIT_HOME:I = 0xcf

.field public static final CODE_EDIT_LEFT:I = 0xca

.field public static final CODE_EDIT_PASTE:I = 0xd3

.field public static final CODE_EDIT_RIGHT:I = 0xcb

.field public static final CODE_EDIT_TOUCH_PANEL:I = -0x22b

.field public static final CODE_EDIT_UP:I = 0xc8

.field public static final CODE_ENTER:I = 0xa

.field public static final CODE_FIRST_PAGE:I = -0x72

.field public static final CODE_FLOATING_MODE:I = -0x190

.field public static final CODE_FLOATING_SHOW_EMAIL:I = -0x192

.field public static final CODE_FLOATING_SHOW_PERIOD:I = -0x194

.field public static final CODE_FLOATING_SHOW_SETTINGS:I = -0x193

.field public static final CODE_FLOATING_SHOW_URL:I = -0x191

.field public static final CODE_HANJA:I = -0x8

.field public static final CODE_HAPTIC_AND_AUDIO_FEEDBACK_ONLY:I = -0x62

.field public static final CODE_HIDE_IME:I = -0x71

.field public static final CODE_INPUT_METHOD_POPUP:I = -0x7a

.field public static final CODE_MORE_SETTINGS:I = -0x9

.field public static final CODE_PERIOD:I = 0x2e

.field public static final CODE_PLUS:I = 0x2b

.field public static final CODE_SEPARATOR_CJI:I = 0x447

.field public static final CODE_SETTINGS:I = -0x6

.field public static final CODE_SHIFT:I = -0x1

.field public static final CODE_SHORTCUT:I = -0x7

.field public static final CODE_SINGLE_QUOTE:I = 0x27

.field public static final CODE_SIZE:I = -0x7c

.field public static final CODE_SPACE:I = 0x20

.field public static final CODE_SWITCH_ALPHA_SYMBOL:I = -0x2

.field public static final CODE_SWITCH_EMOJI_EMOTICONS:I = -0x65

.field public static final CODE_SWITCH_EMOJI_NATURE:I = -0x68

.field public static final CODE_SWITCH_EMOJI_OBJECTS:I = -0x69

.field public static final CODE_SWITCH_EMOJI_PEOPLE:I = -0x6a

.field public static final CODE_SWITCH_EMOJI_PLACES:I = -0x67

.field public static final CODE_SWITCH_EMOJI_RECENTS:I = -0x6b

.field public static final CODE_SWITCH_EMOJI_SYMBOLS:I = -0x66

.field public static final CODE_SWITCH_EMOTICON:I = -0x70

.field public static final CODE_SWITCH_ENGLISH:I = -0x6d

.field public static final CODE_SWITCH_ENG_KOR:I = -0x79

.field public static final CODE_SWITCH_KOREAN:I = -0x6c

.field public static final CODE_SWITCH_KOR_ENG:I = -0x78

.field public static final CODE_SWITCH_MODE_KEYBOARD:I = -0x75

.field public static final CODE_SWITCH_SPLIT_IN:I = -0x1c2

.field public static final CODE_SWITCH_SPLIT_OUT:I = -0x1c3

.field public static final CODE_SYMBOL_BASE:I = 0x76d

.field public static final CODE_SYMBOL_MAX:I = 0x786

.field public static final CODE_SYMBOL_PAGE_NEXT:I = -0x6f

.field public static final CODE_SYMBOL_PAGE_PREV:I = -0x6e

.field public static final CODE_TAB:I = 0x9

.field public static final CODE_UNSPECIFIED:I = -0x63

.field public static final TOTAL_PAGE_SYMBOLS:I = 0x3

.field public static final TOTAL_PAGE_SYMBOLS_EMOTICONS:I = 0x5


# instance fields
.field public final mHorizontalEdgesPadding:I

.field public final mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public final mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field public final mIsRtlKeyboard:Z

.field public final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeysNew:[Lcom/pantech/inputmethod/keyboard/Key;

.field public final mMaxMiniKeyboardColumn:I

.field public final mMoreKeysTemplate:I

.field public final mMostCommonKeyHeight:I

.field public final mMostCommonKeyWidth:I

.field public final mOccupiedHeight:I

.field public final mOccupiedWidth:I

.field public final mOneHandMode:I

.field private final mProximityCharsCorrectionEnabled:Z

.field private final mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

.field public final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

.field public final mShiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftedPreviewIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mThemeId:I

.field public final mTopPadding:I

.field public final mUnshiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnshiftedPreviewIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mVerticalGap:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V
    .registers 12
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    .line 223
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 224
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mThemeId:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mThemeId:I

    .line 225
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 226
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    .line 228
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOneHandMode:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOneHandMode:I

    .line 229
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mHorizontalEdgesPadding:I

    .line 230
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyHeight:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 231
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyWidth:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 232
    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIsRtlKeyboard:Z

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    .line 233
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMoreKeysTemplate:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 234
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxMiniKeyboardColumn:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMaxMiniKeyboardColumn:I

    .line 236
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTopPadding:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mTopPadding:I

    .line 237
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mVerticalGap:I

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    .line 239
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 240
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/pantech/inputmethod/keyboard/Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/inputmethod/keyboard/Key;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeysNew:[Lcom/pantech/inputmethod/keyboard/Key;

    .line 241
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    .line 242
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    .line 243
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    .line 244
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockedIcons:Ljava/util/Map;

    .line 245
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    .line 246
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    .line 247
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedPreviewIcons:Ljava/util/Map;

    .line 248
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 251
    new-instance v0, Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    iget-object v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->GRID_WIDTH:I

    iget v3, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->GRID_HEIGHT:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mHorizontalEdgesPadding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    iget v7, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v8, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeysNew:[Lcom/pantech/inputmethod/keyboard/Key;

    iget-object v9, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    invoke-direct/range {v0 .. v9}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;-><init>(Ljava/lang/String;IIIIII[Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .line 254
    iget-boolean v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mProximityCharsCorrectionEnabled:Z

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    .line 255
    return-void
.end method

.method public static themeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "themeId"    # I

    .prologue
    .line 635
    packed-switch p0, :pswitch_data_c

    .line 638
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 636
    :pswitch_5
    const-string v0, "White"

    goto :goto_4

    .line 637
    :pswitch_8
    const-string v0, "Black"

    goto :goto_4

    .line 635
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2a

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 434
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 436
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_2a
    return-object p1
.end method

.method public getKeyboardShiftState()Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    return-object v0
.end method

.method public getKeys()[Lcom/pantech/inputmethod/keyboard/Key;
    .registers 4

    .prologue
    .line 816
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/pantech/inputmethod/keyboard/Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/inputmethod/keyboard/Key;

    .line 817
    .local v0, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    return-object v0
.end method

.method public getNearestKeys(II)[I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 630
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->getNearestKeysOld(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getProximityInfo()Lcom/pantech/inputmethod/keyboard/ProximityInfo;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    return-object v0
.end method

.method public hasProximityCharsCorrection(I)Z
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 258
    iget-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mProximityCharsCorrectionEnabled:Z

    if-nez v1, :cond_6

    .line 259
    const/4 v1, 0x0

    .line 266
    :goto_5
    return v1

    .line 263
    :cond_6
    const/4 v0, 0x0

    .line 266
    .local v0, "canAssumeNativeHasProximityCharsInfoOfAllKeys":Z
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    goto :goto_5
.end method

.method public hasShiftLockKey()Z
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAlphaKeyboard()Z
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    return v0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .registers 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isAutomaticTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isEditKeyboard()Z
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isEditKeyboard()Z

    move-result v0

    return v0
.end method

.method public isFloatingKeyboardLeft()Z
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardLeft()Z

    move-result v0

    return v0
.end method

.method public isFloatingKeyboardRight()Z
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isFloatingKeyboardRight()Z

    move-result v0

    return v0
.end method

.method public isKoreanKeyboard()Z
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isKoreanKeyboard()Z

    move-result v0

    return v0
.end method

.method public isLandscapeNumberSymbolsKeyboard()Z
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isLandscapeNumberSymbolsKeyboard()Z

    move-result v0

    return v0
.end method

.method public isManualTemporaryUpperCase()Z
    .registers 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .registers 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMultitapKeyboard()Z
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isMultitapKeyboard()Z

    move-result v0

    return v0
.end method

.method public isNumberKeyboard()Z
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberKeyboard()Z

    move-result v0

    return v0
.end method

.method public isPhoneKeyboard()Z
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v0

    return v0
.end method

.method public isQwerty2Keyboard()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSimpleQwertyKeyboard()Z

    move-result v0

    return v0
.end method

.method public isQwertyKeyboard()Z
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isQwertyKeyboard()Z

    move-result v0

    return v0
.end method

.method public isShiftLockShifted()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLockShifted()Z

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v0

    return v0
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    return v0
.end method

.method public isSymbolsKeyboard()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSymbolsKeyboard()Z

    move-result v0

    return v0
.end method

.method public loadRecentKeys(Landroid/content/SharedPreferences;)V
    .registers 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;I)V

    .line 753
    return-void
.end method

.method public loadRecentKeys(Landroid/content/SharedPreferences;I)V
    .registers 18
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "splitType"    # I

    .prologue
    .line 756
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->readEmojiRecentKeys(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 757
    .local v10, "str":Ljava/lang/String;
    invoke-static {v10}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->jsonStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 758
    .local v11, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x4

    .line 760
    .local v6, "numInRowSplit":I
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_79

    const/4 v2, 0x4

    .line 763
    .local v2, "i":I
    :goto_f
    iget-object v12, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/keyboard/Key;

    .line 764
    .local v5, "key":Lcom/pantech/inputmethod/keyboard/Key;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 765
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/Key;->onReleased()V

    .line 767
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiTab()Z

    move-result v12

    if-eqz v12, :cond_38

    .line 768
    iget v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v13, -0x6b

    if-ne v12, v13, :cond_7b

    .line 769
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    .line 775
    :cond_38
    :goto_38
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v12

    if-eqz v12, :cond_b8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_b8

    .line 776
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 777
    const-string v12, ""

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 778
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 780
    .local v7, "obj":Ljava/lang/Object;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_80

    rem-int/lit8 v12, v3, 0x4

    if-nez v12, :cond_80

    .line 781
    add-int/lit8 v2, v3, 0x4

    .line 786
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_5d
    instance-of v12, v7, Ljava/lang/Integer;

    if-eqz v12, :cond_8c

    .line 787
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 788
    .local v1, "code":I
    iput v1, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 789
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 760
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_79
    const/4 v2, 0x0

    goto :goto_f

    .line 771
    .restart local v2    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_7b
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    goto :goto_38

    .line 782
    .end local v2    # "i":I
    .restart local v3    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_80
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_e3

    rem-int/lit8 v12, v3, 0x4

    if-nez v12, :cond_e3

    .line 783
    add-int/lit8 v2, v3, 0x4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_5d

    .line 792
    :cond_8c
    instance-of v12, v7, Ljava/lang/String;

    if-eqz v12, :cond_9e

    move-object v8, v7

    .line 793
    check-cast v8, Ljava/lang/String;

    .line 794
    .local v8, "outputText":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 795
    iput-object v8, v5, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 796
    const/16 v12, 0x76d

    iput v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_15

    .line 798
    .end local v8    # "outputText":Ljava/lang/String;
    :cond_9e
    const-string v12, "Keyboard"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadRecentKeys: Invalid object: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 800
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_b8
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 801
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 802
    const-string v12, ""

    iput-object v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 803
    const-string v12, ""

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 804
    const/4 v12, -0x1

    iput v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    goto/16 :goto_15

    .line 805
    :cond_d0
    iget v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-nez v12, :cond_15

    .line 806
    const-string v12, "1/1"

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 807
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 808
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    goto/16 :goto_15

    .line 811
    .end local v5    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_e2
    return-void

    .end local v2    # "i":I
    .restart local v3    # "i":I
    .restart local v5    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_e3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_5d
.end method

.method public setAutomaticTemporaryUpperCase()V
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 361
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->setAutomaticTemporaryUpperCase()V

    .line 362
    return-void
.end method

.method public setShiftLocked(Z)Z
    .registers 6
    .param p1, "newShiftLockState"    # Z

    .prologue
    .line 278
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 283
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-eqz p1, :cond_3d

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 284
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftLockedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_27
    if-eqz p1, :cond_49

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 289
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 286
    :cond_3d
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 291
    :cond_49
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 296
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_55
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 297
    .restart local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    iget v2, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_81

    .line 298
    if-eqz p1, :cond_97

    .line 299
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_81
    :goto_81
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 305
    if-eqz p1, :cond_a3

    .line 306
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5b

    .line 301
    :cond_97
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_81

    .line 308
    :cond_a3
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5b

    .line 312
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_af
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->setShiftLocked(Z)V

    .line 313
    const/4 v2, 0x1

    return v2
.end method

.method public setShifted(Z)Z
    .registers 5
    .param p1, "newShiftState"    # Z

    .prologue
    .line 325
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 326
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez p1, :cond_33

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v2

    if-nez v2, :cond_33

    .line 327
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 329
    :cond_33
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v2

    if-nez v2, :cond_6

    .line 330
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 336
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_54
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 337
    .restart local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 338
    if-eqz p1, :cond_91

    .line 339
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 345
    if-eqz p1, :cond_9d

    .line 346
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    .line 341
    :cond_91
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7b

    .line 348
    :cond_9d
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    .line 352
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_a9
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v2, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardShiftState;->setShifted(Z)Z

    move-result v2

    return v2
.end method

.method public updateEmojiKeys(I[Ljava/lang/String;II)Z
    .registers 11
    .param p1, "mode"    # I
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "pageNum"    # I
    .param p4, "numPerPage"    # I

    .prologue
    .line 683
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public updateEmojiKeys(I[Ljava/lang/String;III)Z
    .registers 21
    .param p1, "mode"    # I
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "pageNum"    # I
    .param p4, "numPerPage"    # I
    .param p5, "splitType"    # I

    .prologue
    .line 689
    const/4 v9, 0x4

    .line 691
    .local v9, "numInRowSplit":I
    const/4 v13, 0x2

    move/from16 v0, p5

    if-ne v0, v13, :cond_7c

    const/4 v4, 0x4

    .line 693
    .local v4, "i":I
    :goto_7
    const/4 v13, 0x6

    move/from16 v0, p1

    if-eq v0, v13, :cond_7e

    const/4 v2, 0x1

    .line 695
    .local v2, "codeArray":Z
    :goto_d
    move-object/from16 v0, p2

    array-length v13, v0

    div-int v14, v13, p4

    move-object/from16 v0, p2

    array-length v13, v0

    rem-int v13, v13, p4

    if-lez v13, :cond_80

    const/4 v13, 0x1

    :goto_1a
    add-int v12, v14, v13

    .line 696
    .local v12, "totalPages":I
    iget-object v13, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_fc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/inputmethod/keyboard/Key;

    .line 697
    .local v7, "key":Lcom/pantech/inputmethod/keyboard/Key;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 698
    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/Key;->onReleased()V

    .line 700
    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiTab()Z

    move-result v13

    if-eqz v13, :cond_45

    .line 701
    iget v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    add-int/lit8 v14, p1, -0x6b

    if-ne v13, v14, :cond_82

    .line 702
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    .line 708
    :cond_45
    :goto_45
    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v13

    if-eqz v13, :cond_bc

    mul-int v13, p3, p4

    add-int/2addr v13, v4

    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v13, v14, :cond_bc

    .line 709
    if-eqz v2, :cond_93

    .line 710
    mul-int v13, p3, p4

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    add-int/2addr v13, v4

    aget-object v3, p2, v13

    .line 712
    .local v3, "codeArraySpec":Ljava/lang/String;
    const/4 v13, 0x1

    move/from16 v0, p5

    if-ne v0, v13, :cond_87

    rem-int/lit8 v13, v5, 0x4

    if-nez v13, :cond_87

    .line 713
    add-int/lit8 v4, v5, 0x4

    .line 718
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_67
    invoke-static {v3}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->parseLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 719
    .local v8, "label":Ljava/lang/String;
    invoke-static {v3}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->parseCode(Ljava/lang/String;)I

    move-result v1

    .line 720
    .local v1, "code":I
    invoke-static {v3}, Lcom/pantech/inputmethod/keyboard/internal/CodesArrayParser;->parseOutputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 721
    .local v10, "outputText":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 722
    iput v1, v7, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 723
    const/4 v13, 0x0

    iput-object v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto :goto_22

    .line 691
    .end local v1    # "code":I
    .end local v2    # "codeArray":Z
    .end local v3    # "codeArraySpec":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v8    # "label":Ljava/lang/String;
    .end local v10    # "outputText":Ljava/lang/String;
    .end local v12    # "totalPages":I
    :cond_7c
    const/4 v4, 0x0

    goto :goto_7

    .line 693
    .restart local v4    # "i":I
    :cond_7e
    const/4 v2, 0x0

    goto :goto_d

    .line 695
    .restart local v2    # "codeArray":Z
    :cond_80
    const/4 v13, 0x0

    goto :goto_1a

    .line 704
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v12    # "totalPages":I
    :cond_82
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    goto :goto_45

    .line 714
    .end local v4    # "i":I
    .restart local v3    # "codeArraySpec":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_87
    const/4 v13, 0x2

    move/from16 v0, p5

    if-ne v0, v13, :cond_100

    rem-int/lit8 v13, v5, 0x4

    if-nez v13, :cond_100

    .line 715
    add-int/lit8 v4, v5, 0x4

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_67

    .line 726
    .end local v3    # "codeArraySpec":Ljava/lang/String;
    :cond_93
    mul-int v13, p3, p4

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    add-int/2addr v13, v4

    aget-object v11, p2, v13

    .line 728
    .local v11, "textArraySpec":Ljava/lang/String;
    const/4 v13, 0x1

    move/from16 v0, p5

    if-ne v0, v13, :cond_b0

    rem-int/lit8 v13, v5, 0x4

    if-nez v13, :cond_b0

    .line 729
    add-int/lit8 v4, v5, 0x4

    .line 733
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_a5
    invoke-virtual {v7, v11}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 734
    const/16 v13, 0x76d

    iput v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 735
    iput-object v11, v7, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto/16 :goto_22

    .line 730
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_b0
    const/4 v13, 0x2

    move/from16 v0, p5

    if-ne v0, v13, :cond_fe

    rem-int/lit8 v13, v5, 0x4

    if-nez v13, :cond_fe

    .line 731
    add-int/lit8 v4, v5, 0x4

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a5

    .line 737
    .end local v11    # "textArraySpec":Ljava/lang/String;
    :cond_bc
    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiNormal()Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 738
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 739
    const/4 v13, 0x0

    iput v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    .line 740
    const-string v13, ""

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 741
    const/4 v13, 0x0

    iput-object v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto/16 :goto_22

    .line 742
    :cond_d3
    iget v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-nez v13, :cond_22

    .line 743
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, p3, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 744
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 745
    const/4 v13, 0x0

    iput-object v13, v7, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto/16 :goto_22

    .line 748
    .end local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_fc
    const/4 v13, 0x1

    return v13

    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v11    # "textArraySpec":Ljava/lang/String;
    :cond_fe
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a5

    .end local v4    # "i":I
    .end local v11    # "textArraySpec":Ljava/lang/String;
    .restart local v3    # "codeArraySpec":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_100
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_67
.end method

.method public updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z
    .registers 13
    .param p2, "pageNum"    # I
    .param p3, "numPerPage"    # I
    .param p4, "portrait"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IIZ)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 646
    if-eqz p1, :cond_93

    .line 647
    const/4 v4, 0x3

    if-ge p2, v4, :cond_61

    move v2, p2

    .line 648
    .local v2, "newPageNum":I
    :goto_8
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/Key;

    .line 649
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/Key;->isEmojiTab()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 650
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v7, -0x2

    if-ne v4, v7, :cond_64

    .line 651
    invoke-virtual {v1, v5}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    .line 656
    :cond_28
    :goto_28
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v7, 0x76d

    if-lt v4, v7, :cond_68

    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/16 v7, 0x786

    if-gt v4, v7, :cond_68

    mul-int v4, p3, v2

    iget v7, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    add-int/2addr v4, v7

    add-int/lit16 v4, v4, -0x76d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_68

    .line 657
    mul-int v4, p3, v2

    iget v7, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    add-int/2addr v4, v7

    add-int/lit16 v4, v4, -0x76d

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 658
    mul-int v4, p3, v2

    iget v7, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    add-int/2addr v4, v7

    add-int/lit16 v4, v4, -0x76d

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto :goto_e

    .line 647
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v2    # "newPageNum":I
    :cond_61
    add-int/lit8 v2, p2, -0x3

    goto :goto_8

    .line 653
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .restart local v2    # "newPageNum":I
    :cond_64
    invoke-virtual {v1, v6}, Lcom/pantech/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    goto :goto_28

    .line 668
    :cond_68
    iget v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    if-nez v4, :cond_e

    .line 669
    if-ne p4, v5, :cond_8f

    const/4 v3, 0x5

    .line 671
    .local v3, "totalPages":I
    :goto_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/pantech/inputmethod/keyboard/Key;->setLabel(Ljava/lang/CharSequence;)V

    .line 672
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    goto :goto_e

    .line 669
    .end local v3    # "totalPages":I
    :cond_8f
    const/4 v3, 0x4

    goto :goto_6f

    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_91
    move v4, v5

    .line 677
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "newPageNum":I
    :goto_92
    return v4

    :cond_93
    move v4, v6

    goto :goto_92
.end method
