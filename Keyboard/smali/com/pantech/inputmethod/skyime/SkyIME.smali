.class public Lcom/pantech/inputmethod/skyime/SkyIME;
.super Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;
.source "SkyIME.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;
.implements Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;
.implements Lcom/pantech/inputmethod/skyime/TargetApplicationGetter$OnTargetApplicationKnownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;,
        Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;
    }
.end annotation


# static fields
.field private static final ACTION_IS_SETUPWIZARD_FINISHED:Ljava/lang/String; = "com.pantech.inputmethod.skyime.IS_SETUPWIZARD_FINISHED"

.field public static final ACTION_MOBILE_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.MOBILE_THEME_SET_CHANGED"

.field public static final ACTION_PEN_STATE:Ljava/lang/String; = "com.pantech.intent.action.PEN_STATE"

.field private static final ACTION_SETUP_KOREAN_KEYBOARD_TYPE:Ljava/lang/String; = "com.pantech.inputmethod.skyime.SETUP_KOREAN_KEYBOARD_TYPE"

.field public static final CODE_SHOW_INPUT_METHOD_PICKER:I = 0x1

.field private static final DEBUG:Z

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final EXTENDED_TOUCHABLE_REGION_HEIGHT:I = 0x64

.field public static final IME_OPTION_DEFAULT_ENG_L:Ljava/lang/String; = "com.pantech.skyime.mode=engl"

.field public static final IME_OPTION_DEFAULT_ENG_U:Ljava/lang/String; = "com.pantech.skyime.mode=engu"

.field public static final IME_OPTION_DEFAULT_HWR_FULL_MODE:Ljava/lang/String; = "com.pantech.skyime.mode=hwrf"

.field public static final IME_OPTION_DEFAULT_KOR:Ljava/lang/String; = "com.pantech.skyime.mode=kor"

.field public static final IME_OPTION_DEFAULT_NUM:Ljava/lang/String; = "com.pantech.skyime.mode=num"

.field public static final IME_OPTION_DEFAULT_PEN_MODE:Ljava/lang/String; = "com.pantech.skyime.mode=pen"

.field public static final IME_OPTION_FORCE_ASCII:Ljava/lang/String; = "forceAscii"

.field public static final IME_OPTION_KEYBOARD_HEIGHT_CONTROL_MODE:Ljava/lang/String; = "com.pantech.skyime.heightControl"

.field public static final IME_OPTION_NO_EMOJI:Ljava/lang/String; = "com.pantech.skyime.noEmoji"

.field public static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field public static final IME_OPTION_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"

.field public static final IME_OPTION_NO_SETTINGS_KEY:Ljava/lang/String; = "noSettingsKey"

.field public static final IME_OPTION_RCS_TRANSPARENT:Ljava/lang/String; = "com.lge.ime.opacity:"

.field public static final IME_OPTION_SETTING_INIT:Ljava/lang/String; = "com.pantech.skyime.mode=vita_init"

.field public static final IME_OPTION_USE_ACTION_LABEL:Ljava/lang/String; = "com.pantech.skyime.useActionKeyLabel"

.field public static final IME_OPTION_VIB_LEVEL:Ljava/lang/String; = "com.pantech.skyime.vibLevel="

.field public static final IME_OPTION_VITA_MODE:Ljava/lang/String; = "com.pantech.skyime.mode=vita"

.field private static final NOT_A_CURSOR_POSITION:I = -0x1

.field private static final PENDING_IMS_CALLBACK_DURATION:I = 0x320

.field private static final QUICK_PRESS:I = 0xc8

.field private static final SKY_PRIVATE_OPTIONS_ENG:I = 0x2

.field private static final SKY_PRIVATE_OPTIONS_KOR:I = 0x1

.field private static final SKY_PRIVATE_OPTIONS_NULL:I = 0x0

.field private static final SKY_PRIVATE_OPTIONS_NUM:I = 0x3

.field private static final SPACE_STATE_DOUBLE:I = 0x1

.field private static final SPACE_STATE_NONE:I = 0x0

.field public static final SUBTYPE_EXTRA_VALUE_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field public static final SUBTYPE_EXTRA_VALUE_KEYBOARD_LOCALE:Ljava/lang/String; = "KeyboardLocale"

.field public static final SUBTYPE_EXTRA_VALUE_SUPPORT_TOUCH_POSITION_CORRECTION:Ljava/lang/String; = "SupportTouchPositionCorrection"

.field private static final TAG:Ljava/lang/String;

.field private static final TRACE:Z = false

.field public static final USE_BINARY_CONTACTS_DICTIONARY:Z = true

.field public static final USE_BINARY_USER_DICTIONARY:Z = true

.field private static mIsSetupWizrdFinished:Z

.field private static mQwertyMap:Landroid/util/SparseIntArray;


# instance fields
.field listener:Landroid/content/DialogInterface$OnClickListener;

.field private mApplicationSpecifiedCompletionOn:Z

.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallState:I

.field private mConfigKeyboard:I

.field private mCorrectionMode:I

.field private mDeleteCount:I

.field private mDisplayOrientation:I

.field private mEdit:Lcom/pantech/inputmethod/skyime/Edit;

.field private mEnableModeChage:Z

.field private mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExpectingUpdateSelection:Z

.field private mExtractArea:Landroid/view/View;

.field mGestureHelpDialog:Landroid/app/AlertDialog;

.field private final mGridKeys:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

.field private mHanjaChoosingDialog:Landroid/app/AlertDialog;

.field private mHeightIndex:I

.field private mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

.field private mInputMethodId:Ljava/lang/String;

.field private mInputType:I

.field private mInputTypeNoAutoCorrect:Z

.field private mIsAutoCorrectionIndicatorOn:Z

.field private mIsHWInputType:Z

.field private mIsHWKoreanMode:Z

.field private mIsMainDictionaryAvailable:Z

.field private mIsUserDictionaryAvailable:Z

.field private mIsWebInputType:Z

.field private mItems:[Ljava/lang/String;

.field private mKeyPreviewBackingView:Landroid/view/View;

.field private mKeyboardHeightControlPreference:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

.field private mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private mKorSuggestionEnable:Z

.field private mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLocale:Ljava/util/Locale;

.field private mLockKeyEvent:Z

.field private mMultitapCount:I

.field private mOneHand:Z

.field private mOneHandToLeftBtn:Landroid/widget/ImageButton;

.field private mOneHandToRightBtn:Landroid/widget/ImageButton;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrivateVibLevel:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mRingerMode:I

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

.field private mSilentModeOn:Z

.field private mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

.field private mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

.field private mSoundOn:Z

.field private mSpaceState:I

.field private mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

.field private mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

.field private mSuggestionsContainer:Landroid/view/View;

.field private mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

.field private mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

.field private mUpdatingLock:Ljava/lang/Object;

.field private mUpdatingTouchEffectInfo:Z

.field private mUserDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

.field private mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

.field private mVibLevel:I

.field private mVibrateOn:Z

.field private mVibrateRingingObserver:Landroid/database/ContentObserver;

.field private mVibrateWhenRinging:Z

.field private mVibrator:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

.field private mVitaMode:Z

.field private mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    const-class v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    .line 108
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    .line 211
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mQwertyMap:Landroid/util/SparseIntArray;

    .line 370
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsSetupWizrdFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;-><init>()V

    .line 171
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVitaMode:Z

    .line 207
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHeightIndex:I

    .line 210
    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    .line 212
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    .line 214
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    .line 217
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsWebInputType:Z

    .line 220
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHand:Z

    .line 253
    new-instance v0, Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    .line 259
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    .line 260
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    .line 290
    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 291
    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 292
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 298
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibLevel:I

    .line 299
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrivateVibLevel:I

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingLock:Ljava/lang/Object;

    .line 319
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    .line 335
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnableModeChage:Z

    .line 338
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/CollectionUtils;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    .line 343
    sget-object v0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .line 363
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLockKeyEvent:Z

    .line 373
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    .line 382
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    .line 810
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$3;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$3;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4049
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$6;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$6;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4548
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$8;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$8;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 4563
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$9;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$9;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 4942
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$10;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$10;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMultitap()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1202(Lcom/pantech/inputmethod/skyime/SkyIME;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCallState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/pantech/inputmethod/skyime/SkyIME;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->enableOneHandMode(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->refreshKeyboard()V

    return-void
.end method

.method static synthetic access$1500(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 104
    sput-boolean p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsSetupWizrdFinished:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/pantech/inputmethod/skyime/SkyIME;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/pantech/inputmethod/skyime/SkyIME;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnableModeChage:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingTouchEffectInfo:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/pantech/inputmethod/skyime/SkyIME;)Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/pantech/inputmethod/skyime/SkyIME;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/pantech/inputmethod/skyime/SkyIME;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pantech/inputmethod/skyime/SkyIME;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLockKeyEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/SkyIME;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getMultitapDuration()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/SkyIME;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->onFinishInputViewInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onFinishInputInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/view/inputmethod/EditorInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;
    .param p1, "x1"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSkyOptions(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/pantech/inputmethod/skyime/SkyIME;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 104
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    return v0
.end method

.method private addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v2, v5

    .line 3703
    :goto_9
    return-object v2

    .line 3674
    :cond_a
    iget v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    if-eq v6, v4, :cond_15

    iget v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_15

    move-object v2, v5

    .line 3676
    goto :goto_9

    .line 3679
    :cond_15
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    if-eqz v6, :cond_67

    .line 3680
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3682
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4f

    .line 3683
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v6, v6, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3688
    .local v2, "prevWord":Ljava/lang/CharSequence;
    :goto_27
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/skyime/WordComposer;->isAutoCapitalized()Z

    move-result v6

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/skyime/WordComposer;->isMostlyCaps()Z

    move-result v6

    if-nez v6, :cond_51

    .line 3689
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 3696
    .local v3, "secondWord":Ljava/lang/String;
    :goto_41
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/skyime/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->getMaxFrequency(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;)I

    move-result v1

    .line 3698
    .local v1, "maxFreq":I
    if-nez v1, :cond_56

    move-object v2, v5

    goto :goto_9

    .line 3685
    .end local v1    # "maxFreq":I
    .end local v2    # "prevWord":Ljava/lang/CharSequence;
    .end local v3    # "secondWord":Ljava/lang/String;
    :cond_4f
    const/4 v2, 0x0

    .restart local v2    # "prevWord":Ljava/lang/CharSequence;
    goto :goto_27

    .line 3692
    :cond_51
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "secondWord":Ljava/lang/String;
    goto :goto_41

    .line 3699
    .restart local v1    # "maxFreq":I
    :cond_56
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    if-nez v2, :cond_60

    :goto_5a
    if-lez v1, :cond_65

    :goto_5c
    invoke-virtual {v6, v5, v3, v4}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->addToUserHistory(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_9

    :cond_60
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5a

    :cond_65
    const/4 v4, 0x0

    goto :goto_5c

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "maxFreq":I
    .end local v2    # "prevWord":Ljava/lang/CharSequence;
    .end local v3    # "secondWord":Ljava/lang/String;
    :cond_67
    move-object v2, v5

    .line 3703
    goto :goto_9
.end method

.method private static canBeFollowedByPeriod(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 1875
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private commitChosenWord(Ljava/lang/CharSequence;II)V
    .registers 9
    .param p1, "chosenWord"    # Ljava/lang/CharSequence;
    .param p2, "commitType"    # I
    .param p3, "separatorCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 3603
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3604
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_20

    .line 3605
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mEnableSuggestionSpanInsertion:Z

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v3, :cond_34

    .line 3606
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getSuggestions()Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v2

    .line 3607
    .local v2, "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsMainDictionaryAvailable:Z

    invoke-static {p0, p1, v2, v3}, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3615
    .end local v2    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    :cond_20
    :goto_20
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3620
    .local v1, "prevWord":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4, p3, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;->commitWord(ILjava/lang/String;ILjava/lang/CharSequence;)Lcom/pantech/inputmethod/skyime/LastComposedWord;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .line 3623
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 3625
    return-void

    .line 3611
    .end local v1    # "prevWord":Ljava/lang/CharSequence;
    :cond_34
    invoke-interface {v0, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_20
.end method

.method private commitCurrentAutoCorrection(ILandroid/view/inputmethod/InputConnection;)V
    .registers 8
    .param p1, "separatorCodePoint"    # I
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 3452
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3453
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateSuggestions()V

    .line 3454
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateSuggestions()V

    .line 3456
    :cond_10
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutoCorrectionOrNull()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3457
    .local v0, "autoCorrection":Ljava/lang/CharSequence;
    if-eqz v0, :cond_51

    .line 3458
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    .line 3459
    .local v1, "typedWord":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3460
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "We have an auto-correction but the typed word is empty? Impossible! I must commit suicide."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3463
    :cond_2c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3464
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    .line 3465
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitChosenWord(Ljava/lang/CharSequence;II)V

    .line 3467
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    if-eqz p2, :cond_51

    .line 3470
    new-instance v2, Landroid/view/inputmethod/CorrectionInfo;

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v3, v1, v0}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {p2, v2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 3474
    .end local v1    # "typedWord":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private createEnglishCore()V
    .registers 3

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_c

    .line 4334
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 4335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4337
    :cond_c
    new-instance v0, Lcom/pantech/inputmethod/skyime/AutomataEng;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/AutomataEng;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4339
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_1f

    .line 4340
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/skyime/Automata;->setInputType(I)V

    .line 4344
    :goto_1e
    return-void

    .line 4342
    :cond_1f
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private createHangulCore()V
    .registers 2

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_c

    .line 4263
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 4264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4266
    :cond_c
    new-instance v0, Lcom/pantech/inputmethod/skyime/AutomataKor;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4267
    return-void
.end method

.method private createHangulCoreHW()V
    .registers 3

    .prologue
    .line 4321
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_c

    .line 4322
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 4323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4325
    :cond_c
    new-instance v0, Lcom/pantech/inputmethod/skyime/AutomataKor;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/AutomataKor;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    .line 4326
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_1d

    .line 4327
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/skyime/Automata;->setInputType(I)V

    .line 4329
    :cond_1d
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createQwertyMap()V

    .line 4330
    return-void
.end method

.method private createQwertyMap()V
    .registers 7

    .prologue
    .line 4448
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 4449
    .local v0, "engArray":[I
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 4451
    .local v2, "korArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_26

    .line 4452
    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->mQwertyMap:Landroid/util/SparseIntArray;

    aget v4, v0, v1

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4451
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 4454
    :cond_26
    return-void
.end method

.method private enableOneHandMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3975
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3991
    :cond_9
    :goto_9
    return-void

    .line 3979
    :cond_a
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHand:Z

    if-eq v1, p1, :cond_9

    .line 3980
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHand:Z

    .line 3981
    if-nez p1, :cond_17

    .line 3982
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 3985
    :cond_17
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_9

    .line 3986
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3987
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "one_hand_layout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3988
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9
.end method

.method private getAdjustedBackingViewHeight()I
    .registers 11

    .prologue
    .line 1691
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1692
    .local v0, "currentHeight":I
    if-lez v0, :cond_9

    .line 1712
    .end local v0    # "currentHeight":I
    :goto_8
    return v0

    .line 1696
    .restart local v0    # "currentHeight":I
    :cond_9
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 1697
    .local v3, "keyboardView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-nez v3, :cond_13

    .line 1698
    const/4 v0, 0x0

    goto :goto_8

    .line 1700
    :cond_13
    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    .line 1701
    .local v2, "keyboardHeight":I
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1702
    .local v8, "suggestionsHeight":I
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1703
    .local v1, "displayHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1704
    .local v6, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1705
    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 1706
    .local v4, "notificationBarHeight":I
    sub-int v9, v1, v4

    sub-int/2addr v9, v8

    sub-int v7, v9, v2

    .line 1709
    .local v7, "remainingHeight":I
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1710
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v9, v7}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setMoreSuggestionsHeight(I)I

    move-result v9

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1711
    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1712
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8
.end method

.method private getMultitapDuration()I
    .registers 4

    .prologue
    .line 4092
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getMultitapTimeout(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 4094
    .local v0, "duration":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSimpleQwertyKeyboard()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isQwertyKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4095
    :cond_18
    sget v0, Lcom/pantech/inputmethod/skyime/SkyIMEData;->MULTITAP_DURATION_SIMPLE_QWERTY:I

    .line 4097
    :cond_1a
    return v0
.end method

.method private getSkyOptions(Landroid/view/inputmethod/EditorInfo;)I
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 1212
    if-eqz p1, :cond_2d

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1213
    const-string v0, "com.pantech.skyime.mode=engu"

    invoke-static {v1, v0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "com.pantech.skyime.mode=engl"

    invoke-static {v1, v0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1215
    :cond_17
    const/4 v0, 0x2

    .line 1225
    :goto_18
    return v0

    .line 1216
    :cond_19
    const-string v0, "com.pantech.skyime.mode=kor"

    invoke-static {v1, v0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1218
    const/4 v0, 0x1

    goto :goto_18

    .line 1219
    :cond_23
    const-string v0, "com.pantech.skyime.mode=num"

    invoke-static {v1, v0, p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1221
    const/4 v0, 0x3

    goto :goto_18

    .line 1225
    :cond_2d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3252
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Lcom/pantech/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_8
    return-object p1
.end method

.method private handleBackspace(Lcom/pantech/inputmethod/skyime/Automata;I)V
    .registers 4
    .param p1, "automata"    # Lcom/pantech/inputmethod/skyime/Automata;
    .param p2, "spaceState"    # I

    .prologue
    .line 2446
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2447
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7

    .line 2451
    :goto_6
    return-void

    .line 2448
    :cond_7
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2449
    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleBackspaceWhileInBatchEdit(Lcom/pantech/inputmethod/skyime/Automata;ILandroid/view/inputmethod/InputConnection;)V

    .line 2450
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_6
.end method

.method private handleBackspaceWhileInBatchEdit(Lcom/pantech/inputmethod/skyime/Automata;ILandroid/view/inputmethod/InputConnection;)V
    .registers 28
    .param p1, "automata"    # Lcom/pantech/inputmethod/skyime/Automata;
    .param p2, "spaceState"    # I
    .param p3, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateShiftState()V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnteredText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnteredText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnteredText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2464
    .local v12, "length":I
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v12, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2662
    .end local v12    # "length":I
    :cond_34
    :goto_34
    return-void

    .line 2471
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v19

    if-eqz v19, :cond_37c

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v12

    .line 2473
    .restart local v12    # "length":I
    if-lez v12, :cond_36d

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v12, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2478
    .local v11, "lastChar":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v3

    .line 2480
    .local v3, "automataComposingCount":I
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_91

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: lastChar="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " composingCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_91
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v19

    if-eqz v19, :cond_21a

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isPhonemeSegmentation()Z

    move-result v19

    if-eqz v19, :cond_206

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulSyllables(C)Z

    move-result v19

    if-eqz v19, :cond_206

    .line 2484
    const/4 v10, 0x1

    .line 2495
    .local v10, "isKoreanMode":Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isPhonemeSegmentation()Z

    move-result v19

    if-eqz v19, :cond_d1

    if-nez v3, :cond_d1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulSyllables(C)Z

    move-result v19

    if-eqz v19, :cond_d1

    .line 2496
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_c1

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v20, "handleBackspace: complete2Composing"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_c1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/pantech/inputmethod/skyime/Automata;->complete2Composing(C)V

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2502
    :cond_d1
    if-eqz v10, :cond_2ee

    .line 2504
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_f1

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: isKoreanMode : automata_processKey, automataComposingCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_f1
    const/16 v19, -0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/skyime/Automata;->processKey(I)Z

    .line 2507
    invoke-interface/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/Automata;->getComposingText()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2508
    .local v5, "automataComposingStr":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 2510
    .local v4, "automataComposingLen":I
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_12c

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: automataComposingLen="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " length="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isPhonemeSegmentation()Z

    move-result v19

    if-eqz v19, :cond_1a9

    if-lez v4, :cond_1a9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v12, v0, :cond_1a9

    .line 2513
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    .line 2514
    .local v16, "tempChar1":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v12, -0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 2516
    .local v17, "tempChar2":C
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_180

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: tempChar2="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " tempChar1="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_180
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulConsonant(C)Z

    move-result v19

    if-eqz v19, :cond_1a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulSyllables(C)Z

    move-result v19

    if-eqz v19, :cond_1a9

    .line 2518
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/pantech/inputmethod/skyime/Automata;->reCompose(C)Z

    move-result v19

    if-eqz v19, :cond_1a9

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2524
    .end local v16    # "tempChar1":C
    .end local v17    # "tempChar2":C
    :cond_1a9
    invoke-interface/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/Automata;->getNewTextLength()I

    move-result v13

    .line 2525
    .local v13, "newTextLen":I
    sub-int v9, v4, v13

    .line 2527
    .local v9, "ingTextLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v3

    .line 2529
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_1ef

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: automataComposing Str="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " newTextLen="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ingTextLen="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_1ef
    if-lez v3, :cond_264

    if-lt v12, v3, :cond_264

    .line 2531
    sub-int v14, v12, v3

    .line 2532
    .local v14, "remainLen":I
    sub-int v15, v12, v14

    .line 2533
    .local v15, "removeLen":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f8
    if-ge v8, v15, :cond_220

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 2533
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f8

    .line 2485
    .end local v4    # "automataComposingLen":I
    .end local v5    # "automataComposingStr":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    .end local v9    # "ingTextLen":I
    .end local v10    # "isKoreanMode":Z
    .end local v13    # "newTextLen":I
    .end local v14    # "remainLen":I
    .end local v15    # "removeLen":I
    :cond_206
    if-lez v3, :cond_217

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v19

    if-eqz v19, :cond_217

    .line 2486
    const/4 v10, 0x1

    .restart local v10    # "isKoreanMode":Z
    goto/16 :goto_a6

    .line 2488
    .end local v10    # "isKoreanMode":Z
    :cond_217
    const/4 v10, 0x0

    .restart local v10    # "isKoreanMode":Z
    goto/16 :goto_a6

    .line 2491
    .end local v10    # "isKoreanMode":Z
    :cond_21a
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    .restart local v10    # "isKoreanMode":Z
    goto/16 :goto_a6

    .line 2536
    .restart local v4    # "automataComposingLen":I
    .restart local v5    # "automataComposingStr":Ljava/lang/StringBuilder;
    .restart local v8    # "i":I
    .restart local v9    # "ingTextLen":I
    .restart local v13    # "newTextLen":I
    .restart local v14    # "remainLen":I
    .restart local v15    # "removeLen":I
    :cond_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    sub-int v20, v3, v15

    invoke-virtual/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2541
    .end local v8    # "i":I
    .end local v14    # "remainLen":I
    .end local v15    # "removeLen":I
    :cond_22b
    :goto_22b
    if-lez v4, :cond_29a

    .line 2542
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_22e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_28f

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v19

    if-eqz v19, :cond_27b

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v23

    invoke-virtual/range {v19 .. v23}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 2542
    :goto_261
    add-int/lit8 v8, v8, 0x1

    goto :goto_22e

    .line 2537
    .end local v8    # "i":I
    :cond_264
    if-nez v9, :cond_22b

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    goto :goto_22b

    .line 2547
    .restart local v8    # "i":I
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    goto :goto_261

    .line 2550
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2553
    .end local v8    # "i":I
    :cond_29a
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_2c0

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleBackspace: mComposingStringBuilder="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2574
    .end local v4    # "automataComposingLen":I
    .end local v5    # "automataComposingStr":Ljava/lang/StringBuilder;
    .end local v9    # "ingTextLen":I
    .end local v13    # "newTextLen":I
    :goto_2dd
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    goto/16 :goto_34

    .line 2558
    :cond_2ee
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v19

    if-eqz v19, :cond_361

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v19

    if-eqz v19, :cond_361

    if-lez v3, :cond_361

    .line 2559
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_30d

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v20, "handleBackspace: not KoreanMode - isEnglishMode"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v19, v0

    const/16 v20, -0x5

    invoke-interface/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/Automata;->processKey(I)Z

    .line 2564
    :cond_318
    :goto_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v19

    if-lez v19, :cond_342

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2569
    :cond_342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_2dd

    .line 2562
    :cond_361
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_318

    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v20, "handleBackspace: not KoreanMode"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_318

    .line 2579
    .end local v3    # "automataComposingCount":I
    .end local v10    # "isKoreanMode":Z
    .end local v11    # "lastChar":C
    :cond_36d
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_34

    .line 2582
    .end local v12    # "length":I
    :cond_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->canRevertCommit()Z

    move-result v19

    if-eqz v19, :cond_394

    .line 2583
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onAutoCorrectionCancellation()V

    .line 2584
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->revertCommit(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_34

    .line 2587
    :cond_394
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_3a6

    .line 2588
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->revertDoubleSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)Z

    move-result v19

    if-nez v19, :cond_34

    .line 2606
    :cond_3a6
    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3bf

    .line 2608
    sget-boolean v19, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v19, :cond_3bf

    .line 2609
    sget-object v19, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v20, "Backspace when we don\'t know the selection position"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_3bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDeleteCount:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3fa

    .line 2614
    const/4 v6, 0x1

    .line 2615
    .local v6, "beforeLength":I
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 2616
    .local v18, "textBefore":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3fa

    .line 2617
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 2619
    .local v7, "codePoint":I
    invoke-static {v7}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v19

    if-eqz v19, :cond_3f1

    .line 2620
    const/4 v6, 0x2

    .line 2622
    :cond_3f1
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v6, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2636
    .end local v6    # "beforeLength":I
    .end local v7    # "codePoint":I
    .end local v18    # "textBefore":Ljava/lang/CharSequence;
    :cond_3fa
    const/16 v19, 0x43

    move/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendUpDownEnterOrBackspace(ILandroid/view/inputmethod/InputConnection;)V

    .line 2656
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v19

    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    goto/16 :goto_34
.end method

.method private handleCharacter(IIII)V
    .registers 11
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spaceState"    # I

    .prologue
    .line 2880
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2883
    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleCharacterWhileInBatchEdit(IIIILandroid/view/inputmethod/InputConnection;)V

    .line 2885
    return-void
.end method

.method private handleCharacterWhileInBatchEdit(IIIILandroid/view/inputmethod/InputConnection;)V
    .registers 27
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spaceState"    # I
    .param p5, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v11

    .line 2891
    .local v11, "isComposingWord":Z
    move/from16 v5, p1

    .line 2896
    .local v5, "code":I
    if-nez v11, :cond_71

    invoke-static/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->isAlphabet(I)Z

    move-result v17

    if-nez v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v17

    if-eqz v17, :cond_71

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v17

    if-eqz v17, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v17

    if-eqz v17, :cond_42

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v17

    if-eqz v17, :cond_71

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->isAlphabet(I)Z

    move-result v17

    if-eqz v17, :cond_71

    .line 2905
    :cond_42
    const/16 v17, 0x27

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_89

    const/4 v11, 0x1

    .line 2910
    :goto_4b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 2911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 2913
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v17

    if-eqz v17, :cond_8b

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v17

    if-eqz v17, :cond_8b

    .line 2914
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 2921
    :cond_71
    :goto_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v17

    if-eqz v17, :cond_e6

    .line 2922
    if-ltz p1, :cond_88

    const v17, 0x10ffff

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_97

    .line 3060
    :cond_88
    :goto_88
    return-void

    .line 2905
    :cond_89
    const/4 v11, 0x0

    goto :goto_4b

    .line 2916
    :cond_8b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->clearSuggestions()V

    goto :goto_71

    .line 2926
    :cond_97
    move/from16 v5, p1

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v17

    if-eqz v17, :cond_e6

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v17

    if-eqz v17, :cond_e6

    .line 2931
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Ljava/lang/String;-><init>([III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 2935
    .local v16, "upperCaseString":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->codePointCount(II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17a

    .line 2936
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 2946
    .end local v16    # "upperCaseString":Ljava/lang/String;
    :cond_e6
    if-eqz v11, :cond_3b3

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v17

    if-eqz v17, :cond_2ed

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->isAlphabet(I)Z

    move-result v17

    if-eqz v17, :cond_2ed

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/pantech/inputmethod/skyime/Automata;->isEqualPrevKey(I)Z

    move-result v17

    if-nez v17, :cond_111

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2952
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v17

    if-eqz v17, :cond_183

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/Automata;->setShift(Z)V

    .line 2957
    :goto_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/pantech/inputmethod/skyime/Automata;->processKey(I)Z

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/Automata;->getComposingText()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2959
    .local v6, "completed":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 2960
    .local v15, "textLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/Automata;->getNewTextLength()I

    move-result v12

    .line 2961
    .local v12, "newTextLen":I
    sub-int v10, v15, v12

    .line 2963
    .local v10, "ingTextLen":I
    if-eqz p5, :cond_1a7

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v8

    .line 2965
    .local v8, "currComposingLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v7

    .line 2966
    .local v7, "composingCount":I
    if-lez v7, :cond_19a

    if-lt v8, v7, :cond_19a

    .line 2967
    sub-int v13, v8, v7

    .line 2968
    .local v13, "remainLen":I
    sub-int v14, v8, v13

    .line 2969
    .local v14, "removeLen":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16c
    if-ge v9, v14, :cond_18f

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 2969
    add-int/lit8 v9, v9, 0x1

    goto :goto_16c

    .line 2940
    .end local v6    # "completed":Ljava/lang/StringBuilder;
    .end local v7    # "composingCount":I
    .end local v8    # "currComposingLen":I
    .end local v9    # "i":I
    .end local v10    # "ingTextLen":I
    .end local v12    # "newTextLen":I
    .end local v13    # "remainLen":I
    .end local v14    # "removeLen":I
    .end local v15    # "textLen":I
    .restart local v16    # "upperCaseString":Ljava/lang/String;
    :cond_17a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->onTextInput(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 2955
    .end local v16    # "upperCaseString":Ljava/lang/String;
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/Automata;->setShift(Z)V

    goto :goto_128

    .line 2972
    .restart local v6    # "completed":Ljava/lang/StringBuilder;
    .restart local v7    # "composingCount":I
    .restart local v8    # "currComposingLen":I
    .restart local v9    # "i":I
    .restart local v10    # "ingTextLen":I
    .restart local v12    # "newTextLen":I
    .restart local v13    # "remainLen":I
    .restart local v14    # "removeLen":I
    .restart local v15    # "textLen":I
    :cond_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    sub-int v18, v7, v14

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2974
    .end local v9    # "i":I
    .end local v13    # "remainLen":I
    .end local v14    # "removeLen":I
    :cond_19a
    if-gtz v15, :cond_1e8

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 3012
    .end local v7    # "composingCount":I
    .end local v8    # "currComposingLen":I
    :cond_1a7
    :goto_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postMultitapTimeout()V

    .line 3039
    .end local v6    # "completed":Ljava/lang/StringBuilder;
    .end local v10    # "ingTextLen":I
    .end local v12    # "newTextLen":I
    .end local v15    # "textLen":I
    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v17

    if-eqz v17, :cond_1c5

    .line 3040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3055
    :cond_1c5
    :goto_1c5
    int-to-char v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onNonSeparator(CII)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v17

    if-nez v17, :cond_88

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto/16 :goto_88

    .line 2978
    .restart local v6    # "completed":Ljava/lang/StringBuilder;
    .restart local v7    # "composingCount":I
    .restart local v8    # "currComposingLen":I
    .restart local v10    # "ingTextLen":I
    .restart local v12    # "newTextLen":I
    .restart local v15    # "textLen":I
    :cond_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v17

    if-eqz v17, :cond_258

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v17

    if-eqz v17, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v17

    if-eqz v17, :cond_258

    .line 2980
    :cond_200
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_201
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_225

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 2980
    add-int/lit8 v9, v9, 0x1

    goto :goto_201

    .line 2983
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->startComposingWord()V

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1a7

    .line 2988
    .end local v9    # "i":I
    :cond_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v17

    if-eqz v17, :cond_26f

    .line 2989
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2992
    :cond_26f
    invoke-interface/range {p5 .. p5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2993
    if-lez v12, :cond_292

    .line 2994
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v12}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2995
    invoke-interface/range {p5 .. p5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2998
    :cond_292
    if-lez v10, :cond_2e1

    .line 2999
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual {v6, v12, v15}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->setComposingWord(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3008
    :goto_2dc
    invoke-interface/range {p5 .. p5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1a7

    .line 3005
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    goto :goto_2dc

    .line 3015
    .end local v6    # "completed":Ljava/lang/StringBuilder;
    .end local v7    # "composingCount":I
    .end local v8    # "currComposingLen":I
    .end local v10    # "ingTextLen":I
    .end local v12    # "newTextLen":I
    .end local v15    # "textLen":I
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v17

    if-eqz v17, :cond_30b

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 3021
    :cond_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v17

    if-eqz v17, :cond_335

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v17

    if-nez v17, :cond_335

    .line 3022
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 3023
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyCodePoint(I)V

    goto/16 :goto_1b0

    .line 3025
    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v18

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->startComposingWord()V

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 3029
    if-eqz p5, :cond_1b0

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_391

    .line 3032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentAutoCapsState()I

    move-result v17

    if-eqz v17, :cond_3b0

    const/16 v17, 0x1

    :goto_38a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutoCapitalized(Z)V

    .line 3035
    :cond_391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1b0

    .line 3032
    :cond_3b0
    const/16 v17, 0x0

    goto :goto_38a

    .line 3043
    :cond_3b3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyCodePoint(I)V

    goto/16 :goto_1c5
.end method

.method private handleClose()V
    .registers 4

    .prologue
    .line 3258
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 3260
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAllComposing()V

    .line 3262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->requestHideSelf(I)V

    .line 3263
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 3264
    .local v0, "inputView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_1a

    .line 3265
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 3266
    :cond_1a
    return-void
.end method

.method private handleKorCharacter(Lcom/pantech/inputmethod/skyime/Automata;IIII)V
    .registers 13
    .param p1, "automata"    # Lcom/pantech/inputmethod/skyime/Automata;
    .param p2, "primaryCode"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "spaceState"    # I

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 2673
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2675
    invoke-direct/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleKorCharacterWhileInBatchEdit(Lcom/pantech/inputmethod/skyime/Automata;IIIILandroid/view/inputmethod/InputConnection;)V

    .line 2676
    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2677
    :cond_17
    return-void
.end method

.method private handleKorCharacterWhileInBatchEdit(Lcom/pantech/inputmethod/skyime/Automata;IIIILandroid/view/inputmethod/InputConnection;)V
    .registers 30
    .param p1, "automata"    # Lcom/pantech/inputmethod/skyime/Automata;
    .param p2, "primaryCode"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "spaceState"    # I
    .param p6, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v12

    .line 2684
    .local v12, "isComposingWord":Z
    move/from16 v7, p2

    .line 2686
    .local v7, "code":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    .line 2687
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2688
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    .line 2691
    :cond_25
    if-nez p1, :cond_40

    .line 2692
    sget-object v18, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v19, "automata null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2694
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCore()V

    .line 2695
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCoreHW()V

    .line 2876
    :cond_3f
    :goto_3f
    return-void

    .line 2703
    :cond_40
    if-nez v12, :cond_83

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/pantech/inputmethod/skyime/Automata;->isValidCode(I)Z

    move-result v18

    if-nez v18, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v18

    if-eqz v18, :cond_83

    .line 2710
    :cond_5a
    const/16 v18, 0x27

    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_1d3

    const/4 v12, 0x1

    .line 2715
    :goto_63
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 2716
    invoke-interface/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 2718
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v18

    if-eqz v18, :cond_1d6

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v18

    if-eqz v18, :cond_1d6

    .line 2719
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 2726
    :cond_83
    :goto_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v18

    if-eqz v18, :cond_ae

    .line 2728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isQwertyKeyboard()Z

    move-result v18

    if-eqz v18, :cond_ae

    .line 2729
    sparse-switch v7, :sswitch_data_3be

    .line 2757
    :cond_ae
    :goto_ae
    if-eqz v12, :cond_39a

    .line 2758
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/pantech/inputmethod/skyime/Automata;->isValidCode(I)Z

    move-result v18

    if-eqz v18, :cond_346

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v9

    .line 2761
    .local v9, "currComposingLen":I
    sget-boolean v18, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v18, :cond_f4

    .line 2762
    sget-object v18, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleKorCharacter: currComposingLen="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ComposingCount="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isPhonemeSegmentation()Z

    move-result v18

    if-eqz v18, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v18

    if-nez v18, :cond_156

    if-lez v9, :cond_156

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v9, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 2766
    .local v13, "lastChar":C
    sget-boolean v18, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v18, :cond_136

    .line 2767
    sget-object v18, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleKorCharacter: lastChar="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :cond_136
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulSyllables(C)Z

    move-result v18

    if-nez v18, :cond_146

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pantech/inputmethod/skyime/SkyIME;->isHangulConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_156

    .line 2769
    :cond_146
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/pantech/inputmethod/skyime/Automata;->complete2Composing(C)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2775
    .end local v13    # "lastChar":C
    :cond_156
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/pantech/inputmethod/skyime/Automata;->processKey(I)Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 2779
    invoke-interface/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/Automata;->getComposingText()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2780
    .local v6, "automataComposingStr":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 2781
    .local v5, "automataComposingLen":I
    invoke-interface/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/Automata;->getNewTextLength()I

    move-result v14

    .line 2782
    .local v14, "newTextLen":I
    sub-int v11, v5, v14

    .line 2785
    .local v11, "ingTextLen":I
    if-eqz p6, :cond_217

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v8

    .line 2787
    .local v8, "composingCount":I
    sub-int v15, v9, v8

    .line 2788
    .local v15, "remainLen":I
    sub-int v16, v9, v15

    .line 2790
    .local v16, "removeLen":I
    sget-boolean v18, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v18, :cond_1be

    sget-object v18, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleKorCharacter: automataComposingStr="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " newTextLen="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ingTextLen="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mWordComposer_composingCount="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :cond_1be
    if-lez v8, :cond_20a

    if-lt v9, v8, :cond_20a

    .line 2793
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1c3
    move/from16 v0, v16

    if-ge v10, v0, :cond_1ff

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->deleteLast()V

    .line 2793
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c3

    .line 2710
    .end local v5    # "automataComposingLen":I
    .end local v6    # "automataComposingStr":Ljava/lang/StringBuilder;
    .end local v8    # "composingCount":I
    .end local v9    # "currComposingLen":I
    .end local v10    # "i":I
    .end local v11    # "ingTextLen":I
    .end local v14    # "newTextLen":I
    .end local v15    # "remainLen":I
    .end local v16    # "removeLen":I
    :cond_1d3
    const/4 v12, 0x0

    goto/16 :goto_63

    .line 2721
    :cond_1d6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->clearSuggestions()V

    goto/16 :goto_83

    .line 2731
    :sswitch_1e3
    const/16 v7, 0x3ea

    .line 2732
    goto/16 :goto_ae

    .line 2734
    :sswitch_1e7
    const/16 v7, 0x3ed

    .line 2735
    goto/16 :goto_ae

    .line 2737
    :sswitch_1eb
    const/16 v7, 0x3f1

    .line 2738
    goto/16 :goto_ae

    .line 2740
    :sswitch_1ef
    const/16 v7, 0x3f3

    .line 2741
    goto/16 :goto_ae

    .line 2743
    :sswitch_1f3
    const/16 v7, 0x3f6

    .line 2744
    goto/16 :goto_ae

    .line 2746
    :sswitch_1f7
    const/16 v7, 0x3ff

    .line 2747
    goto/16 :goto_ae

    .line 2749
    :sswitch_1fb
    const/16 v7, 0x403

    .line 2750
    goto/16 :goto_ae

    .line 2796
    .restart local v5    # "automataComposingLen":I
    .restart local v6    # "automataComposingStr":Ljava/lang/StringBuilder;
    .restart local v8    # "composingCount":I
    .restart local v9    # "currComposingLen":I
    .restart local v10    # "i":I
    .restart local v11    # "ingTextLen":I
    .restart local v14    # "newTextLen":I
    .restart local v15    # "remainLen":I
    .restart local v16    # "removeLen":I
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    sub-int v19, v8, v16

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2798
    .end local v10    # "i":I
    :cond_20a
    if-gtz v5, :cond_248

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2839
    .end local v8    # "composingCount":I
    .end local v15    # "remainLen":I
    .end local v16    # "removeLen":I
    :cond_217
    :goto_217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postMultitapTimeout()V

    .line 2853
    .end local v5    # "automataComposingLen":I
    .end local v6    # "automataComposingStr":Ljava/lang/StringBuilder;
    .end local v9    # "currComposingLen":I
    .end local v11    # "ingTextLen":I
    .end local v14    # "newTextLen":I
    :cond_220
    :goto_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 2870
    :goto_229
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onNonSeparator(CII)V

    .line 2873
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateKorShiftState()V

    goto/16 :goto_3f

    .line 2801
    .restart local v5    # "automataComposingLen":I
    .restart local v6    # "automataComposingStr":Ljava/lang/StringBuilder;
    .restart local v8    # "composingCount":I
    .restart local v9    # "currComposingLen":I
    .restart local v11    # "ingTextLen":I
    .restart local v14    # "newTextLen":I
    .restart local v15    # "remainLen":I
    .restart local v16    # "removeLen":I
    :cond_248
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v18

    if-eqz v18, :cond_2d2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2d2

    .line 2802
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_2a7

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v18

    if-eqz v18, :cond_293

    .line 2804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getKeyDetector()Lcom/pantech/inputmethod/keyboard/KeyDetector;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 2802
    :goto_290
    add-int/lit8 v10, v10, 0x1

    goto :goto_257

    .line 2806
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    goto :goto_290

    .line 2809
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->startComposingWord()V

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_217

    .line 2814
    .end local v10    # "i":I
    :cond_2d2
    invoke-interface/range {p6 .. p6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2815
    if-lez v14, :cond_2f3

    .line 2816
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 2818
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0, v14}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2825
    :cond_2f3
    if-lez v11, :cond_33a

    .line 2826
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual {v6, v14, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pantech/inputmethod/skyime/WordComposer;->setComposingWord(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2835
    :goto_335
    invoke-interface/range {p6 .. p6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_217

    .line 2832
    :cond_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    goto :goto_335

    .line 2842
    .end local v5    # "automataComposingLen":I
    .end local v6    # "automataComposingStr":Ljava/lang/StringBuilder;
    .end local v8    # "composingCount":I
    .end local v9    # "currComposingLen":I
    .end local v11    # "ingTextLen":I
    .end local v14    # "newTextLen":I
    .end local v15    # "remainLen":I
    .end local v16    # "removeLen":I
    :cond_346
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2843
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v18

    if-eqz v18, :cond_383

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_383

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v19

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->add(IIILcom/pantech/inputmethod/keyboard/KeyDetector;)V

    .line 2845
    if-eqz p6, :cond_220

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_220

    .line 2849
    :cond_383
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2850
    int-to-char v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyChar(C)V

    goto/16 :goto_220

    .line 2855
    :cond_39a
    const/16 v18, -0x2

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_3bb

    const/16 v18, 0x1

    :goto_3a4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->maybeStripSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;IIZ)Z

    move-result v17

    .line 2858
    .local v17, "swapWeakSpace":Z
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyCodePoint(I)V

    goto/16 :goto_229

    .line 2855
    .end local v17    # "swapWeakSpace":Z
    :cond_3bb
    const/16 v18, 0x0

    goto :goto_3a4

    .line 2729
    :sswitch_data_3be
    .sparse-switch
        0x3e9 -> :sswitch_1e3
        0x3ec -> :sswitch_1e7
        0x3f0 -> :sswitch_1eb
        0x3f2 -> :sswitch_1ef
        0x3f5 -> :sswitch_1f3
        0x3fd -> :sswitch_1f7
        0x401 -> :sswitch_1fb
    .end sparse-switch
.end method

.method private handleSeparator(IIII)Z
    .registers 14
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spaceState"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v4, 0x1

    .line 3065
    const/4 v0, 0x0

    .line 3067
    .local v0, "didAutoCorrect":Z
    if-ne v8, p1, :cond_3e

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->getAutomataComposingCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 3070
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 3071
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v4

    if-nez v4, :cond_31

    .line 3072
    :cond_27
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 3073
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_31

    .line 3074
    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 3077
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_31
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v4, :cond_3c

    sget-object v4, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v5, "handleSeparator: CODE_SPACE, MultitapComposing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move v1, v0

    .line 3160
    .end local v0    # "didAutoCorrect":Z
    .local v1, "didAutoCorrect":I
    :goto_3d
    return v1

    .line 3082
    .end local v1    # "didAutoCorrect":I
    .restart local v0    # "didAutoCorrect":Z
    :cond_3e
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 3083
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 3084
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3088
    :cond_54
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 3089
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_5d

    .line 3090
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3093
    :cond_5d
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 3098
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v5, v5, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v5, :cond_133

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v5, v5, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    if-nez v5, :cond_133

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v5

    if-eqz v5, :cond_133

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v5

    if-eqz v5, :cond_133

    iget-boolean v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v5, :cond_8b

    iget-boolean v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v5, :cond_133

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v5, :cond_133

    :cond_8b
    move v3, v4

    .line 3105
    .local v3, "shouldAutoCorrect":Z
    :goto_8c
    sget-boolean v5, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v5, :cond_e8

    .line 3106
    sget-object v5, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSeparator: shouldAutoCorrect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AutoCorrectEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v7, v7, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NoAutoCorrect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputTypeNoAutoCorrect:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    sget-object v5, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSeparator: mAppCompletionOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAppCompletions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_e8
    if-eqz v3, :cond_136

    const/16 v5, 0x27

    if-eq p1, v5, :cond_136

    .line 3114
    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitCurrentAutoCorrection(ILandroid/view/inputmethod/InputConnection;)V

    .line 3115
    const/4 v0, 0x1

    .line 3119
    :goto_f2
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->finishComposingWord()V

    .line 3122
    .end local v3    # "shouldAutoCorrect":Z
    :cond_f7
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyCodePoint(I)V

    .line 3125
    if-eqz v2, :cond_ff

    .line 3126
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3129
    :cond_ff
    if-ne v8, p1, :cond_13a

    .line 3130
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isEnableDoubleSpace()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3131
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->maybeDoubleSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 3132
    iput v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 3136
    :cond_10f
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->startDoubleSpacesTimer()V

    .line 3137
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v4

    if-nez v4, :cond_124

    .line 3138
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateSuggestions()V

    .line 3139
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateBigramPredictions()V

    .line 3148
    :cond_124
    :goto_124
    int-to-char v4, p1

    invoke-static {v4, p2, p3}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onSeparator(III)V

    .line 3150
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3152
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    move v1, v0

    .line 3160
    .restart local v1    # "didAutoCorrect":I
    goto/16 :goto_3d

    .line 3098
    .end local v1    # "didAutoCorrect":I
    :cond_133
    const/4 v3, 0x0

    goto/16 :goto_8c

    .line 3117
    .restart local v3    # "shouldAutoCorrect":Z
    :cond_136
    invoke-virtual {p0, v2, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    goto :goto_f2

    .line 3145
    .end local v3    # "shouldAutoCorrect":Z
    :cond_13a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    goto :goto_124
.end method

.method private handleSeparatorCJI(IIII)Z
    .registers 16
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spaceState"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3167
    const/4 v0, 0x0

    .line 3170
    .local v0, "didAutoCorrect":Z
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 3171
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 3172
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3176
    :cond_1a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3177
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_23

    .line 3178
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3181
    :cond_23
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v7

    if-eqz v7, :cond_c1

    iget v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    if-ne v7, v10, :cond_c1

    .line 3188
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v7, v7, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v7, :cond_129

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v7, v7, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    if-nez v7, :cond_129

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v7

    if-eqz v7, :cond_129

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v7

    if-eqz v7, :cond_129

    iget-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v7, :cond_55

    iget-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v7, :cond_129

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v7, :cond_129

    :cond_55
    move v4, v5

    .line 3195
    .local v4, "shouldAutoCorrect":Z
    :goto_56
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v7, :cond_b2

    .line 3196
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSeparator: shouldAutoCorrect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AutoCorrectEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v9, v9, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NoAutoCorrect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputTypeNoAutoCorrect:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSeparator: mAppCompletionOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mAppCompletions="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_b2
    if-eqz v4, :cond_12c

    const/16 v7, 0x27

    if-eq p1, v7, :cond_12c

    .line 3204
    invoke-direct {p0, p1, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitCurrentAutoCorrection(ILandroid/view/inputmethod/InputConnection;)V

    .line 3205
    const/4 v0, 0x1

    .line 3209
    :goto_bc
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/WordComposer;->finishComposingWord()V

    .line 3212
    .end local v4    # "shouldAutoCorrect":Z
    :cond_c1
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/CharSequence;

    const-string v7, "."

    aput-object v7, v3, v6

    const-string v7, ","

    aput-object v7, v3, v5

    const/4 v7, 0x2

    const-string v8, "?"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "!"

    aput-object v8, v3, v7

    .line 3215
    .local v3, "separator":[Ljava/lang/CharSequence;
    iget v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    .line 3216
    iget v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    array-length v8, v3

    if-ge v7, v8, :cond_e5

    iget v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    if-ne v7, v10, :cond_e7

    .line 3217
    :cond_e5
    iput v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    .line 3219
    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3220
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3221
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/pantech/inputmethod/skyime/WordComposer;->setComposingWord(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 3222
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/skyime/WordComposer;->startComposingWord()V

    .line 3223
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v6, v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 3224
    if-eqz v1, :cond_112

    .line 3225
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3228
    :cond_112
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postMultitapTimeout()V

    .line 3230
    if-eqz v1, :cond_11c

    .line 3231
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3237
    :cond_11c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    .line 3239
    int-to-char v5, p1

    invoke-static {v5, p2, p3}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onSeparator(III)V

    .line 3241
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3248
    return v0

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "separator":[Ljava/lang/CharSequence;
    :cond_129
    move v4, v6

    .line 3188
    goto/16 :goto_56

    .line 3207
    .restart local v4    # "shouldAutoCorrect":Z
    :cond_12c
    invoke-virtual {p0, v1, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    goto :goto_bc
.end method

.method private handleTab()V
    .registers 5

    .prologue
    .line 4593
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4594
    .local v1, "imeOptions":I
    invoke-static {v1}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v1}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 4596
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendDownUpKeyEvents(I)V

    .line 4614
    :cond_17
    :goto_17
    return-void

    .line 4600
    :cond_18
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4601
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_17

    .line 4606
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCase()Z

    move-result v2

    .line 4607
    .local v2, "isManualTemporaryUpperCase":Z
    invoke-static {v1}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-eqz v3, :cond_30

    if-nez v2, :cond_30

    .line 4609
    invoke-static {v0}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionNext(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_17

    .line 4610
    :cond_30
    invoke-static {v1}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    .line 4612
    invoke-static {v0}, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionPrevious(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_17
.end method

.method private initAllComposing()V
    .registers 2

    .prologue
    .line 4543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 4544
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 4545
    return-void
.end method

.method private initAutomata()V
    .registers 3

    .prologue
    .line 4375
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_9

    .line 4376
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 4378
    :cond_9
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_12

    .line 4379
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 4381
    :cond_12
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_1b

    .line 4382
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 4385
    :cond_1b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v0

    if-nez v0, :cond_33

    .line 4386
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4388
    :cond_33
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutomataComposingCount(I)V

    .line 4390
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMultitap()V

    .line 4392
    return-void
.end method

.method private initSuggest()V
    .registers 7

    .prologue
    .line 882
    const-string v0, "ko_KR"

    .line 884
    .local v0, "localeStr":Ljava/lang/String;
    const-string v3, "ko_KR"

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 887
    .local v2, "subtypeLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v3, :cond_6d

    .line 888
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/Suggest;->getContactsDictionary()Lcom/pantech/inputmethod/skyime/Dictionary;

    move-result-object v1

    .line 889
    .local v1, "oldContactsDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/Suggest;->close()V

    .line 893
    :goto_17
    new-instance v3, Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-direct {v3}, Lcom/pantech/inputmethod/skyime/Suggest;-><init>()V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    .line 894
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_2d

    .line 895
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget v4, v4, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/skyime/Suggest;->setAutoCorrectionThreshold(F)V

    .line 898
    :cond_2d
    invoke-static {p0, v2}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsMainDictionaryAvailable:Z

    .line 901
    new-instance v3, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;

    const-string v4, "ko_KR"

    invoke-direct {v3, p0, v4}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 902
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    check-cast v3, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsUserDictionaryAvailable:Z

    .line 907
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/skyime/Suggest;->setUserDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 909
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetContactsDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 915
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v3, :cond_5a

    .line 916
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 917
    :cond_5a
    const-string v3, "ko_KR"

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v3, v4, v5}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->getInstance(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    .line 919
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/skyime/Suggest;->setUserHistoryDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 920
    return-void

    .line 891
    .end local v1    # "oldContactsDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_6d
    const/4 v1, 0x0

    .restart local v1    # "oldContactsDictionary":Lcom/pantech/inputmethod/skyime/Dictionary;
    goto :goto_17
.end method

.method private static isAlphabet(I)Z
    .registers 2
    .param p0, "code"    # I

    .prologue
    .line 1908
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method private isAutomataComposing()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4396
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4397
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v1}, Lcom/pantech/inputmethod/skyime/Automata;->isMultitapActive()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4403
    :cond_11
    :goto_11
    return v0

    .line 4399
    :cond_12
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4400
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v1}, Lcom/pantech/inputmethod/skyime/Automata;->isMultitapActive()Z

    move-result v1

    if-nez v1, :cond_11

    .line 4403
    :cond_22
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isEnableDoubleSpace()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4811
    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    invoke-static {v3}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_12

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    invoke-static {v3}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_12
    move v0, v1

    .line 4814
    .local v0, "password":Z
    :goto_13
    if-nez v0, :cond_20

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isDoubleSpace2Perid()Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_1d
    return v1

    .end local v0    # "password":Z
    :cond_1e
    move v0, v2

    .line 4811
    goto :goto_13

    .restart local v0    # "password":Z
    :cond_20
    move v1, v2

    .line 4814
    goto :goto_1d
.end method

.method private isFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1414
    const/4 v0, 0x0

    return v0
.end method

.method private isHangulConsonant(C)Z
    .registers 3
    .param p1, "code"    # C

    .prologue
    .line 4841
    const/16 v0, 0x3131

    if-lt p1, v0, :cond_a

    const/16 v0, 0x314e

    if-gt p1, v0, :cond_a

    .line 4842
    const/4 v0, 0x1

    .line 4844
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isHangulSyllables(C)Z
    .registers 3
    .param p1, "code"    # C

    .prologue
    .line 4834
    const v0, 0xac00

    if-lt p1, v0, :cond_c

    const v0, 0xd7af

    if-gt p1, v0, :cond_c

    .line 4835
    const/4 v0, 0x1

    .line 4837
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isLockKeyEvent()Z
    .registers 2

    .prologue
    .line 4848
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLockKeyEvent:Z

    return v0
.end method

.method private launchCustomPopupSetting()V
    .registers 3

    .prologue
    .line 4959
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleClose()V

    .line 4960
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4961
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4962
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->startActivity(Landroid/content/Intent;)V

    .line 4963
    return-void
.end method

.method private launchKeyboardHeightControlSetting()V
    .registers 3

    .prologue
    .line 4966
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleClose()V

    .line 4967
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4968
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4969
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->startActivity(Landroid/content/Intent;)V

    .line 4976
    sget-object v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1b

    .line 4977
    sget-object v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 4979
    :cond_1b
    return-void
.end method

.method private launchSettingsClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4201
    .local p1, "settingsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/preference/PreferenceActivity;>;"
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleClose()V

    .line 4202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4203
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4204
    const-string v1, "vita_mode"

    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVitaMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4205
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4206
    const-string v1, "show_home_as_up"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4207
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->startActivity(Landroid/content/Intent;)V

    .line 4208
    return-void
.end method

.method private listenForPhoneState(Z)V
    .registers 5
    .param p1, "start"    # Z

    .prologue
    .line 818
    if-eqz p1, :cond_c

    .line 819
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 823
    :goto_b
    return-void

    .line 821
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_b
.end method

.method private maybeDoubleSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)Z
    .registers 9
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1856
    if-nez p1, :cond_9

    .line 1869
    :cond_8
    :goto_8
    return v1

    .line 1857
    :cond_9
    invoke-interface {p1, v5, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1858
    .local v0, "lastThree":Ljava/lang/CharSequence;
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_8

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->canBeFollowedByPeriod(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_8

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1863
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1864
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1865
    const-string v1, ". "

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1866
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    move v1, v2

    .line 1867
    goto :goto_8
.end method

.method private maybeStripSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;IIZ)Z
    .registers 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "code"    # I
    .param p3, "spaceState"    # I
    .param p4, "isFromSuggestionStrip"    # Z

    .prologue
    .line 2667
    const/4 v0, 0x0

    return v0
.end method

.method private onFinishInputInternal()V
    .registers 3

    .prologue
    .line 1425
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInput()V

    .line 1427
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->commit()V

    .line 1429
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1430
    .local v0, "inputView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1431
    :cond_11
    return-void
.end method

.method private onFinishInputViewInternal(Z)V
    .registers 5
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1434
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInputView(Z)V

    .line 1435
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onFinishInputView()V

    .line 1436
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1437
    .local v0, "inputView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_18

    .line 1438
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 1439
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(ZLandroid/graphics/Rect;)V

    .line 1442
    :cond_18
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1445
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->clearEditMode()V

    .line 1446
    return-void
.end method

.method private onSettingsKeyPressed()V
    .registers 1

    .prologue
    .line 1921
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->launchSettings()V

    .line 1923
    return-void
.end method

.method private onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1172
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1174
    if-eqz p1, :cond_11

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_11

    .line 1175
    invoke-direct {p0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 1176
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 1179
    :cond_11
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCoreHW()V

    .line 1180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1181
    :cond_2c
    iput-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    .line 1186
    :goto_2e
    if-eqz p1, :cond_56

    .line 1187
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 1188
    .local v0, "variation":I
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v4, :cond_56

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v2

    if-nez v2, :cond_54

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_54

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_54

    const/16 v2, 0x10

    if-ne v0, v2, :cond_56

    .line 1194
    :cond_54
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    .line 1199
    .end local v0    # "variation":I
    :cond_56
    if-eqz p1, :cond_5e

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isWebInputType(I)Z

    move-result v1

    :cond_5e
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsWebInputType:Z

    .line 1201
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1202
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 1205
    :cond_71
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGestureHelpDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGestureHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1206
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGestureHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 1208
    :cond_82
    return-void

    .line 1184
    :cond_83
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    goto :goto_2e
.end method

.method private onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 16
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1229
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1230
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 1231
    .local v6, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 1234
    .local v3, "inputView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz p1, :cond_57

    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v7, :cond_57

    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v8, "com.pantech.skyime.mode=vita"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1237
    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v8, "com.pantech.skyime.mode=vita_init"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1238
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->clearPreference()V

    .line 1240
    :cond_28
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVitaMode:Z

    .line 1245
    :goto_2b
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v7, :cond_38

    .line 1246
    if-nez p1, :cond_5b

    .line 1247
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v8, "onStartInputView: attribute is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_38
    :goto_38
    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/TargetApplicationGetter;->getCachedApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1273
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_54

    .line 1274
    new-instance v7, Lcom/pantech/inputmethod/skyime/TargetApplicationGetter;

    invoke-direct {v7, p0, p0}, Lcom/pantech/inputmethod/skyime/TargetApplicationGetter;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/skyime/TargetApplicationGetter$OnTargetApplicationKnownListener;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/pantech/inputmethod/skyime/TargetApplicationGetter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1280
    :cond_54
    if-nez v3, :cond_148

    .line 1397
    :goto_56
    return-void

    .line 1242
    :cond_57
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVitaMode:Z

    goto :goto_2b

    .line 1249
    :cond_5b
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "inputType=0x%08x imeOptions=0x%08x privateImeOptions=%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "actionLabel=%s actionId=%d initialSelStart=%d initialSelEnd=%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initialCapsMode=0x%08x hintText=%s label=%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fieldId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fieldName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " extras="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 1285
    :cond_148
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->resetInputMode()V

    .line 1299
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    .line 1302
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    .line 1303
    .local v0, "accessUtils":Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_15e

    .line 1304
    invoke-virtual {v0, v3, p1, p2}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->onStartInputViewInternal(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1306
    :cond_15e
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 1310
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateFullscreenMode()V

    .line 1311
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    .line 1312
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    .line 1313
    new-instance v7, Lcom/pantech/inputmethod/skyime/InputAttributes;

    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->isFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v8

    invoke-direct {v7, p1, v8}, Lcom/pantech/inputmethod/skyime/InputAttributes;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    .line 1314
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1316
    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 1317
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1318
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 1319
    const/4 v7, 0x0

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDeleteCount:I

    .line 1320
    const/4 v7, 0x0

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 1321
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnableModeChage:Z

    .line 1322
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    .line 1329
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadSettings()V

    .line 1330
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateCorrectionMode()V

    .line 1335
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getVibLevel(Landroid/view/inputmethod/EditorInfo;)I

    move-result v7

    iput v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrivateVibLevel:I

    .line 1337
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v7, :cond_1b1

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v7, v7, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v7, :cond_1b1

    .line 1338
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget v8, v8, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectionThreshold:F

    invoke-virtual {v7, v8}, Lcom/pantech/inputmethod/skyime/Suggest;->setAutoCorrectionThreshold(F)V

    .line 1340
    :cond_1b1
    if-eqz p2, :cond_253

    .line 1341
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;Z)V

    .line 1346
    :goto_1b9
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 1348
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v7, :cond_1c5

    .line 1349
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 1351
    :cond_1c5
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsStripVisible()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1354
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 1355
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1357
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v7, v7, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mKeyPreviewPopupOn:Z

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget v8, v8, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mKeyPreviewPopupDismissDelay:I

    invoke-virtual {v3, v7, v8}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 1359
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 1363
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    .line 1373
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/Edit;->hideOverlayPopup()V

    .line 1376
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1377
    .local v4, "keypadOpacity":F
    if-eqz p1, :cond_249

    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_249

    iget-object v7, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v8, "com.lge.ime.opacity:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_249

    .line 1379
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1380
    .local v2, "imeOption":Ljava/lang/String;
    const-string v7, "com.lge.ime.opacity:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, "strValue":Ljava/lang/String;
    :try_start_217
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1383
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_249

    const/high16 v7, 0x42c80000    # 100.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_249

    .line 1384
    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v7, v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v4, v7, v8

    .line 1385
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v7, :cond_249

    .line 1386
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RCS Keypad opacity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_249
    .catch Ljava/lang/NumberFormatException; {:try_start_217 .. :try_end_249} :catch_25a

    .line 1394
    .end local v2    # "imeOption":Ljava/lang/String;
    .end local v5    # "strValue":Ljava/lang/String;
    :cond_249
    :goto_249
    invoke-virtual {v3, v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->setAlpha(F)V

    .line 1395
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v7, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setAlpha(F)V

    goto/16 :goto_56

    .line 1343
    .end local v4    # "keypadOpacity":F
    :cond_253
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v6, p1, v7}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;)V

    goto/16 :goto_1b9

    .line 1389
    .restart local v2    # "imeOption":Ljava/lang/String;
    .restart local v4    # "keypadOpacity":F
    .restart local v5    # "strValue":Ljava/lang/String;
    :catch_25a
    move-exception v1

    .line 1390
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1391
    sget-object v7, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v8, "RCS Keypad opacity error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_249
.end method

.method private performEditorAction(I)V
    .registers 3
    .param p1, "actionId"    # I

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1955
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 1956
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 1958
    :cond_9
    return-void
.end method

.method private playKeyClick(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 4103
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_f

    .line 4104
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4105
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateRingerMode()V

    .line 4108
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSoundOn()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4110
    sparse-switch p1, :sswitch_data_2a

    .line 4121
    const/4 v0, 0x5

    .line 4125
    .local v0, "sound":I
    :goto_19
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_22

    .line 4137
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 4141
    .end local v0    # "sound":I
    :cond_22
    return-void

    .line 4112
    :sswitch_23
    const/4 v0, 0x7

    .line 4113
    .restart local v0    # "sound":I
    goto :goto_19

    .line 4115
    .end local v0    # "sound":I
    :sswitch_25
    const/16 v0, 0x8

    .line 4116
    .restart local v0    # "sound":I
    goto :goto_19

    .line 4118
    .end local v0    # "sound":I
    :sswitch_28
    const/4 v0, 0x6

    .line 4119
    .restart local v0    # "sound":I
    goto :goto_19

    .line 4110
    :sswitch_data_2a
    .sparse-switch
        -0x5 -> :sswitch_23
        0xa -> :sswitch_25
        0x20 -> :sswitch_28
    .end sparse-switch
.end method

.method private refreshKeyboard()V
    .registers 5

    .prologue
    .line 4853
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 4854
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4855
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;Z)V

    .line 4857
    :cond_19
    return-void
.end method

.method private static removeTrailingSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)V
    .registers 6
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1886
    if-nez p0, :cond_5

    .line 1892
    :cond_4
    :goto_4
    return-void

    .line 1887
    :cond_5
    invoke-interface {p0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1888
    .local v0, "lastOne":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 1890
    invoke-interface {p0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4
.end method

.method private resetComposingState(Z)V
    .registers 3
    .param p1, "alsoResetLastComposedWord"    # Z

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->reset()V

    .line 1786
    if-eqz p1, :cond_b

    .line 1787
    sget-object v0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .line 1788
    :cond_b
    return-void
.end method

.method private resetContactsDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V
    .registers 6
    .param p1, "oldContactsDictionary"    # Lcom/pantech/inputmethod/skyime/Dictionary;

    .prologue
    .line 932
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v2, v2, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mUseContactsDict:Z

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 935
    .local v1, "shouldSetDictionary":Z
    :goto_b
    if-nez v1, :cond_1f

    .line 939
    if-eqz p1, :cond_12

    .line 940
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    .line 941
    :cond_12
    const/4 v0, 0x0

    .line 961
    .local v0, "dictionaryToUse":Lcom/pantech/inputmethod/skyime/Dictionary;
    :goto_13
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v2, :cond_1c

    .line 962
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->setContactsDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 964
    :cond_1c
    return-void

    .line 932
    .end local v0    # "dictionaryToUse":Lcom/pantech/inputmethod/skyime/Dictionary;
    .end local v1    # "shouldSetDictionary":Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_b

    .line 942
    .restart local v1    # "shouldSetDictionary":Z
    :cond_1f
    if-eqz p1, :cond_29

    move-object v2, p1

    .line 947
    check-cast v2, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;

    invoke-virtual {v2, p0}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;->reopen(Landroid/content/Context;)V

    .line 951
    move-object v0, p1

    .restart local v0    # "dictionaryToUse":Lcom/pantech/inputmethod/skyime/Dictionary;
    goto :goto_13

    .line 954
    .end local v0    # "dictionaryToUse":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_29
    new-instance v0, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;

    const/4 v2, 0x4

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p0, v2, v3}, Lcom/pantech/inputmethod/skyime/ContactsBinaryDictionary;-><init>(Landroid/content/Context;ILjava/util/Locale;)V

    .restart local v0    # "dictionaryToUse":Lcom/pantech/inputmethod/skyime/Dictionary;
    goto :goto_13
.end method

.method private resetEntireInputState()V
    .registers 3

    .prologue
    .line 1775
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 1776
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateSuggestions()V

    .line 1777
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 1778
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1779
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    .line 1780
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1782
    :cond_13
    return-void
.end method

.method private resetMainDict()V
    .registers 4

    .prologue
    .line 4795
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4796
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 4798
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 4799
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4804
    :goto_13
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v1, :cond_1c

    .line 4805
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v1, p0, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->InitMainDict(Landroid/content/Context;Ljava/util/Locale;)V

    .line 4808
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1c
    return-void

    .line 4801
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1d
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    goto :goto_13
.end method

.method private resetMultitap()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 4347
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 4348
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "resetMultitap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelMultitapTimeout()V

    .line 4353
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_1a

    .line 4354
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->resetMultitap()V

    .line 4356
    :cond_1a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_28

    .line 4357
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->resetMultitap()V

    .line 4358
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 4363
    :cond_28
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4364
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposing()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 4365
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4368
    :cond_4b
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    if-eq v0, v2, :cond_58

    .line 4369
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4370
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    .line 4372
    :cond_58
    return-void
.end method

.method private revertCommit(Landroid/view/inputmethod/InputConnection;)V
    .registers 14
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 3790
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget-object v4, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mPrevWord:Ljava/lang/CharSequence;

    .line 3791
    .local v4, "previousWord":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget-object v3, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mTypedWord:Ljava/lang/String;

    .line 3792
    .local v3, "originallyTypedWord":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget-object v1, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    .line 3793
    .local v1, "committedWord":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3794
    .local v0, "cancelLength":I
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget v7, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mSeparatorCode:I

    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->getSeparatorLength(I)I

    move-result v5

    .line 3797
    .local v5, "separatorLength":I
    add-int v2, v0, v5

    .line 3798
    .local v2, "deleteLength":I
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v7, :cond_6c

    .line 3799
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 3800
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "revertCommit, but we are composing a word"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3802
    :cond_31
    invoke-interface {p1, v2, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3805
    .local v6, "wordBeforeCursor":Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 3806
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertCommit check failed: we thought we were reverting \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", but before the cursor we found \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3811
    .end local v6    # "wordBeforeCursor":Ljava/lang/String;
    :cond_6c
    invoke-interface {p1, v2, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3812
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_88

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 3813
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserHistoryDictionary:Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/pantech/inputmethod/skyime/UserHistoryDictionary;->cancelAddingUserHistory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3816
    :cond_88
    if-eqz v5, :cond_92

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->didCommitTypedWord()Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 3819
    :cond_92
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    invoke-virtual {v7, v8}, Lcom/pantech/inputmethod/skyime/WordComposer;->resumeSuggestionOnLastComposedWord(Lcom/pantech/inputmethod/skyime/LastComposedWord;)V

    .line 3820
    invoke-interface {p1, v3, v11}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3830
    :goto_9c
    sget-object v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .line 3831
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 3832
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3833
    return-void

    .line 3822
    :cond_ab
    invoke-interface {p1, v3, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3824
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget v7, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mSeparatorCode:I

    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyCodePoint(I)V

    .line 3825
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    iget v7, v7, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mSeparatorCode:I

    invoke-static {v7, v10, v10}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onSeparator(III)V

    goto :goto_9c
.end method

.method private revertDoubleSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)Z
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3837
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 3840
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3841
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    const-string v3, ". "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3845
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert double-space combo but we didn\'t find \". \" just before the cursor."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    :cond_1f
    :goto_1f
    return v1

    .line 3849
    :cond_20
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3850
    const-string v1, "  "

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v1, v2

    .line 3851
    goto :goto_1f
.end method

.method private static revertSwapPunctuation(Landroid/view/inputmethod/InputConnection;)Z
    .registers 7
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3857
    invoke-interface {p0, v5, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3860
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    const/16 v3, 0x20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_22

    .line 3865
    :cond_15
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v1, :cond_20

    sget-object v1, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert a swap of punctuation but we didn\'t find a space just before the cursor."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move v1, v2

    .line 3873
    :goto_21
    return v1

    .line 3869
    :cond_22
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3870
    invoke-interface {p0, v5, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3872
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_21
.end method

.method private static sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3725
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3726
    .local v0, "beforeText":Ljava/lang/CharSequence;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveRecentKeys()V
    .registers 6

    .prologue
    .line 2035
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-lez v4, :cond_29

    .line 2036
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2037
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2038
    .local v0, "code":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2040
    .end local v0    # "code":Ljava/lang/Object;
    :cond_20
    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->listToJsonStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 2041
    .local v2, "jsonStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v4, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->writeEmojiRecentKeys(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2043
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_29
    return-void
.end method

.method private sendKeyCodePoint(I)V
    .registers 9
    .param p1, "code"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1975
    const/16 v2, 0x30

    if-lt p1, v2, :cond_12

    const/16 v2, 0x39

    if-gt p1, v2, :cond_12

    .line 1976
    int-to-char v2, p1

    invoke-super {p0, v2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->sendKeyChar(C)V

    .line 2031
    :cond_11
    :goto_11
    return-void

    .line 1980
    :cond_12
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1981
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_11

    .line 1985
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mMultitapCount:I

    if-eq v2, v4, :cond_1f

    .line 1986
    invoke-virtual {p0, v0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 1988
    :cond_1f
    const/16 v2, 0xa

    if-ne v2, p1, :cond_28

    .line 1991
    int-to-char v2, p1

    invoke-super {p0, v2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->sendKeyChar(C)V

    goto :goto_11

    .line 1993
    :cond_28
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    aput p1, v2, v5

    invoke-direct {v1, v2, v5, v3}, Ljava/lang/String;-><init>([III)V

    .line 1994
    .local v1, "text":Ljava/lang/String;
    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1997
    if-le p1, v6, :cond_11

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    .line 1999
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lez v2, :cond_50

    .line 2000
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 2003
    :cond_50
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2005
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-le v2, v6, :cond_66

    .line 2006
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 2008
    :cond_66
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->saveRecentKeys()V

    goto :goto_11
.end method

.method private static sendUpDownEnterOrBackspace(ILandroid/view/inputmethod/InputConnection;)V
    .registers 21
    .param p0, "code"    # I
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1962
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    move/from16 v9, p0

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1965
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-wide v10, v4

    move/from16 v13, p0

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1968
    return-void
.end method

.method private setAutoCorrectionIndicator(Z)V
    .registers 5
    .param p1, "newAutoCorrectionIndicator"    # Z

    .prologue
    .line 3344
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3345
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7

    .line 3353
    :cond_6
    :goto_6
    return-void

    .line 3346
    :cond_7
    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsAutoCorrectionIndicatorOn:Z

    if-eq v2, p1, :cond_6

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3348
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 3349
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getTextWithUnderline(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3351
    .local v1, "textWithUnderline":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_6
.end method

.method private setSuggestionStripShown(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 1687
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1688
    return-void
.end method

.method private setSuggestionStripShownInternal(ZZ)V
    .registers 8
    .param p1, "shown"    # Z
    .param p2, "needsInputViewShown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1671
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 1672
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 1673
    .local v1, "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    .line 1674
    .local v0, "inputViewShown":Z
    :goto_17
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_1d

    if-eqz v0, :cond_2e

    :cond_1d
    const/4 v2, 0x1

    .line 1676
    .local v2, "shouldShowSuggestions":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1677
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_30

    :goto_28
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    .end local v0    # "inputViewShown":Z
    .end local v1    # "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .end local v2    # "shouldShowSuggestions":Z
    :cond_2b
    :goto_2b
    return-void

    .restart local v1    # "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    :cond_2c
    move v0, v3

    .line 1673
    goto :goto_17

    .restart local v0    # "inputViewShown":Z
    :cond_2e
    move v2, v3

    .line 1674
    goto :goto_1e

    .line 1677
    .restart local v2    # "shouldShowSuggestions":Z
    :cond_30
    const/16 v3, 0x8

    goto :goto_28

    .line 1680
    :cond_33
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_3b

    :goto_37
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    :cond_3b
    const/4 v3, 0x4

    goto :goto_37
.end method

.method private setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)V
    .registers 4
    .param p1, "words"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "isAutoCorrection"    # Z

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v0, :cond_e

    .line 3337
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;)V

    .line 3338
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 3340
    :cond_e
    return-void
.end method

.method private showHanjaDialog(Landroid/widget/ListAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 12
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "okBtn"    # Ljava/lang/String;
    .param p6, "cancelBtn"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 4882
    new-instance v0, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-direct {v0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;-><init>()V

    .line 4883
    .local v0, "service":Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x10306df

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1, p7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    .line 4890
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHanjaChoosingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    .line 4891
    return-void
.end method

.method private showHanjaPicker()V
    .registers 21

    .prologue
    .line 4894
    invoke-static {}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->getInstance()Lcom/pantech/inputmethod/skyime/HanjaDictionary;

    move-result-object v17

    .line 4895
    .local v17, "hanjaDictionary":Lcom/pantech/inputmethod/skyime/HanjaDictionary;
    const/4 v3, 0x0

    .line 4896
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v18

    .line 4897
    .local v18, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4900
    .local v16, "ch":Ljava/lang/CharSequence;
    if-eqz v16, :cond_26

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4a

    .line 4903
    :cond_26
    const v2, 0x7f0c00ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4904
    .local v5, "title":Ljava/lang/String;
    const v2, 0x7f0c00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4905
    .local v6, "message":Ljava/lang/String;
    const v2, 0x7f0c00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4906
    .local v7, "okBtn":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->showHanjaDialog(Landroid/widget/ListAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4940
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "okBtn":Ljava/lang/String;
    :goto_49
    return-void

    .line 4911
    .end local v5    # "title":Ljava/lang/String;
    :cond_4a
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->getHanja(CI)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mItems:[Ljava/lang/String;

    .line 4914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mItems:[Ljava/lang/String;

    if-nez v2, :cond_9c

    .line 4917
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->getHanja(CI)[Ljava/lang/String;

    move-result-object v19

    .line 4919
    .local v19, "result":[Ljava/lang/String;
    if-nez v19, :cond_96

    .line 4920
    const v2, 0x7f0c00ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4921
    .restart local v5    # "title":Ljava/lang/String;
    const v2, 0x7f0c00f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4922
    .restart local v6    # "message":Ljava/lang/String;
    const v2, 0x7f0c00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4923
    .restart local v7    # "okBtn":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->showHanjaDialog(Landroid/widget/ListAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_49

    .line 4926
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "okBtn":Ljava/lang/String;
    :cond_96
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mItems:[Ljava/lang/String;

    .line 4930
    .end local v19    # "result":[Ljava/lang/String;
    :cond_9c
    if-eqz v3, :cond_a1

    .line 4931
    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 4934
    :cond_a1
    new-instance v3, Landroid/widget/ArrayAdapter;

    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x7f030018

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mItems:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4936
    .restart local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x7f0c00ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4937
    .restart local v5    # "title":Ljava/lang/String;
    const v2, 0x7f0c00e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4939
    .local v14, "cancelBtn":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->listener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v11, v5

    invoke-direct/range {v8 .. v15}, Lcom/pantech/inputmethod/skyime/SkyIME;->showHanjaDialog(Landroid/widget/ListAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_49
.end method

.method private showStatusIcon()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 4411
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v2, :cond_2a

    .line 4412
    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v3, "showStatusIcon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyboardSwitcher.getKeyboardLanguage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    :cond_2a
    const/4 v1, 0x0

    .line 4417
    .local v1, "retID":I
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    .line 4419
    .local v0, "language":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    .line 4420
    const v1, 0x7f02019c

    .line 4436
    :goto_37
    if-eqz v1, :cond_3c

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon(I)V

    .line 4437
    :cond_3c
    return-void

    .line 4421
    :cond_3d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    .line 4422
    const v1, 0x7f02019b

    goto :goto_37

    .line 4423
    :cond_44
    const/4 v2, 0x3

    if-ne v0, v2, :cond_60

    .line 4424
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    if-eq v2, v5, :cond_58

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5c

    .line 4426
    :cond_58
    const v1, 0x7f02019d

    goto :goto_37

    .line 4428
    :cond_5c
    const v1, 0x7f02019a

    goto :goto_37

    .line 4430
    :cond_60
    if-eq v0, v5, :cond_65

    const/4 v2, 0x6

    if-ne v0, v2, :cond_69

    .line 4431
    :cond_65
    const v1, 0x7f02019a

    goto :goto_37

    .line 4433
    :cond_69
    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method private showSubtypeSelectorAndSettings()V
    .registers 7

    .prologue
    .line 4211
    const v4, 0x7f0c006a

    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4212
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0c00ac

    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const v5, 0x7f0c0069

    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4217
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/pantech/inputmethod/skyime/SkyIME$7;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$7;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 4234
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4237
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    .line 4238
    return-void
.end method

.method private specificTldProcessingOnTextInput(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2422
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1a

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1a

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2435
    .end local p2    # "text":Ljava/lang/CharSequence;
    :cond_1a
    :goto_1a
    return-object p2

    .line 2429
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_1b
    iput v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 2430
    invoke-interface {p1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2431
    .local v0, "lastOne":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_1a

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1a

    .line 2433
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1a
.end method

.method private swapSwapperAndSpaceWhileInBatchEdit(Landroid/view/inputmethod/InputConnection;)V
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1844
    if-nez p1, :cond_6

    .line 1853
    :cond_5
    :goto_5
    return-void

    .line 1845
    :cond_6
    invoke-interface {p1, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1847
    .local v0, "lastTwo":Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1849
    invoke-interface {p1, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1851
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_5
.end method

.method private updateCorrectionMode()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4178
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/InputAttributes;->mInputTypeNoAutoCorrect:Z

    if-nez v3, :cond_1f

    move v0, v1

    .line 4180
    .local v0, "shouldAutoCorrect":Z
    :goto_f
    if-eqz v0, :cond_21

    :goto_11
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    .line 4181
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v1, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramSuggestionEnabled:Z

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    const/4 v1, 0x2

    :goto_1c
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    .line 4183
    return-void

    .end local v0    # "shouldAutoCorrect":Z
    :cond_1f
    move v0, v2

    .line 4178
    goto :goto_f

    .restart local v0    # "shouldAutoCorrect":Z
    :cond_21
    move v1, v2

    .line 4180
    goto :goto_11

    .line 4181
    :cond_23
    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    goto :goto_1c
.end method

.method private updateHangulType()V
    .registers 5

    .prologue
    .line 4271
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-nez v2, :cond_7

    .line 4272
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCore()V

    .line 4275
    :cond_7
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v2, :cond_2d

    .line 4276
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKorKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 4279
    .local v0, "inputType":I
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v2}, Lcom/pantech/inputmethod/skyime/Automata;->init()V

    .line 4281
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDisplayOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    .line 4283
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isDoubleKorQwerty(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4284
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lcom/pantech/inputmethod/skyime/Automata;->setInputType(I)V

    .line 4317
    .end local v0    # "inputType":I
    :cond_2d
    :goto_2d
    return-void

    .line 4286
    .restart local v0    # "inputType":I
    :cond_2e
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pantech/inputmethod/skyime/Automata;->setInputType(I)V

    goto :goto_2d

    .line 4289
    :cond_35
    const/4 v1, 0x0

    .line 4290
    .local v1, "korType":I
    packed-switch v0, :pswitch_data_60

    .line 4311
    :pswitch_39
    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4314
    :goto_43
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v2, v1}, Lcom/pantech/inputmethod/skyime/Automata;->setInputType(I)V

    goto :goto_2d

    .line 4292
    :pswitch_49
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isDoubleKorQwerty(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 4293
    const/4 v1, 0x6

    goto :goto_43

    .line 4295
    :cond_55
    const/4 v1, 0x0

    .line 4297
    goto :goto_43

    .line 4299
    :pswitch_57
    const/4 v1, 0x1

    .line 4300
    goto :goto_43

    .line 4302
    :pswitch_59
    const/4 v1, 0x2

    .line 4303
    goto :goto_43

    .line 4305
    :pswitch_5b
    const/4 v1, 0x3

    .line 4306
    goto :goto_43

    .line 4308
    :pswitch_5d
    const/4 v1, 0x4

    .line 4309
    goto :goto_43

    .line 4290
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_57
        :pswitch_39
        :pswitch_49
        :pswitch_59
        :pswitch_5b
        :pswitch_5d
    .end packed-switch
.end method

.method private updateRingerMode()V
    .registers 4

    .prologue
    .line 4071
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_13

    .line 4072
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    .line 4073
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_13

    .line 4089
    :cond_12
    :goto_12
    return-void

    .line 4077
    :cond_13
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mRingerMode:I

    .line 4079
    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mRingerMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSilentModeOn:Z

    .line 4082
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_12

    .line 4083
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4085
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "silent_mode_on"

    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSilentModeOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4086
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_12

    .line 4079
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_38
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private updateVibrateWhenRinging()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 804
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateWhenRinging:Z

    .line 808
    :goto_f
    return-void

    .line 806
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateWhenRinging:Z

    goto :goto_f
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .registers 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUserDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    check-cast v0, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/pantech/inputmethod/skyime/UserBinaryDictionary;->addWordToUserDictionary(Ljava/lang/String;I)V

    .line 1903
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 1904
    const/4 v0, 0x1

    return v0
.end method

.method public clearSuggestions()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3331
    sget-object v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->EMPTY:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)V

    .line 3332
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setAutoCorrectionIndicator(Z)V

    .line 3333
    return-void
.end method

.method public commitTyped(Landroid/view/inputmethod/InputConnection;I)V
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "separatorCode"    # I

    .prologue
    .line 1791
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1803
    :goto_8
    return-void

    .line 1792
    :cond_9
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "typedWord":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 1794
    if-eqz p1, :cond_1b

    .line 1795
    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1797
    :cond_1b
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->addToUserHistoryDictionary(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1798
    .local v0, "prevWord":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->commitWord(ILjava/lang/String;ILjava/lang/CharSequence;)Lcom/pantech/inputmethod/skyime/LastComposedWord;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    .line 1802
    .end local v0    # "prevWord":Ljava/lang/CharSequence;
    :cond_2c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateSuggestions()V

    goto :goto_8
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4244
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4246
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4247
    .local v2, "p":Landroid/util/Printer;
    const-string v3, "LatinIME state :"

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4248
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 4249
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v0, :cond_ce

    iget-object v3, v0, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v1, v3, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 4250
    .local v1, "keyboardMode":I
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Keyboard mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mIsSuggestionsRequested="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v4, v4, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCorrectionMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isComposingWord="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mAutoCorrectEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v4, v4, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCorrectEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mKeyPreviewPopupOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v4, v4, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mKeyPreviewPopupOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mInputAttributes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/InputAttributes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4257
    return-void

    .line 4249
    .end local v1    # "keyboardMode":I
    :cond_ce
    const/4 v1, -0x1

    goto/16 :goto_19
.end method

.method public enableModeChange()Z
    .registers 2

    .prologue
    .line 4589
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnableModeChage:Z

    return v0
.end method

.method public getCurrentAutoCapsState()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1816
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v5, v5, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCap:Z

    if-nez v5, :cond_8

    .line 1839
    :cond_7
    :goto_7
    return v4

    .line 1817
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1818
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_7

    .line 1820
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1821
    .local v2, "inputType":I
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_17

    .line 1822
    const/16 v4, 0x1000

    goto :goto_7

    .line 1825
    :cond_17
    and-int/lit16 v5, v2, 0x6000

    if-nez v5, :cond_31

    const/4 v3, 0x1

    .line 1827
    .local v3, "noNeedToCheckCapsMode":Z
    :goto_1c
    if-nez v3, :cond_7

    .line 1831
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1833
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1834
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_7

    .line 1839
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v4

    goto :goto_7

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "noNeedToCheckCapsMode":Z
    :cond_31
    move v3, v4

    .line 1825
    goto :goto_1c
.end method

.method public getCurrentAutoCapsStateOld()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1806
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1807
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1808
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mAutoCap:Z

    if-eqz v3, :cond_20

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_20

    .line 1810
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1812
    :cond_20
    return v2
.end method

.method public getCurrentWord()Lcom/pantech/inputmethod/skyime/WordComposer;
    .registers 2

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    return-object v0
.end method

.method public getHeightType()I
    .registers 2

    .prologue
    .line 4017
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHeightIndex:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 4407
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDisplayOrientation:I

    return v0
.end method

.method public hideWindow()V
    .registers 4

    .prologue
    .line 1575
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1576
    sget-object v1, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v2, "hideWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1582
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v2, "hideWindow: FloatingMode, send CLOSE_INPUT_METHOD_DIALOGS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1584
    .local v0, "closeDialogs":Landroid/content/Intent;
    const-string v1, "com.pantech.inputmethod.skyime.CLOSE_INPUT_METHOD_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendBroadcast(Landroid/content/Intent;)V

    .line 1589
    .end local v0    # "closeDialogs":Landroid/content/Intent;
    :cond_31
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->commit()V

    .line 1590
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onHideWindow()V

    .line 1591
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAllComposing()V

    .line 1594
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1595
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHideWindow()V

    .line 1606
    :cond_4d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardHeightControlPreference:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->setIsShowWindow(Z)V

    .line 1608
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->hideStatusIcon()V

    .line 1609
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->hideWindow()V

    .line 1610
    return-void
.end method

.method public isComposingRequested()Z
    .registers 2

    .prologue
    .line 3281
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isPhonemeSegmentation()Z

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

.method public isCursorTouchingWord()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3707
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 3708
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_9

    .line 3719
    :cond_8
    :goto_8
    return v3

    .line 3709
    :cond_9
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3710
    .local v1, "before":Ljava/lang/CharSequence;
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3711
    .local v0, "after":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v5

    if-nez v5, :cond_31

    move v3, v4

    .line 3713
    goto :goto_8

    .line 3715
    :cond_31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v4

    .line 3717
    goto :goto_8
.end method

.method public isDefaultLocaleKorean()Z
    .registers 3

    .prologue
    .line 4440
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4441
    :cond_18
    const/4 v0, 0x1

    .line 4443
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isOneHandLayout()Z
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHand:Z

    return v0
.end method

.method public isPhonemeSegmentation()Z
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 4820
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    if-eqz v2, :cond_34

    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    invoke-static {v2}, Lcom/pantech/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4824
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKorKeyboardType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    .line 4826
    .local v0, "type":I
    if-eq v0, v4, :cond_33

    const/4 v2, 0x5

    if-eq v0, v2, :cond_33

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_34

    :cond_33
    const/4 v1, 0x1

    .line 4829
    .end local v0    # "type":I
    :cond_34
    return v1
.end method

.method public isShowingPunctuationList()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3286
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-nez v1, :cond_6

    .line 3287
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mSuggestPuncList:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getSuggestions()Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isShowingSuggestionsStrip()Z
    .registers 2

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mShowSuggestionWords:Z

    return v0
.end method

.method isSoundOn()Z
    .registers 3

    .prologue
    .line 4164
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->querySoundEffectsEnabled()Z

    move-result v0

    .line 4165
    .local v0, "soundEffectsEnabled":Z
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSoundOn:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSilentModeOn:Z

    if-nez v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isSuggestionsRequested()Z
    .registers 2

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/InputAttributes;->mIsSettingsSuggestionStripOn:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputType:I

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    if-nez v0, :cond_22

    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    if-gtz v0, :cond_18

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isShowingSuggestionsStrip()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_18
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isSuggestionsStripVisible()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3301
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-nez v2, :cond_7

    .line 3309
    :cond_6
    :goto_6
    return v0

    .line 3303
    :cond_7
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 3304
    goto :goto_6

    .line 3305
    :cond_11
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v2, v2, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v2, :cond_19

    move v0, v1

    .line 3306
    goto :goto_6

    .line 3307
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isShowingSuggestionsStrip()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3309
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v0

    goto :goto_6
.end method

.method public isWordSeparator(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isWordSeparator(I)Z

    move-result v0

    return v0
.end method

.method protected launchSettings()V
    .registers 2

    .prologue
    .line 4197
    const-class v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->launchSettingsClass(Ljava/lang/Class;)V

    .line 4198
    return-void
.end method

.method loadSettings()V
    .registers 4

    .prologue
    .line 828
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "loadSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_15

    .line 830
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 831
    :cond_15
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    if-nez v0, :cond_1f

    .line 832
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .line 833
    :cond_1f
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    .line 835
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    :goto_33
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetContactsDictionary(Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 840
    invoke-static {}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isOneHandLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHand:Z

    .line 842
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isOneHandLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 844
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardHeightType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHeightIndex:I

    .line 846
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isVibrateOn(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateOn:Z

    .line 849
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateHangulType()V

    .line 850
    return-void

    .line 835
    :cond_5d
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Suggest;->getContactsDictionary()Lcom/pantech/inputmethod/skyime/Dictionary;

    move-result-object v0

    goto :goto_33
.end method

.method public loadTouchEffectInfo()V
    .registers 3

    .prologue
    .line 4476
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4477
    :try_start_3
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->startTouchEffectInfoLoadingTaskLocked()V

    .line 4478
    monitor-exit v1

    .line 4479
    return-void

    .line 4478
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public loadTouchEffectInfoAsync()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4490
    const/4 v1, 0x0

    .line 4492
    .local v1, "index":I
    :try_start_2
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "index_of_keyboard_feedback_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_5b

    move-result v1

    .line 4499
    :goto_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_60

    .line 4500
    iput-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSoundOn:Z

    .line 4509
    :goto_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_vibration_level"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibLevel:I
    :try_end_26
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1a .. :try_end_26} :catch_69

    .line 4514
    :goto_26
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v2, :cond_5a

    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTouchEffectInfo: soundIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSoundOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSoundOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVibLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4516
    :cond_5a
    return-void

    .line 4494
    :catch_5b
    move-exception v0

    .line 4495
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_c

    .line 4501
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_60
    if-lez v1, :cond_66

    .line 4502
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSoundOn:Z

    goto :goto_1a

    .line 4504
    :cond_66
    iput-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSoundOn:Z

    goto :goto_1a

    .line 4511
    :catch_69
    move-exception v0

    .line 4512
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_26
.end method

.method public onCancelInput()V
    .registers 2

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 2443
    return-void
.end method

.method public onCodeInput(III)V
    .registers 22
    .param p1, "primaryCode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 2049
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2051
    .local v16, "when":J
    const/4 v4, -0x5

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastKeyTime:J

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v4, v16, v4

    if-lez v4, :cond_19

    .line 2052
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDeleteCount:I

    .line 2054
    :cond_19
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastKeyTime:J

    .line 2055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 2056
    .local v14, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v11

    .line 2057
    .local v11, "distinctMultiTouch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 2059
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    if-eqz v4, :cond_3e

    .line 2060
    if-eqz v12, :cond_39

    .line 2061
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2062
    :cond_39
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    .line 2070
    :cond_3e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 2071
    .local v9, "spaceState":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v4

    if-nez v4, :cond_51

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsAutoCorrectionIndicatorOn:Z

    .line 2074
    :cond_51
    const/16 v4, 0x20

    move/from16 v0, p1

    if-eq v0, v4, :cond_5e

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 2078
    :cond_5e
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isLockKeyEvent()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_66

    .line 2371
    :goto_65
    return-void

    .line 2082
    :cond_66
    const/4 v10, 0x0

    .line 2083
    .local v10, "didAutoCorrect":Z
    sparse-switch p1, :sswitch_data_348

    .line 2338
    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_2e6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget v4, v4, Lcom/pantech/inputmethod/skyime/InputAttributes;->mEditorAction:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2e6

    .line 2340
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->performEditorAction(I)V

    .line 2362
    :cond_7f
    :goto_7f
    if-nez v10, :cond_92

    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_92

    const/4 v4, -0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_92

    .line 2364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->deactivate()V

    .line 2366
    :cond_92
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 2367
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_65

    .line 2086
    :sswitch_9d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleBackspace(Lcom/pantech/inputmethod/skyime/Automata;I)V

    .line 2088
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDeleteCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDeleteCount:I

    .line 2089
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    .line 2091
    invoke-static/range {p2 .. p3}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnDelete(II)V

    goto :goto_7f

    .line 2097
    :sswitch_be
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isAutomataComposing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_cd

    .line 2099
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    .line 2101
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMultitap()V

    .line 2108
    :cond_cd
    const/4 v4, 0x1

    if-ne v11, v4, :cond_d7

    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->useMultitouchShift()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7f

    .line 2110
    :cond_d7
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_7f

    .line 2115
    :sswitch_db
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiRecentsMode(Z)V

    .line 2116
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2117
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2118
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto :goto_7f

    .line 2126
    :sswitch_e9
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEmojiMode(I)V

    .line 2127
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2128
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2129
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto :goto_7f

    .line 2133
    :sswitch_f8
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchNumSymMode(Z)V

    .line 2135
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    .line 2136
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto/16 :goto_7f

    .line 2139
    :sswitch_104
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchKoreanMode()V

    .line 2141
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2142
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2143
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto/16 :goto_7f

    .line 2146
    :sswitch_112
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEnglishMode()V

    .line 2148
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto/16 :goto_7f

    .line 2160
    :sswitch_120
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchKorEngMode()V

    .line 2162
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2163
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2164
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto/16 :goto_7f

    .line 2167
    :sswitch_12e
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEngKorMode()V

    .line 2169
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetMainDict()V

    .line 2171
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showStatusIcon()V

    goto/16 :goto_7f

    .line 2176
    :sswitch_13c
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchSymbolsPage(I)V

    goto/16 :goto_7f

    .line 2181
    :sswitch_143
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleClose()V

    goto/16 :goto_7f

    .line 2186
    :sswitch_148
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2187
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onSettingsKeyPressed()V

    goto/16 :goto_7f

    .line 2190
    :sswitch_157
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 2194
    :sswitch_15a
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->playKeyEffect(I)V

    goto/16 :goto_7f

    .line 2198
    :sswitch_15f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->closeFloatingResource()V

    .line 2200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->switchToShortcutIME()V

    goto/16 :goto_7f

    .line 2204
    :sswitch_16f
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->showHanjaPicker()V

    .line 2205
    if-eqz v12, :cond_7f

    .line 2206
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    goto/16 :goto_7f

    .line 2211
    :sswitch_17c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMoveMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7f

    .line 2215
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->hideWindow()V

    .line 2216
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/pantech/inputmethod/skyime/SkyIME;->requestHideSelf(I)V

    goto/16 :goto_7f

    .line 2219
    :sswitch_192
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleTab()V

    goto/16 :goto_7f

    .line 2236
    :sswitch_197
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2237
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchFloatingMode()V

    goto/16 :goto_7f

    .line 2241
    :sswitch_1a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showURLWindow()V

    goto/16 :goto_7f

    .line 2245
    :sswitch_1b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showEMAILWindow()V

    goto/16 :goto_7f

    .line 2249
    :sswitch_1c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreSettingsWindow()V

    goto/16 :goto_7f

    .line 2253
    :sswitch_1cd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMorePeriodWindow()V

    goto/16 :goto_7f

    .line 2257
    :sswitch_1da
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSplitKeyboard()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2261
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchPinchOutMode()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->lockKeyEventMoment()V

    goto/16 :goto_7f

    .line 2267
    :sswitch_200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSplitKeyboard()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2271
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchPinchInMode()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->lockKeyEventMoment()V

    goto/16 :goto_7f

    .line 2280
    :sswitch_226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    goto/16 :goto_7f

    .line 2284
    :sswitch_22f
    if-eqz v12, :cond_7f

    const v4, 0x1020263

    invoke-interface {v12, v4}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_7f

    .line 2289
    :sswitch_239
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->launchKeyboardHeightControlSetting()V

    goto/16 :goto_7f

    .line 2293
    :sswitch_23e
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEditMode()V

    .line 2294
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    goto/16 :goto_7f

    .line 2297
    :sswitch_246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onSelectAll()V

    .line 2298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2301
    :sswitch_25a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onSelect()V

    .line 2302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2305
    :sswitch_26e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onCopy()V

    .line 2306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2309
    :sswitch_282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onCut()V

    .line 2310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2313
    :sswitch_296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onPaste()V

    .line 2314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2317
    :sswitch_2aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->onDel()V

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Edit;->getSelectionState()Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateSelectFlag(Z)V

    goto/16 :goto_7f

    .line 2323
    :sswitch_2be
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchPrevFromEditMode()V

    .line 2324
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    goto/16 :goto_7f

    .line 2328
    :sswitch_2c6
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->launchCustomPopupSetting()V

    goto/16 :goto_7f

    .line 2332
    :sswitch_2cb
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleSeparatorCJI(IIII)Z

    move-result v10

    .line 2333
    goto/16 :goto_7f

    .line 2335
    :sswitch_2d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    goto/16 :goto_7f

    .line 2343
    :cond_2e6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 2344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_30a

    .line 2345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleSeparator(IIII)Z

    move-result v10

    .line 2358
    :goto_303
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    goto/16 :goto_7f

    .line 2346
    :cond_30a
    invoke-virtual {v14}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v4

    if-eqz v4, :cond_320

    .line 2347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleKorCharacter(Lcom/pantech/inputmethod/skyime/Automata;IIII)V

    goto :goto_303

    .line 2349
    :cond_320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v13

    .line 2350
    .local v13, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v13, :cond_33e

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard;->hasProximityCharsCorrection(I)Z

    move-result v4

    if-eqz v4, :cond_33e

    .line 2351
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleCharacter(IIII)V

    goto :goto_303

    .line 2353
    :cond_33e
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleCharacter(IIII)V

    goto :goto_303

    .line 2083
    :sswitch_data_348
    .sparse-switch
        -0x1f4 -> :sswitch_2c6
        -0x1c3 -> :sswitch_1da
        -0x1c2 -> :sswitch_200
        -0x194 -> :sswitch_1cd
        -0x193 -> :sswitch_1c0
        -0x192 -> :sswitch_1b3
        -0x191 -> :sswitch_1a6
        -0x190 -> :sswitch_197
        -0x7d -> :sswitch_2d9
        -0x7c -> :sswitch_239
        -0x7b -> :sswitch_22f
        -0x7a -> :sswitch_226
        -0x79 -> :sswitch_12e
        -0x78 -> :sswitch_120
        -0x72 -> :sswitch_13c
        -0x71 -> :sswitch_17c
        -0x6f -> :sswitch_13c
        -0x6e -> :sswitch_13c
        -0x6d -> :sswitch_112
        -0x6c -> :sswitch_104
        -0x6b -> :sswitch_db
        -0x6a -> :sswitch_e9
        -0x69 -> :sswitch_e9
        -0x68 -> :sswitch_e9
        -0x67 -> :sswitch_e9
        -0x66 -> :sswitch_e9
        -0x65 -> :sswitch_e9
        -0x62 -> :sswitch_15a
        -0x9 -> :sswitch_148
        -0x8 -> :sswitch_16f
        -0x7 -> :sswitch_15f
        -0x6 -> :sswitch_148
        -0x5 -> :sswitch_9d
        -0x4 -> :sswitch_143
        -0x3 -> :sswitch_157
        -0x2 -> :sswitch_f8
        -0x1 -> :sswitch_be
        0x9 -> :sswitch_192
        0xcc -> :sswitch_246
        0xce -> :sswitch_25a
        0xd1 -> :sswitch_26e
        0xd2 -> :sswitch_282
        0xd3 -> :sswitch_296
        0xd4 -> :sswitch_2aa
        0xd5 -> :sswitch_2be
        0xd6 -> :sswitch_23e
        0x447 -> :sswitch_2cb
    .end sparse-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 16
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x0

    .line 1717
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1718
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v5

    .line 1719
    .local v5, "inputView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-eqz v5, :cond_12

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    if-nez v12, :cond_13

    .line 1750
    :cond_12
    :goto_12
    return-void

    .line 1723
    :cond_13
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v12, :cond_6d

    move v0, v11

    .line 1725
    .local v0, "adjustedBackingHeight":I
    :goto_18
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v13, :cond_74

    const/4 v1, 0x1

    .line 1726
    .local v1, "backingGone":Z
    :goto_21
    if-eqz v1, :cond_76

    move v2, v11

    .line 1730
    .local v2, "backingHeight":I
    :goto_24
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isFullscreenMode()Z

    move-result v12

    if-eqz v12, :cond_78

    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExtractArea:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1731
    .local v4, "extractHeight":I
    :goto_30
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v13, :cond_7a

    move v7, v11

    .line 1733
    .local v7, "suggestionsHeight":I
    :goto_39
    add-int v12, v4, v2

    add-int v3, v12, v7

    .line 1734
    .local v3, "extraHeight":I
    move v10, v3

    .line 1736
    .local v10, "touchY":I
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v12}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v6

    .line 1737
    .local v6, "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v6, :cond_68

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->isShown()Z

    move-result v12

    if-eqz v12, :cond_68

    .line 1738
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_55

    .line 1739
    sub-int/2addr v10, v7

    .line 1741
    :cond_55
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v9

    .line 1742
    .local v9, "touchWidth":I
    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v12

    add-int/2addr v12, v3

    add-int/lit8 v8, v12, 0x64

    .line 1745
    .local v8, "touchHeight":I
    const/4 v12, 0x3

    iput v12, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1746
    iget-object v12, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v12, v11, v10, v9, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 1748
    .end local v8    # "touchHeight":I
    .end local v9    # "touchWidth":I
    :cond_68
    iput v10, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1749
    iput v10, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_12

    .line 1723
    .end local v0    # "adjustedBackingHeight":I
    .end local v1    # "backingGone":Z
    .end local v2    # "backingHeight":I
    .end local v3    # "extraHeight":I
    .end local v4    # "extractHeight":I
    .end local v6    # "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    .end local v7    # "suggestionsHeight":I
    .end local v10    # "touchY":I
    :cond_6d
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_18

    .restart local v0    # "adjustedBackingHeight":I
    :cond_74
    move v1, v11

    .line 1725
    goto :goto_21

    .restart local v1    # "backingGone":Z
    :cond_76
    move v2, v0

    .line 1726
    goto :goto_24

    .restart local v2    # "backingHeight":I
    :cond_78
    move v4, v11

    .line 1730
    goto :goto_30

    .line 1731
    .restart local v4    # "extractHeight":I
    :cond_7a
    iget-object v12, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_39
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 1016
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: conf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_1d
    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mConfigKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_3b

    .line 1021
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mConfigKeyboard:I

    .line 1022
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v4, :cond_3b

    .line 1023
    sget-boolean v1, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v1, :cond_36

    sget-object v1, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v2, "onConfigurationChanged: HardKeyboardRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_36
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->removePeningCallbackMsg()V

    .line 1030
    :cond_3b
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    if-eqz v1, :cond_46

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v4, :cond_46

    .line 1031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    .line 1035
    :cond_46
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v1, p1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1039
    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDisplayOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_7d

    .line 1040
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mDisplayOrientation:I

    .line 1043
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->startOrientationChanging()V

    .line 1052
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->usePortraitFloatingMode(Landroid/content/res/Resources;)Z

    move-result v1

    if-ne v1, v4, :cond_67

    .line 1053
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->closeFloatingResource()V

    .line 1058
    :cond_67
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1059
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 1060
    if-eqz v0, :cond_74

    .line 1061
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1069
    :cond_74
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v1, :cond_7d

    .line 1070
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 1075
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_7d
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 1076
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLocale:Ljava/util/Locale;

    .line 1077
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->clearKeyboardCache()V

    .line 1080
    :cond_90
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1081
    return-void
.end method

.method public onCreate()V
    .registers 22

    .prologue
    .line 648
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 650
    .local v12, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 651
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 652
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->init(Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;)V

    .line 653
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->init(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 654
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/content/SharedPreferences;)V

    .line 655
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 656
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->init(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 659
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/HanjaDictionary;->init(Landroid/content/Context;)V

    .line 663
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/Edit;->init(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 664
    invoke-super/range {p0 .. p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onCreate()V

    .line 666
    invoke-static {}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getInputMethodId(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputMethodId:Ljava/lang/String;

    .line 668
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mSubtypeSwitcher:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .line 669
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 670
    invoke-static/range {p0 .. p0}, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrator:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    .line 672
    invoke-static {}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getInstance()Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardHeightControlPreference:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .line 675
    invoke-static {}, Lcom/pantech/inputmethod/skyime/Edit;->getInstance()Lcom/pantech/inputmethod/skyime/Edit;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mEdit:Lcom/pantech/inputmethod/skyime/Edit;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->onCreate()V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 679
    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadSettings()V

    .line 684
    new-instance v17, Lcom/pantech/inputmethod/skyime/InputAttributes;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/pantech/inputmethod/skyime/InputAttributes;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateCorrectionMode()V

    .line 687
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->reset()V

    .line 688
    const/16 v16, 0x1

    .line 689
    .local v16, "tryGC":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a7
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v7, v0, :cond_c7

    if-eqz v16, :cond_c7

    .line 691
    :try_start_af
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initSuggest()V
    :try_end_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_af .. :try_end_b2} :catch_b7

    .line 692
    const/16 v16, 0x0

    .line 689
    :goto_b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a7

    .line 693
    :catch_b7
    move-exception v5

    .line 694
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->getInstance()Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;

    move-result-object v17

    const-string v18, "InitSuggest"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/pantech/inputmethod/skyime/utils/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v16

    goto :goto_b4

    .line 698
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :cond_c7
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mDisplayOrientation:I

    .line 700
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mConfigKeyboard:I

    .line 703
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mLocale:Ljava/util/Locale;

    .line 705
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 706
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v17, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v17, "com.pantech.inputmethod.skyime.SETUP_KOREAN_KEYBOARD_TYPE"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v17, "com.pantech.inputmethod.skyime.IS_SETUPWIZARD_FINISHED"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 714
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    .local v3, "closeDialogsFilter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 720
    .local v9, "lcdfilter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v17, "android.intent.action.MOBILE_THEME_SET_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v17, "com.pantech.intent.action.PEN_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/pantech/inputmethod/skyime/SkyIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 731
    new-instance v17, Lcom/pantech/inputmethod/skyime/SkyIME$1;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$1;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

    .line 737
    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sound_effects_enabled"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "touch_vibration_level"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "index_of_keyboard_feedback_sound"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadTouchEffectInfoAsync()V

    .line 751
    invoke-static {v12}, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->readEmojiRecentKeys(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v14

    .line 752
    .local v14, "str":Ljava/lang/String;
    invoke-static {v14}, Lcom/pantech/inputmethod/skyime/utils/StringUtils;->jsonStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 754
    .local v15, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->clear()V

    .line 755
    const/4 v7, 0x0

    .line 757
    :goto_1d3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_212

    .line 758
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 759
    .local v10, "obj":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_1fc

    .line 760
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "obj":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 761
    .local v4, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    move-object/from16 v17, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 762
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1d3

    .end local v4    # "code":I
    .end local v7    # "i":I
    .restart local v8    # "i":I
    .restart local v10    # "obj":Ljava/lang/Object;
    :cond_1fc
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_27d

    move-object v11, v10

    .line 763
    check-cast v11, Ljava/lang/String;

    .line 764
    .local v11, "outputText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 765
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1d3

    .line 772
    .end local v10    # "obj":Ljava/lang/Object;
    .end local v11    # "outputText":Ljava/lang/String;
    :cond_212
    new-instance v17, Lcom/pantech/inputmethod/skyime/SkyIME$2;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME$2;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateRingingObserver:Landroid/database/ContentObserver;

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "vibrate_when_ringing"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateRingingObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateVibrateWhenRinging()V

    .line 784
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/style/KeyDrawable;->loadDrawableFromFile(Landroid/content/Context;)V

    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCore()V

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createEnglishCore()V

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->createHangulCoreHW()V

    .line 795
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/SkyIME;->mCallState:I

    .line 797
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->listenForPhoneState(Z)V

    .line 799
    return-void

    .end local v7    # "i":I
    .restart local v8    # "i":I
    .restart local v10    # "obj":Ljava/lang/Object;
    :cond_27d
    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_1d3
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomRequest(I)Z
    .registers 5
    .param p1, "requestCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1933
    packed-switch p1, :pswitch_data_18

    move v0, v1

    .line 1945
    :goto_6
    return v0

    .line 1935
    :pswitch_7
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v2, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1940
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    goto :goto_6

    :cond_15
    move v0, v1

    .line 1943
    goto :goto_6

    .line 1933
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 968
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 969
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_c
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v0, :cond_17

    .line 971
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Suggest;->close()V

    .line 972
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    .line 974
    :cond_17
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 975
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 976
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 980
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateRingingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 981
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->listenForPhoneState(Z)V

    .line 983
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->commit()V

    .line 984
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->onDestroy()V

    .line 985
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->closeFloatingResource()V

    .line 986
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onDestroy()V

    .line 988
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTouchEffectSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 991
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_57

    .line 992
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 993
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 995
    :cond_57
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_62

    .line 996
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 997
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mEngAutomata:Lcom/pantech/inputmethod/skyime/Automata;

    .line 999
    :cond_62
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    if-eqz v0, :cond_6d

    .line 1000
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-interface {v0}, Lcom/pantech/inputmethod/skyime/Automata;->destory()V

    .line 1001
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    .line 1007
    :cond_6d
    sget-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_76

    .line 1008
    sget-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1009
    :cond_76
    sget-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_7f

    .line 1010
    sget-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1011
    :cond_7f
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onDestroy()V

    .line 1012
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 12
    .param p1, "applicationSpecifiedCompletions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v2, 0x0

    .line 1628
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_39

    .line 1629
    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v4, "Received completions:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    if-eqz p1, :cond_39

    .line 1631
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    array-length v3, p1

    if-ge v8, v3, :cond_39

    .line 1632
    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 1636
    .end local v8    # "i":I
    :cond_39
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v3, v3, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v3, :cond_4e

    .line 1637
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1638
    if-eqz p1, :cond_48

    if-eqz p1, :cond_4f

    array-length v3, p1

    if-nez v3, :cond_4f

    .line 1641
    :cond_48
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->clearSuggestions()V

    .line 1643
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    .line 1667
    :cond_4e
    :goto_4e
    return-void

    .line 1647
    :cond_4f
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getFromApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1650
    .local v1, "applicationSuggestedWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/SuggestedWords;-><init>(Ljava/util/ArrayList;ZZZZZZ)V

    .line 1659
    .local v0, "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    const/4 v9, 0x0

    .line 1660
    .local v9, "isAutoCorrection":Z
    invoke-direct {p0, v0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)V

    .line 1661
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->setAutoCorrectionIndicator(Z)V

    .line 1664
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 1665
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShown(Z)V

    goto :goto_4e
.end method

.method public onEvaluateFullscreenMode()Z
    .registers 2

    .prologue
    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public onExtractedCursorMovement(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1571
    :goto_6
    return-void

    .line 1570
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedCursorMovement(II)V

    goto :goto_6
.end method

.method public onExtractedTextClicked()V
    .registers 2

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isComposingRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1555
    :goto_6
    return-void

    .line 1554
    :cond_7
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedTextClicked()V

    goto :goto_6
.end method

.method public onFinishInput()V
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->onFinishInput()V

    .line 1169
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->onFinishInputView(Z)V

    .line 1164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x3d

    const/16 v4, 0x3a

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 4618
    if-nez p2, :cond_b

    move v10, v3

    .line 4751
    :cond_a
    :goto_a
    return v10

    .line 4619
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 4621
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz p2, :cond_2c

    .line 4622
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-gtz v0, :cond_21

    const/16 v0, 0x43

    if-ne p1, v0, :cond_2c

    :cond_21
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    if-nez v0, :cond_2c

    .line 4625
    if-eqz v6, :cond_2a

    .line 4626
    invoke-virtual {p0, v6, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4628
    :cond_2a
    iput-boolean v10, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWInputType:Z

    .line 4631
    :cond_2c
    sparse-switch p1, :sswitch_data_15e

    .line 4661
    const/16 v0, 0x11a

    if-eq p1, v0, :cond_43

    if-eq p1, v5, :cond_43

    if-eq p1, v4, :cond_43

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_9b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9b

    .line 4666
    :cond_43
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 4667
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4668
    invoke-virtual {p0, v6, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 4670
    :cond_51
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    if-nez v0, :cond_56

    move v3, v10

    :cond_56
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    .line 4672
    if-eq p1, v4, :cond_5c

    if-ne p1, v5, :cond_a

    .line 4676
    :cond_5c
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_a

    .line 4634
    :sswitch_61
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_81

    .line 4635
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->handleBack()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4638
    :cond_73
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v7

    .line 4639
    .local v7, "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v7, :cond_81

    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4751
    .end local v7    # "keyboardView":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    :cond_81
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_a

    .line 4653
    :sswitch_86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    .line 4654
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_a

    .line 4657
    :cond_94
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    invoke-direct {p0, v0, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleBackspace(Lcom/pantech/inputmethod/skyime/Automata;I)V

    goto/16 :goto_a

    .line 4684
    :cond_9b
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    if-eqz v0, :cond_e2

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_e2

    const/16 v0, 0x36

    if-gt p1, v0, :cond_e2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_e2

    .line 4687
    const/4 v2, 0x0

    .line 4689
    .local v2, "korCode":I
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->mQwertyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 4690
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c1

    .line 4691
    sparse-switch v2, :sswitch_data_168

    .line 4715
    :cond_c1
    :goto_c1
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSkyAutomataHW:Lcom/pantech/inputmethod/skyime/Automata;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleKorCharacter(Lcom/pantech/inputmethod/skyime/Automata;IIII)V

    .line 4717
    iput-boolean v10, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    goto/16 :goto_a

    .line 4693
    :sswitch_cd
    const/16 v2, 0x3f1

    .line 4694
    goto :goto_c1

    .line 4696
    :sswitch_d0
    const/16 v2, 0x3f6

    .line 4697
    goto :goto_c1

    .line 4699
    :sswitch_d3
    const/16 v2, 0x3ed

    .line 4700
    goto :goto_c1

    .line 4702
    :sswitch_d6
    const/16 v2, 0x3ea

    .line 4703
    goto :goto_c1

    .line 4705
    :sswitch_d9
    const/16 v2, 0x3f3

    .line 4706
    goto :goto_c1

    .line 4708
    :sswitch_dc
    const/16 v2, 0x3ff

    .line 4709
    goto :goto_c1

    .line 4711
    :sswitch_df
    const/16 v2, 0x403

    goto :goto_c1

    .line 4722
    .end local v2    # "korCode":I
    :cond_e2
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_10c

    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: mIsHWKoreanMode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsHWKoreanMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mIsWebInputType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsWebInputType:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    :cond_10c
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsWebInputType:Z

    if-eqz v0, :cond_81

    if-eqz v6, :cond_81

    .line 4724
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 4725
    .local v9, "uniChar":I
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_136

    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: WebInput, uniChar=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    :cond_136
    if-lez v9, :cond_81

    .line 4727
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v0

    if-lez v0, :cond_149

    .line 4728
    invoke-direct {p0, v10}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 4729
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4730
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 4732
    :cond_149
    new-instance v8, Ljava/lang/String;

    new-array v0, v10, [I

    aput v9, v0, v3

    invoke-direct {v8, v0, v3, v10}, Ljava/lang/String;-><init>([III)V

    .line 4733
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v6, v8, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4734
    iput-boolean v10, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    goto/16 :goto_a

    .line 4631
    nop

    :sswitch_data_15e
    .sparse-switch
        0x4 -> :sswitch_61
        0x43 -> :sswitch_86
    .end sparse-switch

    .line 4691
    :sswitch_data_168
    .sparse-switch
        0x3e9 -> :sswitch_d6
        0x3ec -> :sswitch_d3
        0x3f0 -> :sswitch_cd
        0x3f2 -> :sswitch_d9
        0x3f5 -> :sswitch_d0
        0x3fd -> :sswitch_dc
        0x401 -> :sswitch_df
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x1

    .line 4756
    packed-switch p1, :pswitch_data_6c

    .line 4786
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_8
    return v2

    .line 4762
    :pswitch_9
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 4763
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v3, "onKeyUp: down/up/left/right initComposing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    :cond_1c
    invoke-direct {p0, v12}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 4765
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateSuggestions()V

    .line 4766
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4767
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2b

    .line 4768
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4770
    :cond_2b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 4773
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2e
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4775
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    const/16 v11, 0x41

    invoke-direct/range {v1 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 4779
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4780
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_6a

    .line 4781
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_6a
    move v2, v12

    .line 4782
    goto :goto_8

    .line 4756
    :pswitch_data_6c
    .packed-switch 0x13
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onPress(IZ)V
    .registers 7
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 4021
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 4022
    .local v1, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4023
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->playKeyEffect(I)V

    .line 4025
    :cond_b
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 4026
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_30

    const/4 v2, -0x1

    if-ne p1, v2, :cond_30

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->useMultitouchShift()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 4028
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelMultitapTimeout()V

    .line 4029
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 4030
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initAutomata()V

    .line 4032
    :cond_2c
    invoke-virtual {v1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 4036
    :goto_2f
    return-void

    .line 4034
    :cond_30
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onOtherKeyPressed()V

    goto :goto_2f
.end method

.method public onRefreshKeyboard()V
    .registers 4

    .prologue
    .line 3887
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 3888
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "onRefreshKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3893
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;)V

    .line 3895
    :cond_1e
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->initSuggest()V

    .line 3896
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateCorrectionMode()V

    .line 3897
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadSettings()V

    .line 3901
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isCursorTouchingWord()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3902
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3906
    :goto_32
    return-void

    .line 3904
    :cond_33
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateBigramPredictions()V

    goto :goto_32
.end method

.method public onRelease(IZ)V
    .registers 7
    .param p1, "primaryCode"    # I
    .param p2, "withSliding"    # Z

    .prologue
    .line 4039
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 4041
    .local v1, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 4042
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_15

    const/4 v2, -0x1

    if-ne p1, v2, :cond_15

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->useMultitouchShift()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 4044
    invoke-virtual {v1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    .line 4046
    :cond_15
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1154
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1159
    return-void
.end method

.method public onTargetApplicationKnown(Landroid/content/pm/ApplicationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 4790
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mTargetApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4791
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2375
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2377
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez p1, :cond_a

    .line 2417
    :cond_9
    :goto_9
    return-void

    .line 2378
    :cond_a
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isLockKeyEvent()Z

    move-result v2

    if-eq v2, v5, :cond_9

    .line 2379
    if-eqz v1, :cond_9

    .line 2382
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_45

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_45

    .line 2384
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 2385
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 2388
    :cond_2e
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2390
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_42

    .line 2391
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mGridKeys:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 2393
    :cond_42
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->saveRecentKeys()V

    .line 2398
    :cond_45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_6a

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->isWordSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2399
    const/4 v0, 0x0

    .line 2400
    .local v0, "didAutoCorrect":Z
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    invoke-direct {p0, v2, v6, v6, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleSeparator(IIII)Z

    move-result v0

    .line 2402
    if-nez v0, :cond_9

    .line 2403
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->deactivate()V

    goto :goto_9

    .line 2407
    .end local v0    # "didAutoCorrect":Z
    :cond_6a
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2408
    invoke-virtual {p0, v1, v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 2409
    invoke-direct {p0, v1, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->specificTldProcessingOnTextInput(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2410
    invoke-interface {v1, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2411
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2412
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2413
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 2414
    iput v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 2416
    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    goto :goto_9
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 14
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "composingSpanStart"    # I
    .param p6, "composingSpanEnd"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 1452
    invoke-super/range {p0 .. p6}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onUpdateSelection(IIIIII)V

    .line 1455
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_6c

    .line 1456
    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSelection: oss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ose="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ce="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_6c
    if-ne p3, p6, :cond_70

    if-eq p4, p6, :cond_ba

    :cond_70
    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    if-eq v3, p3, :cond_ba

    move v1, v0

    .line 1479
    .local v1, "selectionChanged":Z
    :goto_75
    if-ne p5, v6, :cond_bc

    if-ne p6, v6, :cond_bc

    .line 1480
    .local v0, "noComposingSpan":Z
    :goto_79
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    if-nez v3, :cond_be

    .line 1493
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSpaceState:I

    .line 1495
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_8b

    if-nez v1, :cond_8b

    if-eqz v0, :cond_8e

    .line 1496
    :cond_8b
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    .line 1499
    :cond_8e
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateShiftState()V

    .line 1517
    :cond_93
    :goto_93
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_b3

    if-eqz v0, :cond_b3

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    if-ne v3, p3, :cond_b3

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    if-ne v3, p4, :cond_b3

    .line 1520
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_b0

    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v4, "onUpdateSelection: (3) !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_b0
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    .line 1526
    :cond_b3
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    .line 1533
    iput p3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    .line 1534
    iput p4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    .line 1535
    return-void

    .end local v0    # "noComposingSpan":Z
    .end local v1    # "selectionChanged":Z
    :cond_ba
    move v1, v2

    .line 1472
    goto :goto_75

    .restart local v1    # "selectionChanged":Z
    :cond_bc
    move v0, v2

    .line 1479
    goto :goto_79

    .line 1500
    .restart local v0    # "noComposingSpan":Z
    :cond_be
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_f1

    if-nez v0, :cond_f1

    if-ne p5, p6, :cond_f1

    .line 1503
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_93

    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateSelection: do nothing.. candidates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 1504
    :cond_f1
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->onEvaluateInputViewShown()Z

    move-result v3

    if-nez v3, :cond_119

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v3

    if-lez v3, :cond_119

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_119

    if-eqz v1, :cond_119

    .line 1506
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_114

    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v4, "onUpdateSelection: onEvaluateInputViewShown()=false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_114
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    goto/16 :goto_93

    .line 1508
    :cond_119
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v3

    if-eqz v3, :cond_93

    if-eqz v1, :cond_93

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKoreanMode()Z

    move-result v3

    if-nez v3, :cond_13b

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isMultitapKeyboard()Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isEnglishMode()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1511
    :cond_13b
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v3, :cond_146

    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v4, "onUpdateSelection: (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_146
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetEntireInputState()V

    goto/16 :goto_93
.end method

.method public onWindowHidden()V
    .registers 3

    .prologue
    .line 1419
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->onWindowHidden()V

    .line 1420
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1421
    .local v0, "inputView":Lcom/pantech/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1422
    :cond_e
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;II)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 3479
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 3482
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isShowingPunctuationList()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3489
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 3496
    .local v6, "primaryCode":I
    invoke-virtual {p0, v5, v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    .line 3499
    int-to-char v0, v6

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyChar(C)V

    .line 3507
    .end local v6    # "primaryCode":I
    :cond_1d
    :goto_1d
    return-void

    .line 3503
    :cond_1e
    if-eqz v5, :cond_23

    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    :cond_23
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3504
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->pickSuggestionManuallyWhileInBatchEdit(ILjava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)V

    .line 3505
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3506
    if-eqz v5, :cond_1d

    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1d
.end method

.method public pickSuggestionManuallyWhileInBatchEdit(ILjava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/16 v6, 0x20

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 3511
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getSuggestions()Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v3

    .line 3529
    .local v3, "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v4, v4, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v4, :cond_36

    if-ltz p1, :cond_36

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v4, v4

    if-ge p1, v4, :cond_36

    .line 3532
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v4, :cond_24

    .line 3533
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 3535
    :cond_24
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3536
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->resetComposingState(Z)V

    .line 3537
    if-eqz p5, :cond_35

    .line 3538
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v4, p1

    .line 3539
    .local v0, "completionInfo":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {p5, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 3596
    .end local v0    # "completionInfo":Landroid/view/inputmethod/CompletionInfo;
    :cond_35
    :goto_35
    return-void

    .line 3547
    :cond_36
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3548
    .local v1, "replacedWord":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1, v3}, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/SuggestedWords;)V

    .line 3550
    iput-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExpectingUpdateSelection:Z

    .line 3551
    invoke-direct {p0, p2, v2, v5}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitChosenWord(Ljava/lang/CharSequence;II)V

    .line 3554
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastComposedWord:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/LastComposedWord;->deactivate()V

    .line 3556
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 3559
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3560
    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/skyime/SkyIME;->sendKeyChar(C)V

    .line 3572
    :cond_5f
    if-nez p1, :cond_82

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v4, :cond_82

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Suggest;->hasMainDictionary()Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/Suggest;->getUnigramDictionaries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v4, p2, v2}, Lcom/pantech/inputmethod/skyime/AutoCorrection;->isValidWord(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_82

    .line 3579
    .local v2, "showingAddToDictionaryHint":Z
    :cond_79
    :goto_79
    invoke-static {v6, v5, v5}, Lcom/pantech/inputmethod/skyime/utils/Utils$Stats;->onSeparator(III)V

    .line 3581
    if-nez v2, :cond_84

    .line 3584
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateBigramPredictions()V

    goto :goto_35

    .line 3572
    .end local v2    # "showingAddToDictionaryHint":Z
    :cond_82
    const/4 v2, 0x0

    goto :goto_79

    .line 3589
    .restart local v2    # "showingAddToDictionaryHint":Z
    :cond_84
    iget-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mIsUserDictionaryAvailable:Z

    if-eqz v4, :cond_92

    .line 3590
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v5, v5, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mHintToSaveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, p2, v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->showAddToDictionaryHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 3593
    :cond_92
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_35
.end method

.method public playKeyEffect(I)V
    .registers 6
    .param p1, "primaryCode"    # I

    .prologue
    .line 4524
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCallState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 4525
    const/4 v0, 0x0

    .line 4527
    .local v0, "soundOn":Z
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    iget-boolean v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateWhenRinging:Z

    if-nez v2, :cond_1b

    .line 4528
    const/4 v1, 0x1

    .line 4538
    .local v1, "vibrateOn":Z
    :goto_10
    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->vibrate()V

    .line 4539
    :cond_15
    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->playKeyClick(I)V

    .line 4540
    :cond_1a
    return-void

    .line 4530
    .end local v1    # "vibrateOn":Z
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "vibrateOn":Z
    goto :goto_10

    .line 4533
    .end local v0    # "soundOn":Z
    .end local v1    # "vibrateOn":Z
    :cond_1d
    const/4 v1, 0x1

    .line 4534
    .restart local v1    # "vibrateOn":Z
    const/4 v0, 0x1

    .restart local v0    # "soundOn":Z
    goto :goto_10
.end method

.method public preferCapitalization()Z
    .registers 2

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method public querySoundEffectsEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4170
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "index_of_keyboard_feedback_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1148
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1090
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->setInputView(Landroid/view/View;)V

    .line 1091
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "setInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mExtractArea:Landroid/view/View;

    .line 1094
    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    .line 1095
    const v0, 0x7f100082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsContainer:Landroid/view/View;

    .line 1097
    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    .line 1098
    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    .line 1099
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7c

    .line 1101
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 1104
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 1108
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/pantech/inputmethod/skyime/SkyIME$4;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$4;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1122
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/pantech/inputmethod/skyime/SkyIME$5;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/SkyIME$5;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1137
    :cond_7c
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .line 1138
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    if-eqz v0, :cond_90

    .line 1139
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggestionsView:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-virtual {v0, p0, p1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setListener(Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;Landroid/view/View;)V

    .line 1140
    :cond_90
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sVISUALDEBUG:Z

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-eqz v0, :cond_9f

    .line 1141
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    const/high16 v1, 0x10ff0000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1143
    :cond_9f
    return-void
.end method

.method public setLastSelection(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1538
    iput p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionStart:I

    .line 1539
    iput p2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mLastSelectionEnd:I

    .line 1540
    return-void
.end method

.method public setOneHandButtonsShown(I)V
    .registers 6
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4861
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v1, "setOneHandButtonsShown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    :cond_e
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_23

    .line 4863
    packed-switch p1, :pswitch_data_3a

    .line 4873
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4874
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4878
    :cond_23
    :goto_23
    return-void

    .line 4865
    :pswitch_24
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4866
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_23

    .line 4869
    :pswitch_2f
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4870
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mOneHandToRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_23

    .line 4863
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2f
    .end packed-switch
.end method

.method public setPunctuationSuggestions()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3659
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramPredictionEnabled:Z

    if-eqz v0, :cond_15

    .line 3660
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->clearSuggestions()V

    .line 3664
    :goto_a
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setAutoCorrectionIndicator(Z)V

    .line 3665
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsStripVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShown(Z)V

    .line 3666
    return-void

    .line 3662
    :cond_15
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mSuggestPuncList:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)V

    goto :goto_a
.end method

.method public showSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "typedWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 3433
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 3434
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->hasAutoCorrectionWord()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3435
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3442
    .local v0, "autoCorrection":Ljava/lang/CharSequence;
    :goto_11
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 3443
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->willAutoCorrect()Z

    move-result v1

    .line 3444
    .local v1, "isAutoCorrection":Z
    invoke-direct {p0, p1, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Z)V

    .line 3445
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setAutoCorrectionIndicator(Z)V

    .line 3446
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsStripVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShown(Z)V

    .line 3447
    return-void

    .line 3437
    .end local v0    # "autoCorrection":Ljava/lang/CharSequence;
    .end local v1    # "isAutoCorrection":Z
    :cond_28
    move-object v0, p2

    .restart local v0    # "autoCorrection":Ljava/lang/CharSequence;
    goto :goto_11

    .line 3440
    .end local v0    # "autoCorrection":Ljava/lang/CharSequence;
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "autoCorrection":Ljava/lang/CharSequence;
    goto :goto_11
.end method

.method public showWindow(Z)V
    .registers 5
    .param p1, "showInput"    # Z

    .prologue
    .line 1614
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1615
    sget-object v0, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWindow: showInput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_1c
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->showWindow(Z)V

    .line 1619
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardHeightControlPreference:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->setIsShowWindow(Z)V

    .line 1622
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->updateFloatingMode()V

    .line 1624
    return-void
.end method

.method public startTouchEffectInfoLoadingTaskLocked()V
    .registers 3

    .prologue
    .line 4482
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingTouchEffectInfo:Z

    if-nez v0, :cond_13

    .line 4483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mUpdatingTouchEffectInfo:Z

    .line 4484
    new-instance v0, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;-><init>(Lcom/pantech/inputmethod/skyime/SkyIME;Lcom/pantech/inputmethod/skyime/SkyIME$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME$LoadTouchEffectInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4486
    :cond_13
    return-void
.end method

.method public swipeDown()V
    .registers 2

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSwipeDownClose()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isFloatingMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3996
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->handleClose()V

    .line 3998
    :cond_13
    return-void
.end method

.method public swipeLeft(I)V
    .registers 4
    .param p1, "inputMode"    # I

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 3962
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSymOrEmoOrEmojiMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3963
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    const/16 v1, -0x6f

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchSymbolsPage(I)V

    .line 3971
    :cond_1a
    :goto_1a
    return-void

    .line 3967
    :cond_1b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSplitKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3968
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->swipeLeftForFloating(I)V

    goto :goto_1a
.end method

.method public swipeRight(I)V
    .registers 4
    .param p1, "inputMode"    # I

    .prologue
    .line 3925
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 3937
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isSymOrEmoOrEmojiMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3938
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    const/16 v1, -0x6e

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchSymbolsPage(I)V

    .line 3946
    :cond_1a
    :goto_1a
    return-void

    .line 3942
    :cond_1b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSplitKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3943
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->swipeRightForFloating(I)V

    goto :goto_1a
.end method

.method public swipeUp()V
    .registers 4

    .prologue
    .line 4003
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 4013
    :cond_12
    :goto_12
    return-void

    .line 4008
    :cond_13
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->useGestureSwipeUpChangeEditMode()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardInputMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4009
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->switchEditMode()V

    .line 4010
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4011
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_12

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->commitTyped(Landroid/view/inputmethod/InputConnection;I)V

    goto :goto_12
.end method

.method public switchToKeyboardView()V
    .registers 5

    .prologue
    .line 3313
    sget-boolean v2, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 3314
    sget-object v2, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v3, "Switch to keyboard view."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    :cond_b
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 3317
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_25

    .line 3319
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3320
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_22

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    .line 3321
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "p":Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3323
    :cond_22
    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->setInputView(Landroid/view/View;)V

    .line 3325
    :cond_25
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsStripVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->setSuggestionStripShown(Z)V

    .line 3326
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->updateInputViewShown()V

    .line 3327
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->postUpdateSuggestions()V

    .line 3328
    return-void
.end method

.method public updateBigramPredictions()V
    .registers 5

    .prologue
    .line 3628
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3656
    :cond_a
    :goto_a
    return-void

    .line 3631
    :cond_b
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-boolean v2, v2, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mBigramPredictionEnabled:Z

    if-nez v2, :cond_15

    .line 3632
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    goto :goto_a

    .line 3637
    :cond_15
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    .line 3638
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v3, v3, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWordSeparators:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3640
    .local v0, "prevWord":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 3641
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->getBigramPredictions(Ljava/lang/CharSequence;)Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v1

    .line 3649
    .end local v0    # "prevWord":Ljava/lang/CharSequence;
    .local v1, "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    :goto_32
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 3652
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/pantech/inputmethod/skyime/SkyIME;->showSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 3643
    .end local v1    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .restart local v0    # "prevWord":Ljava/lang/CharSequence;
    :cond_40
    const/4 v1, 0x0

    .restart local v1    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    goto :goto_32

    .line 3646
    .end local v0    # "prevWord":Ljava/lang/CharSequence;
    .end local v1    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    goto :goto_32

    .line 3654
    :cond_44
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->clearSuggestions()V

    goto :goto_a
.end method

.method public updateFullscreenMode()V
    .registers 3

    .prologue
    .line 1763
    invoke-super {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->updateFullscreenMode()V

    .line 1765
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1769
    :goto_7
    return-void

    .line 1768
    :cond_8
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x8

    :goto_12
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public updateSuggestions()V
    .registers 9

    .prologue
    .line 3357
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->isSuggestionsRequested()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKorSuggestionEnable:Z

    if-nez v4, :cond_3a

    .line 3359
    :cond_e
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3360
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SkyIME;->DEBUG:Z

    if-eqz v4, :cond_21

    .line 3361
    sget-object v4, Lcom/pantech/inputmethod/skyime/SkyIME;->TAG:Ljava/lang/String;

    const-string v5, "Called updateSuggestions but suggestions were not requested!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_21
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/inputmethod/skyime/WordComposer;->setAutoCorrection(Ljava/lang/CharSequence;)V

    .line 3366
    :cond_2c
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mInputAttributes:Lcom/pantech/inputmethod/skyime/InputAttributes;

    iget-boolean v4, v4, Lcom/pantech/inputmethod/skyime/InputAttributes;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v4, :cond_39

    .line 3367
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-nez v4, :cond_39

    .line 3368
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    .line 3429
    :cond_39
    :goto_39
    return-void

    .line 3375
    :cond_3a
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateSuggestions()V

    .line 3376
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mHandler:Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/SkyIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 3378
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->isComposingWord()Z

    move-result v4

    if-nez v4, :cond_50

    .line 3379
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->setPunctuationSuggestions()V

    goto :goto_39

    .line 3384
    :cond_50
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SkyIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3386
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_7d

    .line 3387
    const/4 v1, 0x0

    .line 3392
    .local v1, "prevWord":Ljava/lang/CharSequence;
    :goto_57
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 3396
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/skyime/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    .line 3398
    .local v3, "typedWord":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSuggest:Lcom/pantech/inputmethod/skyime/Suggest;

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mWordComposer:Lcom/pantech/inputmethod/skyime/WordComposer;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    move-result-object v6

    iget v7, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mCorrectionMode:I

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/pantech/inputmethod/skyime/Suggest;->getSuggestedWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/keyboard/ProximityInfo;I)Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-result-object v2

    .line 3410
    .local v2, "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    invoke-virtual {p0, v2, v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->showSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 3389
    .end local v1    # "prevWord":Ljava/lang/CharSequence;
    .end local v2    # "suggestedWords":Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .end local v3    # "typedWord":Ljava/lang/CharSequence;
    :cond_7d
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mSettingsValues:Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;

    iget-object v4, v4, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "prevWord":Ljava/lang/CharSequence;
    goto :goto_57
.end method

.method public vibrate()V
    .registers 3

    .prologue
    .line 4144
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrateOn:Z

    if-nez v0, :cond_5

    .line 4157
    :cond_4
    :goto_4
    return-void

    .line 4148
    :cond_5
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrator:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    if-eqz v0, :cond_4

    .line 4151
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrivateVibLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 4152
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrator:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mPrivateVibLevel:I

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->vibratePattern(I)V

    goto :goto_4

    .line 4154
    :cond_16
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibrator:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME;->mVibLevel:I

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->vibratePattern(I)V

    goto :goto_4
.end method
