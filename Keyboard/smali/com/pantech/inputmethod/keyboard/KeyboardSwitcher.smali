.class public Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$1;,
        Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;,
        Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z

.field public static final DEBUG_STATE:Z = false

.field private static final KEYBOARD_THEMES:[I

.field public static final KEY_EMOTICON_L:Ljava/lang/String; = "EmoticonL"

.field public static final KEY_EMOTICON_P:Ljava/lang/String; = "EmoticonP"

.field public static final KEY_SYMBOL:Ljava/lang/String; = "Symbol"

.field public static final NUMBER_SYMBOL_PAGE_MAX:I = 0x2

.field private static final NUM_EMOJI_PER_L_PAGE:I = 0x16

.field private static final NUM_EMOJI_PER_PAGE:I = 0x1e

.field private static final NUM_EMOTICONS_L_PER_PAGE:I = 0x16

.field private static final NUM_EMOTICONS_PER_PAGE:I = 0xe

.field private static final NUM_SYMBOLS_L_PER_PAGE:I = 0x19

.field private static final NUM_SYMBOLS_PER_PAGE:I = 0x1a

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout_20110916"

.field private static final SWITCH_STATE_ALPHA:I = 0x0

.field private static final SWITCH_STATE_CHORDING_ALPHA:I = 0x5

.field private static final SWITCH_STATE_CHORDING_SYMBOL:I = 0x6

.field private static final SWITCH_STATE_MOMENTARY_ALPHA_AND_SYMBOL:I = 0x3

.field private static final SWITCH_STATE_MOMENTARY_SYMBOL_AND_MORE:I = 0x4

.field private static final SWITCH_STATE_SYMBOL:I = 0x2

.field private static final SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final XMLTAG_KEY:Ljava/lang/String; = "string"

.field private static mKeyboardHeightBackup:I

.field private static mLayoutSwitchBackSymbols:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;


# instance fields
.field private mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

.field private mCurrentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field private mEditKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEmojiArray:[Ljava/lang/String;

.field private mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEmojiMode:I

.field private mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field protected mEmojis:Ljava/util/HashMap;
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

.field private mEmoticonPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEmoticonPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEncryptedState:Z

.field private mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mEngSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

.field public final mHandler:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;

.field private mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

.field private mInputMode:I

.field private mIsAutoCorrectionActive:Z

.field private mIsHeightControlActivity:Z

.field private mIsLeftHand:Z

.field private mIsNoSettingsKey:Z

.field private mIsNoVoiceKey:Z

.field private mIsWebInputType:Z

.field private final mKeyboardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/inputmethod/keyboard/KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/pantech/inputmethod/keyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

.field private mKorKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mKorSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mLangTemp:I

.field mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mLastSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

.field private mNumPerPage:I

.field private mOneHandMode:I

.field private mPackageName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevInputMode:I

.field private mResources:Landroid/content/res/Resources;

.field private mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

.field private mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

.field private mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

.field private mSwitchState:I

.field private mSymbolKeyState:Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;

.field private mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field private mSymbolPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field protected mSymbols:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThemeContext:Landroid/content/Context;

.field private mThemeIndex:I

.field private mTotalPages:I

.field private mUseLandscapeSplitKeyboard:Z

.field private mWaitPinchInGesture:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    .line 68
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    .line 204
    const/4 v0, 0x0

    sput v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardHeightBackup:I

    .line 213
    new-instance v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    return-void

    .line 72
    :array_20
    .array-data 4
        0x7f0e00f9
        0x7f0e00fa
        0x7f0e00fb
        0x7f0e00fc
        0x7f0e00fd
        0x7f0e00fe
        0x7f0e00ff
        0x7f0e0100
        0x7f0e0101
        0x7f0e0102
        0x7f0e0103
        0x7f0e0104
        0x7f0e0105
        0x7f0e0106
        0x7f0e0107
        0x7f0e0108
        0x7f0e0109
        0x7f0e010a
        0x7f0e010b
        0x7f0e010c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 106
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;

    .line 117
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    .line 121
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mUseLandscapeSplitKeyboard:Z

    .line 128
    iput v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 130
    iput v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrevInputMode:I

    .line 136
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 137
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 138
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 153
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    .line 163
    new-instance v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$1;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    .line 166
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoVoiceKey:Z

    .line 170
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsWebInputType:Z

    .line 174
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEncryptedState:Z

    .line 176
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsHeightControlActivity:Z

    .line 195
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 201
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 207
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    .line 208
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsLeftHand:Z

    .line 215
    new-instance v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mHandler:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;

    .line 312
    return-void
.end method

.method static synthetic access$102(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    return p1
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Landroid/view/inputmethod/EditorInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setDefaultLanguageMode(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEditModeWithInputMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;II)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    return-object v0
.end method

.method private changeFloatingMode(II)V
    .registers 6
    .param p1, "floatingType"    # I
    .param p2, "language"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2372
    if-ne p1, v2, :cond_27

    .line 2373
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2374
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    .line 2376
    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 2386
    :goto_10
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2387
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 2390
    :cond_19
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->startFloatMode(IIZ)V

    .line 2391
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getCurrentKeyboardID()Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 2392
    return-void

    .line 2377
    :cond_27
    const/4 v0, 0x2

    if-ne p1, v0, :cond_31

    .line 2378
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    .line 2379
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    goto :goto_10

    .line 2381
    :cond_31
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    goto :goto_10
.end method

.method private changeKeyboardMode()V
    .registers 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 1119
    :cond_10
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1120
    return-void
.end method

.method private createInputView(IZ)Landroid/view/View;
    .registers 11
    .param p1, "newThemeIndex"    # I
    .param p2, "forceRecreate"    # Z

    .prologue
    .line 1700
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-ne v4, p1, :cond_d

    if-nez p2, :cond_d

    .line 1701
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    .line 1735
    :goto_c
    return-object v4

    .line 1703
    :cond_d
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_16

    .line 1704
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 1706
    :cond_16
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 1707
    .local v2, "oldThemeIndex":I
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->reset()V

    .line 1708
    const/4 v3, 0x1

    .line 1709
    .local v3, "tryGC":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    const/4 v4, 0x5

    if-ge v1, v4, :cond_b3

    if-eqz v3, :cond_b3

    .line 1711
    :try_start_26
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0, v4, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 1712
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/InputView;

    iput-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_3d} :catch_41
    .catch Landroid/view/InflateException; {:try_start_26 .. :try_end_3d} :catch_7a

    .line 1714
    const/4 v3, 0x0

    .line 1709
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1715
    :catch_41
    move-exception v0

    .line 1716
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    .line 1723
    goto :goto_3e

    .line 1719
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_7a
    move-exception v0

    .line 1720
    .local v0, "e":Landroid/view/InflateException;
    sget-object v4, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_3e

    .line 1725
    .end local v0    # "e":Landroid/view/InflateException;
    :cond_b3
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    if-eqz v4, :cond_c4

    .line 1726
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v5, 0x7f100083

    invoke-virtual {v4, v5}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iput-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 1727
    :cond_c4
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_cf

    .line 1728
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v4, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;)V

    .line 1730
    :cond_cf
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getInstance()Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    .line 1731
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->createInputView(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1734
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4, v5}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 1735
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    goto/16 :goto_c
.end method

.method private getActiveKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .registers 3

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2529
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2531
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    goto :goto_11
.end method

.method private getConfigurationLocale()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2108
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2109
    .local v0, "locale":Ljava/lang/String;
    const-string v3, "ko"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2114
    :cond_1c
    :goto_1c
    return v1

    .line 2111
    :cond_1d
    const-string v3, "en"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v5

    .line 2112
    goto :goto_1c
.end method

.method private getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 6
    .param p1, "inputMode"    # I
    .param p2, "languageId"    # I

    .prologue
    const/4 v2, 0x2

    .line 2199
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2200
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1a

    .line 2201
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_17

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2203
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 2245
    :goto_16
    return-object v1

    .line 2205
    :cond_17
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2207
    :cond_1a
    if-ne p2, v2, :cond_2c

    .line 2208
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_29

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2210
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2212
    :cond_29
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2214
    :cond_2c
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3f

    .line 2215
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_3c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2217
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2219
    :cond_3c
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2221
    :cond_3f
    const/4 v1, 0x4

    if-ne p2, v1, :cond_52

    .line 2222
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_4f

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2224
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2226
    :cond_4f
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2228
    :cond_52
    const/4 v1, 0x6

    if-ne p2, v1, :cond_65

    .line 2230
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_62

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2232
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2234
    :cond_62
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2236
    :cond_65
    const/4 v1, 0x5

    if-ne p2, v1, :cond_78

    .line 2238
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_75

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2240
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEditKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2242
    :cond_75
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEditKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16

    .line 2245
    :cond_78
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_16
.end method

.method private getEmojiMode(I)I
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1237
    const/4 v0, -0x1

    .line 1239
    .local v0, "emojiMode":I
    packed-switch p1, :pswitch_data_12

    .line 1259
    const/4 v0, -0x1

    .line 1262
    :goto_5
    return v0

    .line 1241
    :pswitch_6
    const/4 v0, 0x1

    .line 1242
    goto :goto_5

    .line 1244
    :pswitch_8
    const/4 v0, 0x3

    .line 1245
    goto :goto_5

    .line 1247
    :pswitch_a
    const/4 v0, 0x2

    .line 1248
    goto :goto_5

    .line 1250
    :pswitch_c
    const/4 v0, 0x4

    .line 1251
    goto :goto_5

    .line 1253
    :pswitch_e
    const/4 v0, 0x5

    .line 1254
    goto :goto_5

    .line 1256
    :pswitch_10
    const/4 v0, 0x6

    .line 1257
    goto :goto_5

    .line 1239
    :pswitch_data_12
    .packed-switch -0x6a
        :pswitch_6
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public static getF2KeyMode(ZZ)I
    .registers 3
    .param p0, "settingsKeyEnabled"    # Z
    .param p1, "noSettingsKey"    # Z

    .prologue
    .line 1794
    if-eqz p1, :cond_4

    .line 1796
    const/4 v0, 0x2

    .line 1805
    :goto_3
    return v0

    .line 1799
    :cond_4
    if-eqz p0, :cond_8

    .line 1800
    const/4 v0, 0x1

    goto :goto_3

    .line 1805
    :cond_8
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public static getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .registers 1

    .prologue
    .line 307
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 34
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "page"    # I
    .param p3, "isShift"    # Z
    .param p4, "settingsValues"    # Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;
    .param p5, "language"    # I
    .param p6, "voiceKeyEnabled"    # Z
    .param p7, "isSplit"    # Z
    .param p8, "inputMode"    # I

    .prologue
    .line 669
    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v7

    .line 670
    .local v7, "mode":I
    const/4 v3, 0x0

    .line 671
    .local v3, "xmlId":I
    move/from16 v15, p5

    .line 672
    .local v15, "languageId":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v23

    .line 673
    .local v23, "portrait":Z
    packed-switch v7, :pswitch_data_224

    .line 700
    const/4 v1, 0x3

    if-ne v15, v1, :cond_151

    .line 701
    if-eqz p7, :cond_14c

    .line 702
    const v3, 0x7f050045

    .line 793
    :goto_16
    if-eqz p1, :cond_20d

    move-object/from16 v0, p1

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebInputType(I)Z

    move-result v1

    :goto_20
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsWebInputType:Z

    .line 797
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.pantech.inputmethod.skyime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_210

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "com.pantech.inputmethod.skyime.heightControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_210

    const/4 v1, 0x1

    :goto_3d
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsHeightControlActivity:Z

    .line 801
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google.android.setupwizard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google.android.gm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.pantech.inputmethod.skyime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v2, "noSettingsKey"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_a9

    const-string v1, "com.google.android.inputmethod.latin"

    const-string v2, "forceAscii"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_a9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEncryptedState:Z

    if-eqz v1, :cond_213

    :cond_a9
    const/4 v1, 0x1

    :goto_aa
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoSettingsKey:Z

    .line 811
    const/16 v21, 0x0

    .line 812
    .local v21, "hasSettingsKey":Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoSettingsKey:Z

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(ZZ)I

    move-result v11

    .line 813
    .local v11, "f2KeyMode":I
    move/from16 v14, p6

    .line 814
    .local v14, "hasShortcutKey":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v2, "forceAscii"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_d5

    const-string v1, "com.google.android.inputmethod.latin"

    const-string v2, "forceAscii"

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_216

    :cond_d5
    const/16 v20, 0x1

    .line 818
    .local v20, "forceAscii":Z
    :goto_d7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    const-string v2, "AsciiCapable"

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v17

    .line 820
    .local v17, "asciiCapable":Z
    if-eqz v20, :cond_21a

    if-nez v17, :cond_21a

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 822
    .local v4, "locale":Ljava/util/Locale;
    :goto_e7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 823
    .local v18, "conf":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 824
    .local v19, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p4 .. p4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isQwertyLongInput()Z

    move-result v10

    .line 825
    .local v10, "qwertyLongInput":Z
    new-instance v1, Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoSettingsKey:Z

    move-object/from16 v8, p1

    move/from16 v13, p6

    move/from16 v16, p8

    invoke-direct/range {v1 .. v16}, Lcom/pantech/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZZIZZZII)V

    return-object v1

    .line 675
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v10    # "qwertyLongInput":Z
    .end local v11    # "f2KeyMode":I
    .end local v14    # "hasShortcutKey":Z
    .end local v17    # "asciiCapable":Z
    .end local v18    # "conf":Landroid/content/res/Configuration;
    .end local v19    # "dm":Landroid/util/DisplayMetrics;
    .end local v20    # "forceAscii":Z
    .end local v21    # "hasSettingsKey":Z
    :pswitch_11c
    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 676
    .local v22, "model":Ljava/lang/String;
    if-eqz v22, :cond_136

    const-string v1, "K"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 677
    if-eqz p7, :cond_132

    .line 678
    const v3, 0x7f050050

    .line 689
    :goto_12f
    const/4 v15, 0x3

    .line 690
    goto/16 :goto_16

    .line 680
    :cond_132
    const v3, 0x7f050047

    goto :goto_12f

    .line 683
    :cond_136
    if-eqz p7, :cond_13c

    .line 684
    const v3, 0x7f05004f

    goto :goto_12f

    .line 686
    :cond_13c
    const v3, 0x7f05004b

    goto :goto_12f

    .line 692
    .end local v22    # "model":Ljava/lang/String;
    :pswitch_140
    if-eqz p7, :cond_148

    .line 693
    const v3, 0x7f05003d

    .line 697
    :goto_145
    const/4 v15, 0x3

    .line 698
    goto/16 :goto_16

    .line 695
    :cond_148
    const v3, 0x7f050039

    goto :goto_145

    .line 704
    :cond_14c
    const v3, 0x7f050040

    goto/16 :goto_16

    .line 706
    :cond_151
    const/4 v1, 0x4

    if-ne v15, v1, :cond_160

    .line 707
    if-eqz p7, :cond_15b

    .line 708
    const v3, 0x7f050017

    goto/16 :goto_16

    .line 710
    :cond_15b
    const v3, 0x7f050012

    goto/16 :goto_16

    .line 712
    :cond_160
    const/4 v1, 0x6

    if-ne v15, v1, :cond_16f

    .line 714
    if-eqz p7, :cond_16a

    .line 715
    const v3, 0x7f050011

    goto/16 :goto_16

    .line 717
    :cond_16a
    const v3, 0x7f05000c

    goto/16 :goto_16

    .line 719
    :cond_16f
    const/4 v1, 0x2

    if-ne v15, v1, :cond_1ab

    .line 721
    const/16 v24, 0x2

    .line 722
    .local v24, "type":I
    if-eqz v23, :cond_182

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getEngKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v24

    .line 725
    :cond_182
    packed-switch v24, :pswitch_data_22c

    .line 737
    :pswitch_185
    if-eqz p7, :cond_1a7

    .line 738
    const v3, 0x7f050022

    .line 742
    :goto_18a
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 727
    :pswitch_196
    if-eqz p7, :cond_19d

    .line 728
    const v3, 0x7f050022

    goto/16 :goto_16

    .line 730
    :cond_19d
    const v3, 0x7f05001a

    .line 732
    goto/16 :goto_16

    .line 734
    :pswitch_1a2
    const v3, 0x7f050018

    .line 735
    goto/16 :goto_16

    .line 740
    :cond_1a7
    const v3, 0x7f05001a

    goto :goto_18a

    .line 746
    .end local v24    # "type":I
    :cond_1ab
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1f6

    .line 747
    const/16 v24, 0x2

    .line 748
    .restart local v24    # "type":I
    if-eqz v23, :cond_1be

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKorKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v24

    .line 751
    :cond_1be
    packed-switch v24, :pswitch_data_236

    .line 772
    :pswitch_1c1
    if-eqz p7, :cond_1f2

    .line 773
    const v3, 0x7f050033

    .line 777
    :goto_1c6
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 753
    :pswitch_1d2
    const v3, 0x7f050034

    .line 754
    goto/16 :goto_16

    .line 756
    :pswitch_1d7
    const v3, 0x7f050024

    .line 757
    goto/16 :goto_16

    .line 759
    :pswitch_1dc
    const v3, 0x7f050027

    .line 760
    goto/16 :goto_16

    .line 762
    :pswitch_1e1
    if-eqz p7, :cond_1e8

    .line 763
    const v3, 0x7f050033

    goto/16 :goto_16

    .line 765
    :cond_1e8
    const v3, 0x7f050029

    .line 767
    goto/16 :goto_16

    .line 769
    :pswitch_1ed
    const v3, 0x7f05002a

    .line 770
    goto/16 :goto_16

    .line 775
    :cond_1f2
    const v3, 0x7f050029

    goto :goto_1c6

    .line 780
    .end local v24    # "type":I
    :cond_1f6
    const/4 v1, 0x5

    if-ne v15, v1, :cond_1fe

    .line 782
    const v3, 0x7f050009

    goto/16 :goto_16

    .line 785
    :cond_1fe
    const v3, 0x7f050008

    .line 786
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 793
    :cond_20d
    const/4 v1, 0x0

    goto/16 :goto_20

    .line 797
    :cond_210
    const/4 v1, 0x0

    goto/16 :goto_3d

    .line 801
    :cond_213
    const/4 v1, 0x0

    goto/16 :goto_aa

    .line 814
    .restart local v11    # "f2KeyMode":I
    .restart local v14    # "hasShortcutKey":Z
    .restart local v21    # "hasSettingsKey":Z
    :cond_216
    const/16 v20, 0x0

    goto/16 :goto_d7

    .line 820
    .restart local v17    # "asciiCapable":Z
    .restart local v20    # "forceAscii":Z
    :cond_21a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v4

    goto/16 :goto_e7

    .line 673
    :pswitch_data_224
    .packed-switch 0x4
        :pswitch_11c
        :pswitch_140
    .end packed-switch

    .line 725
    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_185
        :pswitch_196
    .end packed-switch

    .line 751
    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1e1
        :pswitch_1d7
        :pswitch_1dc
        :pswitch_1ed
    .end packed-switch
.end method

.method private static getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 361
    .local v0, "themeIndex":I
    if-ltz v0, :cond_11

    :try_start_a
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    array-length v1, v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_10

    if-ge v0, v1, :cond_11

    .line 368
    .end local v0    # "themeIndex":I
    :goto_f
    return v0

    .line 363
    .restart local v0    # "themeIndex":I
    :catch_10
    move-exception v1

    .line 366
    :cond_11
    sget-boolean v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v1, :cond_33

    .line 367
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal keyboard theme in preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_33
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getLandscapeSplitMode()Z
    .registers 2

    .prologue
    .line 2555
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mUseLandscapeSplitKeyboard:Z

    return v0
.end method

.method private getNumEmojiPerPage()I
    .registers 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16

    goto :goto_8
.end method

.method private getPointerCount()I
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_5
.end method

.method private getSwitchState(Lcom/pantech/inputmethod/keyboard/KeyboardId;)I
    .registers 3
    .param p1, "id"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private getSymbolTotalPages()I
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x4

    goto :goto_7
.end method

.method private getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2282
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2283
    .local v0, "resId":I
    if-nez v0, :cond_d

    .line 2284
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2286
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method private getXmlfile(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2258
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 2261
    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_b
    :goto_b
    :try_start_b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "xmlEventType":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_36

    .line 2262
    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 2263
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2264
    .local v0, "attribute":Ljava/lang/String;
    const-string v6, "string"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2265
    const-string v6, "value"

    invoke-direct {p0, v5, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2266
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 2267
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_3a

    goto :goto_b

    .line 2273
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "xmlEventType":I
    :catch_2d
    move-exception v1

    .line 2274
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "SkyIME"

    const-string v7, "Ill-formatted keybaord resource file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_35
    return-object v2

    .line 2272
    .restart local v4    # "xmlEventType":I
    :cond_36
    :try_start_36
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_39} :catch_2d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_35

    .line 2275
    .end local v4    # "xmlEventType":I
    :catch_3a
    move-exception v1

    .line 2276
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SkyIME"

    const-string v7, "Unable to read keyboard resource file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private hideFloatingKeyboard()V
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_9

    .line 2523
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->stopFloatMode()V

    .line 2525
    :cond_9
    return-void
.end method

.method public static init(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/SharedPreferences;)V
    .registers 3
    .param p0, "ims"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 315
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0, p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initInternal(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/SharedPreferences;)V

    .line 316
    return-void
.end method

.method private initInternal(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/SharedPreferences;)V
    .registers 9
    .param p1, "ims"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 320
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    .line 322
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 323
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .line 324
    invoke-static {p1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 325
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 327
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    if-nez v2, :cond_55

    .line 328
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    .line 330
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v3, "Symbol"

    const v4, 0x7f050061

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getXmlfile(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v3, "EmoticonP"

    const v4, 0x7f05005e

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getXmlfile(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v3, "EmoticonL"

    const v4, 0x7f05005f

    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getXmlfile(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_55
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    if-nez v2, :cond_c0

    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    .line 338
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiPeople"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiObjects"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiNature"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiPlaces"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiSymbols"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v3, "EmojiEmoticons"

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_c0
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "cryptState":Ljava/lang/String;
    const-string v0, "1"

    .line 351
    .local v0, "ENCRYPTED_STATE":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEncryptedState:Z

    .line 354
    :cond_d3
    return-void
.end method

.method private initSymbolPage()V
    .registers 2

    .prologue
    .line 1166
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1167
    return-void
.end method

.method private isEditModeWithInputMode(I)Z
    .registers 3
    .param p1, "lang"    # I

    .prologue
    .line 2670
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 2671
    const/4 v0, 0x1

    .line 2673
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static isLayoutSwitchBackCharacter(I)Z
    .registers 3
    .param p0, "c"    # I

    .prologue
    const/4 v0, 0x0

    .line 1596
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1602
    :cond_9
    :goto_9
    return v0

    .line 1599
    :cond_a
    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_9

    .line 1600
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isManualTemporaryUpperCaseFromAuto()Z
    .registers 3

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 936
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 937
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    .line 938
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isNormalA12Keys()Z
    .registers 3

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isNumberKeysOnTopAdded(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1230
    const/4 v0, 0x0

    .line 1232
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    goto :goto_10
.end method

.method private isShiftLockShifted()Z
    .registers 3

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 915
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 916
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftLockShifted()Z

    move-result v1

    .line 917
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static isSpaceCharacter(I)Z
    .registers 2
    .param p0, "c"    # I

    .prologue
    .line 1592
    const/16 v0, 0x20

    if-eq p0, v0, :cond_8

    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private postSetInputView(Landroid/view/View;)V
    .registers 3
    .param p1, "newInputView"    # Landroid/view/View;

    .prologue
    .line 1742
    if-eqz p1, :cond_c

    .line 1743
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setInputView(Landroid/view/View;)V

    .line 1745
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateInputViewShown()V

    .line 1749
    :cond_c
    return-void
.end method

.method private setAutomaticTemporaryUpperCase()V
    .registers 4

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1052
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setAutomaticTemporaryUpperCase()V

    .line 1062
    :cond_c
    :goto_c
    return-void

    .line 1054
    :cond_d
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_c

    .line 1056
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 1057
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v0, :cond_c

    .line 1059
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 1060
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_c
.end method

.method private setContextThemeWrapper(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeIndex"    # I

    .prologue
    .line 372
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-eq v0, p2, :cond_16

    .line 373
    iput p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 374
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    aget v1, v1, p2

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    .line 375
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 377
    :cond_16
    return-void
.end method

.method private setDefaultLanguageMode(Landroid/view/inputmethod/EditorInfo;)V
    .registers 9
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 2045
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-static {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->access$800(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2105
    :goto_b
    return-void

    .line 2056
    :cond_c
    if-eqz p1, :cond_a6

    .line 2058
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v2, 0xff0

    .line 2060
    .local v1, "variation":I
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_48

    invoke-static {v1}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v2

    if-nez v2, :cond_32

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_32

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_32

    const/16 v2, 0x10

    if-ne v1, v2, :cond_48

    :cond_32
    move v2, v3

    :goto_33
    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoVoiceKey:Z

    if-eqz v2, :cond_4f

    .line 2065
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2066
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_b

    .line 2060
    :cond_48
    const/4 v2, 0x0

    goto :goto_33

    .line 2068
    :cond_4a
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_b

    .line 2074
    :cond_4f
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v3, :cond_5f

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2076
    iput-boolean v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoVoiceKey:Z

    .line 2080
    :cond_5f
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_a6

    .line 2082
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v4, "nm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoVoiceKey:Z

    .line 2083
    const-string v2, "com.pantech.skyime.mode=engu"

    invoke-static {v5, v2, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "com.pantech.skyime.mode=engl"

    invoke-static {v5, v2, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2086
    :cond_7d
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto :goto_b

    .line 2088
    :cond_86
    const-string v2, "com.pantech.skyime.mode=kor"

    invoke-static {v5, v2, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2090
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto/16 :goto_b

    .line 2092
    :cond_98
    const-string v2, "com.pantech.skyime.mode=num"

    invoke-static {v5, v2, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2094
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto/16 :goto_b

    .line 2099
    .end local v1    # "variation":I
    :cond_a6
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getConfigurationLocale()I

    move-result v0

    .line 2100
    .local v0, "localeLanguage":I
    if-eq v0, v3, :cond_ae

    if-ne v0, v6, :cond_b8

    .line 2101
    :cond_ae
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto/16 :goto_b

    .line 2103
    :cond_b8
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    goto/16 :goto_b
.end method

.method private setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v0

    sput v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardHeightBackup:I

    .line 541
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 543
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/InputView;->setKeyboardGeometry(I)V

    .line 544
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 545
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getSwitchState(Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 546
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftLockState(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 547
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v1

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 550
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getRepeatKeyInterval(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setRepeatKeyInterval(I)V

    .line 553
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 556
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateOneHandImage()V

    .line 558
    return-void
.end method

.method private setLandscapeSplitMode(Z)V
    .registers 3
    .param p1, "use"    # Z

    .prologue
    .line 2549
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2550
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mUseLandscapeSplitKeyboard:Z

    .line 2552
    :cond_8
    return-void
.end method

.method private setManualEnglishShifteMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 980
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 981
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setManualEnglishShifteMode()V

    .line 998
    :cond_d
    :goto_d
    return-void

    .line 983
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 984
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_d

    .line 985
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 986
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 987
    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 988
    invoke-virtual {v0, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 995
    :goto_26
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_d

    .line 990
    :cond_2c
    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    goto :goto_26

    .line 993
    :cond_30
    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    goto :goto_26
.end method

.method private setManualTemporaryUpperCase(Z)V
    .registers 5
    .param p1, "shifted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 951
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v2, :cond_d

    .line 952
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setManualTemporaryUpperCase(Z)V

    .line 977
    :cond_c
    :goto_c
    return-void

    .line 955
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 956
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_c

    .line 965
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    if-nez v1, :cond_30

    if-nez p1, :cond_30

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->useMultitouchShift()Z

    move-result v1

    if-ne v1, v2, :cond_30

    .line 968
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 970
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 972
    :cond_30
    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 973
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_c
.end method

.method private setShiftLocked(Z)V
    .registers 5
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1002
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setShiftLocked(Z)V

    .line 1010
    :cond_c
    :goto_c
    return-void

    .line 1005
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1006
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1007
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_c
.end method

.method private switchEmojiPage(I)V
    .registers 8
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x1

    .line 1838
    if-nez p1, :cond_f

    .line 1839
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-nez v1, :cond_b

    .line 1840
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiRecentsMode(Z)V

    .line 1885
    :cond_a
    :goto_a
    return-void

    .line 1842
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiMode()V

    goto :goto_a

    .line 1847
    :cond_f
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_a

    .line 1853
    const/16 v1, -0x6f

    if-ne p1, v1, :cond_45

    .line 1854
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1855
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    if-lt v1, v2, :cond_2b

    .line 1856
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1867
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v3, :cond_62

    .line 1868
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_a

    .line 1869
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateEmojiKeys(I[Ljava/lang/String;II)V

    goto :goto_a

    .line 1857
    :cond_45
    const/16 v1, -0x6e

    if-ne p1, v1, :cond_5a

    .line 1858
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1859
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    if-gez v1, :cond_2b

    .line 1860
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    goto :goto_2b

    .line 1861
    :cond_5a
    const/16 v1, -0x72

    if-ne p1, v1, :cond_2b

    .line 1862
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    goto :goto_2b

    .line 1875
    :cond_62
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_85

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1876
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1881
    .local v0, "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_74
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    .line 1883
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_a

    .line 1878
    .end local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_85
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_74
.end method

.method private switchEmoticonPage(I)V
    .registers 8
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x1

    .line 1938
    const/16 v1, -0x6f

    if-ne p1, v1, :cond_15

    .line 1939
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1940
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    if-lt v1, v2, :cond_30

    .line 1941
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    .line 1980
    :cond_14
    :goto_14
    return-void

    .line 1944
    :cond_15
    const/16 v1, -0x6e

    if-ne p1, v1, :cond_29

    .line 1945
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1947
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 1948
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    goto :goto_14

    .line 1951
    :cond_29
    const/16 v1, -0x72

    if-ne p1, v1, :cond_30

    .line 1952
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1955
    :cond_30
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v3, :cond_4a

    .line 1956
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_14

    .line 1957
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V

    goto :goto_14

    .line 1963
    :cond_4a
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v1, v3, :cond_78

    .line 1964
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_71

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1965
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1976
    .local v0, "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_60
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 1978
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_14

    .line 1967
    .end local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_71
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_60

    .line 1970
    .end local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_78
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1971
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_60

    .line 1973
    .end local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_8b
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_60
.end method

.method private switchFloatingModeWithGesture(I)V
    .registers 4
    .param p1, "keyboardId"    # I

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 2368
    :goto_9
    return-void

    .line 2358
    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_23

    .line 2359
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    .line 2363
    :cond_13
    :goto_13
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 2364
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    goto :goto_9

    .line 2360
    :cond_23
    const/4 v0, 0x6

    if-ne p1, v0, :cond_13

    .line 2361
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mWaitPinchInGesture:I

    goto :goto_13

    .line 2366
    :cond_2d
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mHandler:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$UIHandler;->startWaitPinchInGesture()V

    goto :goto_9
.end method

.method private switchNumSymbolPage(I)V
    .registers 8
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x1

    .line 1890
    const/16 v1, -0x6f

    if-ne p1, v1, :cond_37

    .line 1891
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1892
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    if-lt v1, v2, :cond_2e

    .line 1893
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1909
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v3, :cond_57

    .line 1910
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_2d

    .line 1911
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V

    .line 1935
    :cond_2d
    :goto_2d
    return-void

    .line 1894
    :cond_2e
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1895
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmoticonMode()V

    goto :goto_2d

    .line 1898
    :cond_37
    const/16 v1, -0x6e

    if-ne p1, v1, :cond_4f

    .line 1899
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1900
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    if-gez v1, :cond_14

    .line 1901
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1902
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmoticonMode()V

    goto :goto_2d

    .line 1905
    :cond_4f
    const/16 v1, -0x72

    if-ne p1, v1, :cond_14

    .line 1906
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    goto :goto_14

    .line 1916
    :cond_57
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v1, v3, :cond_85

    .line 1917
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1918
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1931
    .local v0, "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_6d
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 1933
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_2d

    .line 1921
    .end local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_7e
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_6d

    .line 1924
    .end local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_85
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_98

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1925
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_6d

    .line 1927
    .end local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_98
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_6d
.end method

.method private updateOneHandImage()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 562
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 563
    .local v0, "iconType":I
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    if-eqz v5, :cond_4b

    move v3, v4

    .line 564
    .local v3, "useOneHand":Z
    :goto_e
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    if-eqz v5, :cond_4a

    if-ne v3, v4, :cond_4a

    .line 565
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v6, 0x7f1000ae

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 566
    .local v1, "imgBtnLeft":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    const v6, 0x7f1000af

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 567
    .local v2, "imgBtnRight":Landroid/widget/ImageButton;
    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    .line 569
    if-eq v0, v4, :cond_3e

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3e

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3e

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3e

    const/16 v4, 0x9

    if-ne v0, v4, :cond_4d

    .line 572
    :cond_3e
    const v4, 0x7f0200a9

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 573
    const v4, 0x7f0200ad

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 587
    .end local v1    # "imgBtnLeft":Landroid/widget/ImageButton;
    .end local v2    # "imgBtnRight":Landroid/widget/ImageButton;
    :cond_4a
    :goto_4a
    return-void

    .line 563
    .end local v3    # "useOneHand":Z
    :cond_4b
    const/4 v3, 0x0

    goto :goto_e

    .line 574
    .restart local v1    # "imgBtnLeft":Landroid/widget/ImageButton;
    .restart local v2    # "imgBtnRight":Landroid/widget/ImageButton;
    .restart local v3    # "useOneHand":Z
    :cond_4d
    const/4 v4, 0x2

    if-eq v0, v4, :cond_57

    const/4 v4, 0x3

    if-eq v0, v4, :cond_57

    const/16 v4, 0xa

    if-ne v0, v4, :cond_64

    .line 576
    :cond_57
    const v4, 0x7f0200a7

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 577
    const v4, 0x7f0200ab

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4a

    .line 578
    :cond_64
    const/4 v4, 0x5

    if-ne v0, v4, :cond_74

    .line 579
    const v4, 0x7f0200aa

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 580
    const v4, 0x7f0200ae

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4a

    .line 581
    :cond_74
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4a

    .line 582
    const v4, 0x7f0200a8

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 583
    const v4, 0x7f0200ac

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4a
.end method

.method private updateShiftLockState(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 4
    .param p1, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 606
    :cond_e
    return-void
.end method


# virtual methods
.method public clearEditMode()V
    .registers 3

    .prologue
    .line 2185
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->clearEditModeState()V

    .line 2186
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2187
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isOneHandLayout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 2191
    :cond_15
    return-void
.end method

.method public clearKeyboardCache()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 384
    :cond_9
    return-void
.end method

.method public clearPreference()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2651
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->restore()V

    .line 2652
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 2653
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2654
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2656
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "theme_type"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 2659
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    .line 2661
    :cond_2b
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_34

    .line 2662
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->initFloatingPositionForVITA()V

    .line 2665
    :cond_34
    return-void
.end method

.method public closeFloatingResource()V
    .registers 2

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_9

    .line 2536
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->closeResource()V

    .line 2538
    :cond_9
    return-void
.end method

.method public dimKeyboard(Z)V
    .registers 3
    .param p1, "dim"    # Z

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_9

    .line 2695
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->dimKeyboard(Z)V

    .line 2697
    :cond_9
    return-void
.end method

.method public enableModeChange()Z
    .registers 2

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->enableModeChange()Z

    move-result v0

    return v0
.end method

.method public enableOneHandMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2561
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v0, v2, :cond_2f

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2562
    if-eqz p1, :cond_1f

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    if-nez v0, :cond_1f

    .line 2563
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsLeftHand:Z

    if-eqz v0, :cond_1a

    .line 2564
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    .line 2576
    :goto_19
    return-void

    .line 2566
    :cond_1a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    goto :goto_19

    .line 2568
    :cond_1f
    if-nez p1, :cond_29

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    if-eqz v0, :cond_29

    .line 2569
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    goto :goto_19

    .line 2571
    :cond_29
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    goto :goto_19

    .line 2574
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    goto :goto_19
.end method

.method public getEmojiArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmojiMode()I
    .registers 2

    .prologue
    .line 2614
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    return v0
.end method

.method public getFloatingMoveLastX()F
    .registers 2

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_b

    .line 2681
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getFloatingMoveLastX()F

    move-result v0

    .line 2683
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloatingMoveLastY()F
    .registers 2

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_b

    .line 2688
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getFloatingMoveLastY()F

    move-result v0

    .line 2690
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    return-object v0
.end method

.method public getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    .registers 12
    .param p1, "id"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 609
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 610
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/pantech/inputmethod/keyboard/LatinKeyboard;>;"
    if-nez v3, :cond_d5

    move-object v2, v6

    .line 611
    .local v2, "keyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :goto_d
    if-nez v2, :cond_f0

    .line 612
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    iget-object v7, p1, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-static {v5, v7}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 614
    .local v4, "savedLocale":Ljava/util/Locale;
    :try_start_17
    new-instance v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->supportHeightResizing()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_de

    .line 620
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    iget-object v7, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->getHeightType()I

    move-result v7

    invoke-virtual {v0, p1, v5, v7}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;

    .line 624
    :goto_30
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    const-string v7, "SupportTouchPositionCorrection"

    invoke-virtual {v5, v7}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->setTouchPositionCorrectionEnabled(Z)V

    .line 627
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->build()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_e6

    move-result-object v2

    .line 629
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v4}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 631
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-boolean v5, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v5, :cond_98

    .line 634
    sget-object v7, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyboard cache size="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_ed

    const-string v5, "LOAD"

    :goto_73
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " theme="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v8}, Lcom/pantech/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v0    # "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v4    # "savedLocale":Ljava/util/Locale;
    :cond_98
    :goto_98
    invoke-virtual {v2, v9}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 643
    invoke-virtual {v2, v9}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 650
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v5

    invoke-virtual {v2, v5, v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 653
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isHeightControlActivity()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->updateFunctionKey(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isNoSettingsKey()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->updateSettingKey(Z)V

    .line 656
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    if-eqz v5, :cond_d4

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    if-eqz v5, :cond_d4

    .line 657
    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 658
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    const-string v5, "com.pantech.skyime.useActionKeyLabel"

    invoke-static {v6, v5, v1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 659
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->updateActionKey(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 662
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_d4
    return-object v2

    .line 610
    .end local v2    # "keyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    :cond_d5
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-object v2, v5

    goto/16 :goto_d

    .line 622
    .restart local v0    # "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    .restart local v2    # "keyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    .restart local v4    # "savedLocale":Ljava/util/Locale;
    :cond_de
    :try_start_de
    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v5, v7}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_e6

    goto/16 :goto_30

    .line 629
    .end local v0    # "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    :catchall_e6
    move-exception v5

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v6, v4}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    throw v5

    .line 634
    .restart local v0    # "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    :cond_ed
    const-string v5, "GCed"

    goto :goto_73

    .line 638
    .end local v0    # "builder":Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v4    # "savedLocale":Ljava/util/Locale;
    :cond_f0
    sget-boolean v5, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v5, :cond_98

    .line 639
    sget-object v5, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyboard cache size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": HIT  id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " theme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v8}, Lcom/pantech/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_98
.end method

.method public getKeyboardHeightBackup()I
    .registers 2

    .prologue
    .line 592
    sget v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardHeightBackup:I

    return v0
.end method

.method public getKeyboardLanguage()I
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyboardMode()I
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .registers 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    .registers 4

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getActiveKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 891
    .local v1, "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v1, :cond_11

    .line 892
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 893
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    instance-of v2, v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    if-eqz v2, :cond_11

    .line 894
    check-cast v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    .line 896
    .end local v0    # "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getNumPerPage()I
    .registers 2

    .prologue
    .line 2608
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    return v0
.end method

.method public getNumSymlist()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOneHandMode()I
    .registers 2

    .prologue
    .line 2579
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    return v0
.end method

.method public getPageNum()I
    .registers 2

    .prologue
    .line 2604
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .registers 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public initNumberSymbolList()V
    .registers 3

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v1, "Symbol"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    .line 2462
    const/16 v0, 0x1a

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 2463
    return-void
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .registers 3

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 922
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 923
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    .line 924
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isEnglishMode()Z
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFloatingMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2496
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v2

    if-ne v2, v1, :cond_11

    .line 2509
    :cond_10
    :goto_10
    return v0

    .line 2502
    :cond_11
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-eq v2, v1, :cond_24

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_24

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_24

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    :cond_24
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 2507
    goto :goto_10
.end method

.method public isFloatingMoveMode()Z
    .registers 2

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_b

    .line 2702
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->isFloatingMoveMode()Z

    move-result v0

    .line 2704
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isHeightControlActivity()Z
    .registers 2

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsHeightControlActivity:Z

    return v0
.end method

.method public isInMomentarySwitchState()Z
    .registers 3

    .prologue
    .line 1575
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInputViewShown()Z
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/InputView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isKeyboardAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 880
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_e

    .line 881
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 882
    :cond_e
    return v0
.end method

.method public isKeyboardInputMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 886
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isKoreanMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 845
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-nez v2, :cond_11

    .line 846
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    :goto_10
    return v1

    :cond_11
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v2

    if-ne v2, v0, :cond_1b

    :goto_19
    move v1, v0

    goto :goto_10

    :cond_1b
    move v0, v1

    goto :goto_19
.end method

.method public isLandscapeFloatingSingleMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2513
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-eq v1, v0, :cond_10

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    :cond_10
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v1

    if-eqz v1, :cond_19

    .line 2518
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isManualTemporaryUpperCase()Z
    .registers 3

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 929
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 930
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    .line 931
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isMultitapKeyboard()Z
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isMultitapKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNoSettingsKey()Z
    .registers 2

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoSettingsKey:Z

    return v0
.end method

.method public isNoVoiceKey()Z
    .registers 2

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsNoVoiceKey:Z

    return v0
.end method

.method public isNumberPhoneMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2710
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberPhoneKeyboard()Z

    move-result v1

    if-ne v1, v0, :cond_a

    .line 2713
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPortrait()Z
    .registers 3

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 2293
    const/4 v0, 0x0

    .line 2295
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isQwertyKeyboard()Z
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShiftLocked()Z
    .registers 3

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 908
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 909
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    .line 910
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 3

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 901
    .local v0, "latinKeyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_b

    .line 902
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    .line 903
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isSimpleQwertyKeyboard()Z
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isSimpleQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSymOrEmoOrEmojiMode()Z
    .registers 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isSymbolOrEmoticonMode()Z
    .registers 3

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .registers 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isWebViewType()Z
    .registers 2

    .prologue
    .line 2719
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsWebInputType:Z

    return v0
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "settingsValues"    # Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    .prologue
    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;Z)V

    .line 391
    return-void
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;Z)V
    .registers 16
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "settingsValues"    # Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;
    .param p3, "refresh"    # Z

    .prologue
    .line 394
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 395
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLastSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    .line 399
    :try_start_4
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v1, "noMicrophoneKey"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    const-string v1, "nm"

    invoke-static {v0, v1, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_f7

    :cond_17
    const/4 v10, 0x1

    .line 407
    .local v10, "noMicrophone":Z
    :goto_18
    invoke-virtual {p2, p1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_fa

    if-nez v10, :cond_fa

    const/4 v6, 0x1

    .line 409
    .local v6, "voiceKeyEnabled":Z
    :goto_21
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 411
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 413
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 417
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 420
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1KeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 423
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEditKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 427
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKorSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 429
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngSplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 431
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 433
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmoticonPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 436
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;IZLcom/pantech/inputmethod/skyime/settings/SkySettingsValues;IZZI)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 442
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v11

    .line 448
    .local v11, "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSymbolOrEmoticonMode()Z

    move-result v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v0

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberKeyboard()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 450
    if-eqz p3, :cond_fd

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    .line 472
    :goto_ec
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->restore()V

    .line 476
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0, p1, v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 485
    .end local v6    # "voiceKeyEnabled":Z
    .end local v10    # "noMicrophone":Z
    .end local v11    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_f6
    return-void

    .line 399
    :cond_f7
    const/4 v10, 0x0

    goto/16 :goto_18

    .line 407
    .restart local v10    # "noMicrophone":Z
    :cond_fa
    const/4 v6, 0x0

    goto/16 :goto_21

    .line 453
    .restart local v6    # "voiceKeyEnabled":Z
    .restart local v11    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_fd
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 454
    invoke-direct {p0, v11}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    :try_end_10d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_10d} :catch_10e

    goto :goto_ec

    .line 481
    .end local v6    # "voiceKeyEnabled":Z
    .end local v10    # "noMicrophone":Z
    .end local v11    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :catch_10e
    move-exception v9

    .line 482
    .local v9, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading keyboard failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f6

    .line 456
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "voiceKeyEnabled":Z
    .restart local v10    # "noMicrophone":Z
    .restart local v11    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_12a
    :try_start_12a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_153

    .line 457
    if-eqz p3, :cond_138

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiPage(I)V

    goto :goto_ec

    .line 461
    :cond_138
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-eqz v0, :cond_14d

    .line 462
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    .line 466
    :goto_149
    invoke-direct {p0, v11}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_ec

    .line 464
    :cond_14d
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v11, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_149

    .line 469
    :cond_153
    invoke-direct {p0, v11}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    :try_end_156
    .catch Ljava/lang/RuntimeException; {:try_start_12a .. :try_end_156} :catch_10e

    goto :goto_ec
.end method

.method public onAutoCorrectionStateChanged(Z)V
    .registers 3
    .param p1, "isAutoCorrection"    # Z

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    if-eq v0, p1, :cond_6

    .line 1789
    iput-boolean p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 1791
    :cond_6
    return-void
.end method

.method public onCancelInput()V
    .registers 3

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1566
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1567
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 1572
    :cond_f
    :goto_f
    return-void

    .line 1568
    :cond_10
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 1569
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_f
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 3

    .prologue
    .line 1696
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v0, :cond_9

    .line 2543
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->onDestroy()V

    .line 2545
    :cond_9
    return-void
.end method

.method public onFinishInputView()V
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 529
    return-void
.end method

.method public onHideWindow()V
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 536
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->hideFloatingKeyboard()V

    .line 537
    return-void
.end method

.method public onKey(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1613
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    packed-switch v0, :pswitch_data_64

    .line 1689
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1625
    :pswitch_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1c

    .line 1628
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEngKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1631
    :cond_19
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1633
    :cond_1c
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_26

    .line 1640
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 1646
    :cond_26
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1650
    :pswitch_2a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_30

    .line 1653
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1654
    :cond_30
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 1659
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 1660
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1666
    :cond_3c
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7

    .line 1670
    :pswitch_40
    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_4a

    if-ltz p1, :cond_4a

    .line 1671
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 1675
    :cond_4a
    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1676
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 1684
    :pswitch_54
    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1685
    :cond_60
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_7

    .line 1613
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_40
        :pswitch_54
        :pswitch_8
        :pswitch_2a
        :pswitch_7
        :pswitch_54
    .end packed-switch
.end method

.method public onOtherKeyPressed()V
    .registers 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onOtherKeyPressed()V

    .line 1559
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->onOtherKeyPressed()V

    .line 1560
    return-void
.end method

.method public onPressShift(Z)V
    .registers 5
    .param p1, "withSliding"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1448
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1487
    :goto_7
    return-void

    .line 1451
    :cond_8
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 1456
    .local v0, "shiftKeyState":Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1457
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1462
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 1463
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_7

    .line 1464
    :cond_1d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1468
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 1469
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_7

    .line 1470
    :cond_2a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1474
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onPressOnShifted()V

    goto :goto_7

    .line 1478
    :cond_34
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 1479
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_7

    .line 1483
    :cond_3b
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 1484
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 1485
    const/4 v1, 0x4

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_7
.end method

.method public onReleaseShift(Z)V
    .registers 5
    .param p1, "withSliding"    # Z

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1536
    :goto_6
    return-void

    .line 1493
    :cond_7
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 1499
    .local v0, "shiftKeyState":Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1500
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1502
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 1535
    :cond_18
    :goto_18
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_6

    .line 1503
    :cond_1c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLockShifted()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz p1, :cond_18

    .line 1506
    :cond_30
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_47

    if-nez p1, :cond_47

    .line 1509
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 1515
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->startIgnoringDoubleTap()V

    goto :goto_18

    .line 1516
    :cond_47
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v1

    if-eqz v1, :cond_59

    if-nez p1, :cond_59

    .line 1519
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18

    .line 1520
    :cond_59
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez p1, :cond_18

    .line 1525
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18

    .line 1531
    :cond_6b
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_18

    .line 1532
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_18
.end method

.method public onReleaseSymbol()V
    .registers 3

    .prologue
    .line 1546
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 1547
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 1549
    :cond_8
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 1550
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1752
    const-string v1, "pref_keyboard_layout_20110916"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1753
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1754
    .local v0, "themeIndex":I
    invoke-direct {p0, v0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    .line 1785
    .end local v0    # "themeIndex":I
    :cond_16
    :goto_16
    return-void

    .line 1755
    :cond_17
    const-string v1, "theme_type"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1756
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v1, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1759
    .restart local v0    # "themeIndex":I
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-eq v0, v1, :cond_16

    .line 1760
    invoke-direct {p0, v0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    goto :goto_16

    .line 1762
    .end local v0    # "themeIndex":I
    :cond_31
    const-string v1, "height_type"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_width"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_height"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_width_landscape"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_height_landscape"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_floating_width"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "custom_floating_height"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1778
    :cond_69
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->clearKeyboardCache()V

    .line 1779
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1780
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateFloatingWindows()V

    goto :goto_16

    .line 1782
    :cond_78
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLastSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;Z)V

    goto :goto_16
.end method

.method public resetInputMode()V
    .registers 1

    .prologue
    .line 2627
    return-void
.end method

.method public saveKeyboardState()V
    .registers 5

    .prologue
    .line 492
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/InputView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 493
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->save()V

    .line 497
    :cond_11
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v2, :cond_43

    .line 499
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v1

    .line 501
    .local v1, "supportPortFloatingMode":Z
    const/4 v0, 0x1

    .line 502
    .local v0, "enabel":Z
    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v2

    if-nez v2, :cond_25

    .line 503
    const/4 v0, 0x0

    .line 505
    :cond_25
    if-eqz v0, :cond_43

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_39

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_43

    .line 509
    :cond_39
    if-nez v1, :cond_3e

    .line 510
    const/4 v2, 0x1

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 512
    :cond_3e
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->save()V

    .line 516
    .end local v0    # "enabel":Z
    .end local v1    # "supportPortFloatingMode":Z
    :cond_43
    return-void
.end method

.method public setFloatingLanguage(I)V
    .registers 3
    .param p1, "language"    # I

    .prologue
    .line 2484
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2488
    :goto_6
    return-void

    .line 2487
    :cond_7
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    goto :goto_6
.end method

.method public setOneHandMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 2583
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    if-eq v0, p1, :cond_10

    .line 2584
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mOneHandMode:I

    .line 2585
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 2586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsLeftHand:Z

    .line 2592
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->clearKeyboardCache()V

    .line 2594
    :cond_10
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setOneHandButtonsShown(I)V

    .line 2595
    return-void

    .line 2587
    :cond_16
    if-ne p1, v1, :cond_d

    .line 2588
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mIsLeftHand:Z

    goto :goto_d
.end method

.method public swipeLeftForFloating(I)V
    .registers 4
    .param p1, "inputMode"    # I

    .prologue
    const/4 v1, 0x6

    .line 2174
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2175
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2179
    :cond_e
    :goto_e
    return-void

    .line 2176
    :cond_f
    if-ne p1, v1, :cond_e

    .line 2177
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchFloatingModeWithGesture(I)V

    goto :goto_e
.end method

.method public swipeRightForFloating(I)V
    .registers 4
    .param p1, "inputMode"    # I

    .prologue
    const/4 v1, 0x5

    .line 2166
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2167
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2171
    :cond_e
    :goto_e
    return-void

    .line 2168
    :cond_f
    if-ne p1, v1, :cond_e

    .line 2169
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchFloatingModeWithGesture(I)V

    goto :goto_e
.end method

.method public switchEditMode()V
    .registers 3

    .prologue
    .line 1999
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->setEditModeState(I)V

    .line 2000
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionIfAreadySelected()V

    .line 2001
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/pantech/inputmethod/skyime/InputView;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/Edit;->showOverlayPopup(Lcom/pantech/inputmethod/skyime/InputView;)V

    .line 2002
    return-void
.end method

.method public switchEmojiMode()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1266
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1267
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 1268
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    array-length v1, v1

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    div-int v3, v1, v3

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    array-length v1, v1

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    rem-int/2addr v1, v4

    if-lez v1, :cond_3b

    move v1, v2

    :goto_1a
    add-int/2addr v1, v3

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 1270
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v2, :cond_3d

    .line 1271
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_3a

    .line 1272
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1273
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateEmojiKeys(I[Ljava/lang/String;II)V

    .line 1288
    :cond_3a
    :goto_3a
    return-void

    .line 1268
    :cond_3b
    const/4 v1, 0x0

    goto :goto_1a

    .line 1278
    :cond_3d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_60

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1279
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1284
    .local v0, "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_4f
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    .line 1286
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_3a

    .line 1281
    .end local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_60
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_4f
.end method

.method public switchEmojiMode(I)V
    .registers 9
    .param p1, "code"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    .line 1291
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getEmojiMode(I)I

    move-result v1

    .line 1292
    .local v1, "newEmojiMode":I
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-ne v2, v1, :cond_b

    .line 1337
    :cond_a
    :goto_a
    return-void

    .line 1295
    :cond_b
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    .line 1297
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1298
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 1300
    packed-switch p1, :pswitch_data_b4

    .line 1323
    :goto_19
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    array-length v2, v2

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    div-int v4, v2, v4

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    array-length v2, v2

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    rem-int/2addr v2, v5

    if-lez v2, :cond_97

    move v2, v3

    :goto_29
    add-int/2addr v2, v4

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 1325
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v2

    if-ne v2, v3, :cond_99

    .line 1326
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v2, :cond_a

    .line 1327
    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1328
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateEmojiKeys(I[Ljava/lang/String;II)V

    goto :goto_a

    .line 1302
    :pswitch_49
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiPeople"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1305
    :pswitch_56
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiNature"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1308
    :pswitch_63
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiObjects"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1311
    :pswitch_70
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiPlaces"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1314
    :pswitch_7d
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiSymbols"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1317
    :pswitch_8a
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojis:Ljava/util/HashMap;

    const-string v4, "EmojiEmoticons"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    goto :goto_19

    .line 1323
    :cond_97
    const/4 v2, 0x0

    goto :goto_29

    .line 1331
    :cond_99
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1333
    .local v0, "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    .line 1334
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto/16 :goto_a

    .line 1300
    nop

    :pswitch_data_b4
    .packed-switch -0x6a
        :pswitch_49
        :pswitch_63
        :pswitch_56
        :pswitch_70
        :pswitch_7d
        :pswitch_8a
    .end packed-switch
.end method

.method public switchEmojiRecentsMode(Z)V
    .registers 6
    .param p1, "forceSwitch"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1340
    if-nez p1, :cond_9

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-nez v1, :cond_9

    .line 1363
    :cond_8
    :goto_8
    return-void

    .line 1343
    :cond_9
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    .line 1344
    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    .line 1345
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 1347
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-ne v1, v3, :cond_25

    .line 1348
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_8

    .line 1349
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1350
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_8

    .line 1354
    :cond_25
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1355
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiPage1SplitKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1359
    .local v0, "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_37
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    .line 1360
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_8

    .line 1357
    .end local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_40
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiKeyboardId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0    # "emojiKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_37
.end method

.method public switchEmoticonMode()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 1370
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getSymbolTotalPages()I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 1371
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1372
    const/16 v1, 0xe

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 1373
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v2, "EmoticonP"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    .line 1379
    :goto_1d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4c

    .line 1380
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_3a

    .line 1381
    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1382
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V

    .line 1390
    :cond_3a
    :goto_3a
    return-void

    .line 1375
    :cond_3b
    const/16 v1, 0x16

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    .line 1376
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mSymbols:Ljava/util/HashMap;

    const-string v2, "EmoticonL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    goto :goto_1d

    .line 1385
    :cond_4c
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v1, v5}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1386
    .local v0, "emoticonKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 1387
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 1388
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v1, v5}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_3a
.end method

.method public switchEngKorMode()V
    .registers 2

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1159
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchKoreanMode()V

    .line 1163
    :goto_9
    return-void

    .line 1161
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEnglishMode()V

    goto :goto_9
.end method

.method public switchEnglishMode()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1141
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1142
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1146
    :goto_b
    return-void

    .line 1144
    :cond_c
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_b
.end method

.method public switchFloatingMode()V
    .registers 12

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 2399
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v4

    if-nez v4, :cond_66

    .line 2400
    const/4 v1, 0x1

    .line 2401
    .local v1, "floatType":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    .line 2402
    .local v0, "curLanguage":I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v4

    if-ne v4, v8, :cond_1f

    .line 2403
    const/4 v1, 0x2

    .line 2405
    :cond_1f
    invoke-virtual {p0, v7}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setOneHandMode(I)V

    .line 2406
    invoke-direct {p0, v1, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    .line 2408
    if-ne v0, v6, :cond_34

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isNumberKeysOnTopAdded(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2410
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initNumberSymbolList()V

    .line 2412
    :cond_34
    if-eq v0, v6, :cond_38

    if-ne v0, v9, :cond_48

    .line 2414
    :cond_38
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v7, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V

    .line 2458
    .end local v0    # "curLanguage":I
    .end local v1    # "floatType":I
    :cond_47
    :goto_47
    return-void

    .line 2416
    .restart local v0    # "curLanguage":I
    .restart local v1    # "floatType":I
    :cond_48
    if-ne v0, v10, :cond_47

    .line 2417
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-nez v4, :cond_56

    .line 2418
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v4, v5}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_47

    .line 2420
    :cond_56
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v7, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateEmojiKeys(I[Ljava/lang/String;II)V

    goto :goto_47

    .line 2424
    .end local v0    # "curLanguage":I
    .end local v1    # "floatType":I
    :cond_66
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v4

    if-eqz v4, :cond_47

    .line 2425
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 2426
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v4

    if-ne v4, v8, :cond_bf

    .line 2427
    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    .line 2432
    :cond_7f
    :goto_7f
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getLanguage()I

    move-result v0

    .line 2433
    .restart local v0    # "curLanguage":I
    invoke-direct {p0, v7, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    .line 2434
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->isOneHandLayout()Z

    move-result v3

    .line 2435
    .local v3, "useOneHand":Z
    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 2437
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v4, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v2

    .line 2438
    .local v2, "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eq v0, v6, :cond_9f

    if-ne v0, v9, :cond_cc

    .line 2441
    :cond_9f
    if-ne v0, v6, :cond_ae

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isNumberKeysOnTopAdded(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 2443
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initNumberSymbolList()V

    .line 2445
    :cond_ae
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 2456
    :cond_bb
    :goto_bb
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_47

    .line 2428
    .end local v0    # "curLanguage":I
    .end local v2    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    .end local v3    # "useOneHand":Z
    :cond_bf
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7f

    .line 2429
    invoke-direct {p0, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    goto :goto_7f

    .line 2447
    .restart local v0    # "curLanguage":I
    .restart local v2    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    .restart local v3    # "useOneHand":Z
    :cond_cc
    if-ne v0, v10, :cond_bb

    .line 2448
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-nez v4, :cond_d8

    .line 2449
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_bb

    .line 2451
    :cond_d8
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v6, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    goto :goto_bb
.end method

.method public switchKorEngMode()V
    .registers 2

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1151
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEnglishMode()V

    .line 1155
    :goto_9
    return-void

    .line 1153
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchKoreanMode()V

    goto :goto_9
.end method

.method public switchKoreanMode()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1133
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    if-ne v0, v1, :cond_b

    .line 1134
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1138
    :goto_a
    return-void

    .line 1136
    :cond_b
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_a
.end method

.method public switchNumSymMode(Lcom/pantech/inputmethod/keyboard/KeyboardId;Z)V
    .registers 11
    .param p1, "keyboardId"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .param p2, "init"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, "prevEngMode":Z
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    if-ne v2, v7, :cond_a

    const/4 v0, 0x1

    .line 1186
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initNumberSymbolList()V

    .line 1187
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getSymbolTotalPages()I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mTotalPages:I

    .line 1188
    if-eqz p2, :cond_18

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->initSymbolPage()V

    .line 1190
    :cond_18
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 1191
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v2, :cond_41

    .line 1192
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    if-ne v2, v7, :cond_2a

    .line 1193
    const/4 v0, 0x1

    .line 1195
    :cond_2a
    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1196
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)V

    .line 1198
    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 1224
    :cond_41
    :goto_41
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    .line 1225
    return-void

    .line 1202
    :cond_45
    if-eqz p1, :cond_71

    .line 1203
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 1208
    .local v1, "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_4b
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 1210
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 1212
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    if-ne v2, v7, :cond_62

    .line 1213
    const/4 v0, 0x1

    .line 1215
    :cond_62
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1216
    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setFloatingLanguage(I)V

    .line 1220
    :goto_6b
    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_41

    .line 1205
    .end local v1    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_71
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .restart local v1    # "symbolKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    goto :goto_4b

    .line 1218
    :cond_7c
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    invoke-direct {p0, v2, v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_6b
.end method

.method public switchNumSymMode(Z)V
    .registers 3
    .param p1, "init"    # Z

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Lcom/pantech/inputmethod/keyboard/KeyboardId;Z)V

    .line 1172
    return-void
.end method

.method public switchPinchInMode()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2330
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v3

    if-nez v3, :cond_5c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v3

    if-ne v3, v1, :cond_5c

    .line 2332
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    .line 2333
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2, v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setLandscapePrevType(I)V

    .line 2335
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 2336
    .local v0, "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSymbolOrEmoticonMode()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2337
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 2346
    :cond_3b
    :goto_3b
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 2350
    .end local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_3e
    return v1

    .line 2338
    .restart local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_3f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3b

    .line 2340
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-eqz v2, :cond_56

    .line 2341
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    goto :goto_3b

    .line 2343
    :cond_56
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_3b

    .end local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_5c
    move v1, v2

    .line 2350
    goto :goto_3e
.end method

.method public switchPinchOutMode()Z
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 2301
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v2

    if-nez v2, :cond_5c

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLandscapeSplitMode()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 2303
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setLandscapeSplitMode(Z)V

    .line 2304
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->setLandscapePrevType(I)V

    .line 2307
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 2308
    .local v0, "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSymbolOrEmoticonMode()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2309
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 2318
    :cond_3b
    :goto_3b
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 2326
    .end local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :goto_3e
    return v1

    .line 2310
    .restart local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_3f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3b

    .line 2312
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-eqz v2, :cond_56

    .line 2313
    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v5, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    goto :goto_3b

    .line 2315
    :cond_56
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_3b

    .line 2321
    .end local v0    # "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    :cond_5c
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v2

    if-ne v2, v1, :cond_6e

    .line 2322
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    goto :goto_3e

    .line 2326
    :cond_6e
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public switchPrevFromEditMode()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2005
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2042
    :goto_8
    return-void

    .line 2009
    :cond_9
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrevInputMode:I

    iput v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 2011
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v1, v3, :cond_1a

    .line 2013
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->isOneHandLayout()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 2015
    :cond_1a
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/Edit;->setSelectionState(Z)V

    .line 2016
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/Edit;->setEditModeState(I)V

    .line 2017
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->getInstance()Lcom/pantech/inputmethod/keyboard/EditTouchPad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/EditTouchPad;->resetPosition()V

    .line 2023
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLangTemp:I

    invoke-direct {p0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 2026
    .local v0, "tempKeyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    if-ne v1, v3, :cond_56

    .line 2027
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLangTemp:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLangTemp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5a

    .line 2028
    :cond_49
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mNumPerPage:I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isPortrait()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateSymbolEmoticonKeys(Ljava/util/ArrayList;IIZ)Z

    .line 2040
    :cond_56
    :goto_56
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    goto :goto_8

    .line 2030
    :cond_5a
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mLangTemp:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_56

    .line 2033
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    if-eqz v1, :cond_71

    .line 2034
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiMode:I

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mEmojiArray:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentPage:I

    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getNumEmojiPerPage()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/keyboard/Keyboard;->updateEmojiKeys(I[Ljava/lang/String;II)Z

    goto :goto_56

    .line 2036
    :cond_71
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/Keyboard;->loadRecentKeys(Landroid/content/SharedPreferences;)V

    goto :goto_56
.end method

.method public switchSymbolsPage(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 1810
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1811
    if-nez p1, :cond_e

    .line 1812
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    .line 1834
    :goto_d
    return-void

    .line 1814
    :cond_e
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymbolPage(I)V

    goto :goto_d

    .line 1816
    :cond_12
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 1817
    if-nez p1, :cond_1f

    .line 1818
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmoticonMode()V

    goto :goto_d

    .line 1819
    :cond_1f
    const/16 v0, -0x72

    if-ne p1, v0, :cond_27

    .line 1821
    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    goto :goto_d

    .line 1823
    :cond_27
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmoticonPage(I)V

    goto :goto_d

    .line 1825
    :cond_2b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3c

    .line 1826
    if-nez p1, :cond_38

    .line 1827
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiMode()V

    goto :goto_d

    .line 1829
    :cond_38
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiPage(I)V

    goto :goto_d

    .line 1832
    :cond_3c
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public toggleCapsLock()V
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateShiftState()V

    .line 1037
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1038
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 1043
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 1048
    :cond_1c
    :goto_1c
    return-void

    .line 1045
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_1c
.end method

.method public toggleLanguage()V
    .registers 3

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1124
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEnglishMode()V

    .line 1130
    :goto_c
    return-void

    .line 1125
    :cond_d
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 1126
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchKoreanMode()V

    goto :goto_c

    .line 1128
    :cond_1a
    sget-object v0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public toggleShift()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1016
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateShiftState()V

    .line 1021
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1022
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualEnglishShifteMode()V

    .line 1029
    :goto_12
    return-void

    .line 1023
    :cond_13
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1024
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-nez v2, :cond_23

    :goto_1f
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_12

    :cond_23
    move v0, v1

    goto :goto_1f

    .line 1026
    :cond_25
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-nez v2, :cond_2f

    :goto_2b
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_12

    :cond_2f
    move v0, v1

    goto :goto_2b
.end method

.method public updateConfigurationForFloatingMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2637
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-eqz v1, :cond_a

    .line 2638
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->stopFloatMode()V

    .line 2640
    :cond_a
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2641
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_20

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    .line 2644
    :cond_1e
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    .line 2646
    :cond_20
    return-void
.end method

.method public updateFloatingMode()V
    .registers 4

    .prologue
    .line 2466
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    if-nez v1, :cond_5

    .line 2481
    :goto_4
    return-void

    .line 2469
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 2473
    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMode:I

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getDefaultKeyboardIdWithLanguage(II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/pantech/inputmethod/keyboard/KeyboardId;)Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 2476
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->getType()I

    move-result v0

    .line 2477
    .local v0, "type":I
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->changeFloatingMode(II)V

    goto :goto_4

    .line 2479
    .end local v0    # "type":I
    :cond_2f
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mFloatController:Lcom/pantech/inputmethod/keyboard/floating/FloatController;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/floating/FloatController;->stopFloatMode()V

    goto :goto_4
.end method

.method public updateKorShiftState()V
    .registers 3

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 1106
    .local v0, "shiftKeyState":Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1107
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    .line 1109
    :cond_f
    return-void
.end method

.method public updateSelectFlag(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 2249
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 2250
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_d

    .line 2252
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 2254
    :cond_d
    return-void
.end method

.method public updateShiftState()V
    .registers 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;

    .line 1077
    .local v0, "shiftKeyState":Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1078
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1079
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentAutoCapsStateOld()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1082
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setAutomaticTemporaryUpperCase()V

    .line 1095
    :cond_25
    :goto_25
    return-void

    .line 1084
    :cond_26
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_25

    .line 1087
    :cond_2e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1088
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_25

    .line 1093
    :cond_3c
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_25
.end method

.method public useMultitouchShift()Z
    .registers 2

    .prologue
    .line 2631
    const/4 v0, 0x0

    return v0
.end method
