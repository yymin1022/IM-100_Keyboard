.class public final Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final CLASS:Ljava/lang/String;

.field private static final ENABLE_ACCESSIBILITY:Z = true

.field private static final PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static mWordSeparators:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCorrectionWord:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTypedWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p0, "inputMethod"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 72
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->initInternal(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->init()V

    .line 74
    invoke-static {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 75
    return-void
.end method

.method private initInternal(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 89
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    const v0, 0x7f0c0067

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mWordSeparators:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static isWordSeparator(I)Z
    .registers 3
    .param p0, "code"    # I

    .prologue
    .line 270
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mWordSeparators:Ljava/lang/String;

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 209
    sget-object v2, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    const-string v3, "Attempted to speak when accessibility was disabled!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_f
    return-void

    .line 216
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 218
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget-object v2, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v2, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 221
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 222
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4d

    .line 227
    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 232
    :goto_3b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 233
    .local v1, "viewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_45

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_53

    .line 234
    :cond_45
    sget-object v2, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    const-string v3, "Failed to obtain ViewParent in announceForAccessibility"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 229
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    :cond_4d
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    goto :goto_3b

    .line 238
    .restart local v1    # "viewParent":Landroid/view/ViewParent;
    :cond_53
    invoke-interface {v1, p1, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_f
.end method

.method public getAutoCorrectionDescription(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p1, "keyCodeDescription"    # Ljava/lang/String;
    .param p2, "shouldObscure"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAutoCorrectionWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 186
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAutoCorrectionWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mTypedWord:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 187
    if-eqz p2, :cond_24

    .line 189
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0148

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 197
    .end local p1    # "keyCodeDescription":Ljava/lang/String;
    :cond_23
    :goto_23
    return-object p1

    .line 192
    .restart local p1    # "keyCodeDescription":Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0147

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mTypedWord:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAutoCorrectionWord:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23
.end method

.method public isAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTouchExplorationEnabled()Z
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isTouchExplorationEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 124
    .local v0, "action":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public onStartInputViewInternal(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .prologue
    .line 251
    invoke-virtual {p0, p2}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 252
    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 255
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_12
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 265
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 267
    :cond_d
    return-void
.end method

.method public setAutoCorrection(Lcom/pantech/inputmethod/skyime/SuggestedWords;Ljava/lang/String;)V
    .registers 3
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "typedWord"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p1, :cond_4

    .line 152
    :cond_3
    :goto_3
    return v1

    .line 140
    :cond_4
    sget-object v2, Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;->ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 141
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;->ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v0, 0x1

    .line 143
    .local v0, "speakPassword":Z
    :goto_17
    if-nez v0, :cond_3

    .line 147
    .end local v0    # "speakPassword":Z
    :cond_19
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/utils/InputTypeUtils;->isPasswordInputType(I)Z

    move-result v1

    goto :goto_3

    :cond_30
    move v0, v1

    .line 141
    goto :goto_17
.end method
