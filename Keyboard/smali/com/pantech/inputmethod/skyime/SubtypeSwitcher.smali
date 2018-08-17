.class public Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# static fields
.field private static DBG:Z = false

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final LOCALE_SEPARATER:C = '_'

.field private static final SUBTYPE_EXTRAVALUE_REQUIRE_NETWORK_CONNECTIVITY:Ljava/lang/String; = "requireNetworkConnectivity"

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;


# instance fields
.field private mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private final mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputLocale:Ljava/util/Locale;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mIsNetworkConnected:Z

.field private mIsSystemLanguageSameAsInputLanguage:Z

.field private final mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mNeedsToDisplayLanguage:Z

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/pantech/inputmethod/skyime/SkyIME;

.field private mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

.field private mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    .line 48
    const-class v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->sInstance:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;)Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "hay"    # [Ljava/lang/String;
    .param p1, "needle"    # Ljava/lang/String;

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 345
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 346
    const/4 v4, 0x1

    .line 348
    .end local v1    # "element":Ljava/lang/String;
    :goto_e
    return v4

    .line 344
    .restart local v1    # "element":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 348
    .end local v1    # "element":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->sInstance:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    return-object v0
.end method

.method private getSubtypeIcon(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "imi"    # Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .param p2, "subtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 319
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_98

    .line 320
    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "imiPackageName":Ljava/lang/String;
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_45

    .line 322
    sget-object v3, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update icons of IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_45
    if-eqz p2, :cond_56

    .line 326
    invoke-virtual {p2}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 340
    .end local v1    # "imiPackageName":Ljava/lang/String;
    :goto_55
    return-object v3

    .line 328
    .restart local v1    # "imiPackageName":Ljava/lang/String;
    :cond_56
    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeCount()I

    move-result v3

    if-lez v3, :cond_75

    invoke-virtual {p1, v6}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 329
    invoke-virtual {p1, v6}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_55

    .line 334
    :cond_75
    const/4 v3, 0x0

    :try_start_76
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_7d} :catch_7f

    move-result-object v3

    goto :goto_55

    .line 335
    :catch_7f
    move-exception v0

    .line 336
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME can\'t be found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "imiPackageName":Ljava/lang/String;
    :cond_98
    const/4 v3, 0x0

    goto :goto_55
.end method

.method private static getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;
    .registers 3
    .param p0, "subtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    .line 197
    const-string v1, "KeyboardLocale"

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "keyboardLocale":Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0    # "keyboardLocale":Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0    # "keyboardLocale":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static init(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2
    .param p0, "service"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 90
    sget-object v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->sInstance:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->initialize(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 91
    sget-object v0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->sInstance:Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateAllParameters()V

    .line 92
    return-void
.end method

.method private initialize(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 5
    .param p1, "service"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    const/4 v2, 0x0

    .line 99
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 100
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 101
    invoke-static {}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 102
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 104
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 107
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 108
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 110
    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    :goto_3c
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 114
    return-void

    .line 113
    :cond_3f
    const/4 v1, 0x0

    goto :goto_3c
.end method

.method public static isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method private switchToTargetIME(Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 7
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 300
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_13

    .line 310
    :goto_12
    return-void

    .line 303
    :cond_13
    new-instance v1, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;-><init>(Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method

.method private updateAllParameters()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 120
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateSubtype(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 121
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 122
    return-void
.end method

.method private updateEnabledSubtypes()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "currentMode":Ljava/lang/String;
    const/4 v1, 0x1

    .line 135
    .local v1, "foundCurrentSubtypeBecameDisabled":Z
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 137
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 140
    .local v3, "ims":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "locale":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "mode":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 143
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 144
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_4b
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 147
    const/4 v1, 0x0

    .line 149
    :cond_5a
    const-string v7, "keyboard"

    invoke-virtual {v3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 150
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 153
    .end local v3    # "ims":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "mode":Ljava/lang/String;
    :cond_6c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v7

    if-gt v7, v6, :cond_76

    iget-boolean v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v7, :cond_b3

    :cond_76
    :goto_76
    iput-boolean v6, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 155
    if-eqz v1, :cond_b2

    .line 156
    sget-boolean v6, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    if-eqz v6, :cond_a9

    .line 157
    sget-object v6, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v6, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v7, "Last subtype was disabled. Update to the current one."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_a9
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v6}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateSubtype(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 162
    :cond_b2
    return-void

    .line 153
    :cond_b3
    const/4 v6, 0x0

    goto :goto_76
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputLocaleStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 269
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 270
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 277
    :goto_f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 279
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v1, :cond_79

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 281
    return-void

    .line 272
    :cond_33
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 273
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "country":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, ""

    :goto_54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_f

    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    .line 279
    .end local v0    # "country":Ljava/lang/String;
    :cond_79
    const/4 v1, 0x0

    goto :goto_30
.end method

.method private updateShortcutIME()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 165
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_33

    .line 166
    sget-object v6, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update shortcut IME from : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_9b

    const-string v4, "<null>"

    :goto_18
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_a3

    const-string v4, "<null>"

    :goto_28
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_33
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v2

    .line 175
    .local v2, "shortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    iput-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 176
    iput-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 177
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 178
    .local v1, "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 181
    .local v3, "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c8

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    :goto_66
    iput-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 187
    .end local v1    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v3    # "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_68
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_9a

    .line 188
    sget-object v5, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME to : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_ca

    const-string v4, "<null>"

    :goto_7f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_d1

    const-string v4, "<null>"

    :goto_8f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_9a
    return-void

    .line 166
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "shortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    :cond_9b
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    :cond_a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v8}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v8}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_28

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .restart local v2    # "shortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    .restart local v3    # "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_c8
    move-object v4, v5

    .line 184
    goto :goto_66

    .line 188
    .end local v1    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v3    # "subtypes":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_ca
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_7f

    :cond_d1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v7}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8f
.end method


# virtual methods
.method public currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentSubtypeExtraValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getCurrentSubtypeExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentSubtypeMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "keyboard"

    goto :goto_a
.end method

.method public getEnabledKeyboardLocaleCount()I
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledLanguages()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 422
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 424
    .local v0, "enabledLanguageCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 425
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 429
    :cond_17
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getInputLanguageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getInputLocaleStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeIcon(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public isDummyVoiceMode()Z
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isKeyboardMode()Z
    .registers 3

    .prologue
    .line 449
    const-string v0, "keyboard"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutImeEnabled()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 352
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v5, :cond_7

    .line 371
    :cond_6
    :goto_6
    return v3

    .line 355
    :cond_7
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v5, :cond_d

    move v3, v4

    .line 356
    goto :goto_6

    .line 360
    :cond_d
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v5

    if-nez v5, :cond_17

    move v3, v4

    .line 361
    goto :goto_6

    .line 363
    :cond_17
    const/4 v0, 0x1

    .line 365
    .local v0, "allowsImplicitlySelectedSubtypes":Z
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mImm:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v5, v6, v4}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 367
    .local v1, "enabledSubtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1, v5}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v3, v4

    .line 368
    goto :goto_6
.end method

.method public isShortcutImeReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 376
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v1, :cond_7

    .line 377
    const/4 v0, 0x0

    .line 383
    :cond_6
    :goto_6
    return v0

    .line 378
    :cond_7
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_6

    .line 380
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    const-string v2, "requireNetworkConnectivity"

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 381
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_6
.end method

.method public isSystemLanguageSameAsInputLanguage()Z
    .registers 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    return v0
.end method

.method public isVoiceMode()Z
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public needsToDisplayLanguage(Ljava/util/Locale;)Z
    .registers 3
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    .line 441
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 443
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 444
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateAllParameters()V

    .line 446
    :cond_15
    return-void
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 387
    const-string v4, "noConnectivity"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 389
    .local v1, "noConnection":Z
    if-nez v1, :cond_a

    const/4 v3, 0x1

    :cond_a
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 391
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 392
    .local v2, "switcher":Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 393
    .local v0, "keyboard":Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_21

    .line 394
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v3

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 396
    :cond_21
    return-void
.end method

.method public switchToShortcutIME()V
    .registers 4

    .prologue
    .line 288
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v2, :cond_5

    .line 295
    :goto_4
    return-void

    .line 292
    :cond_5
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "imiId":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mShortcutSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 294
    .local v1, "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_4
.end method

.method public updateParametersOnStartInputView()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateEnabledSubtypes()V

    .line 128
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateShortcutIME()V

    .line 129
    return-void
.end method

.method public updateSubtype(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 12
    .param p1, "newSubtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "oldMode":Ljava/lang/String;
    if-nez p1, :cond_7d

    .line 210
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t get the current subtype."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v2, "en_US"

    .line 212
    .local v2, "newLocale":Ljava/lang/String;
    const-string v3, "keyboard"

    .line 217
    .local v3, "newMode":Ljava/lang/String;
    :goto_11
    sget-boolean v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->DBG:Z

    if-eqz v7, :cond_4d

    .line 218
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update subtype to:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4d
    const/4 v0, 0x0

    .line 222
    .local v0, "languageChanged":Z
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 223
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    if-eqz v7, :cond_5b

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_5b
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateInputLocale(Ljava/lang/String;)V

    .line 228
    :cond_5e
    const/4 v1, 0x0

    .line 229
    .local v1, "modeChanged":Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 230
    if-eqz v4, :cond_68

    .line 231
    const/4 v1, 0x1

    .line 234
    :cond_68
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mCurrentSubtype:Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 238
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 239
    if-nez v1, :cond_74

    if-eqz v0, :cond_7c

    .line 240
    :cond_74
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->updateShortcutIME()V

    .line 241
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->onRefreshKeyboard()V

    .line 260
    :cond_7c
    :goto_7c
    return-void

    .line 214
    .end local v0    # "languageChanged":Z
    .end local v1    # "modeChanged":Z
    .end local v2    # "newLocale":Ljava/lang/String;
    .end local v3    # "newMode":Ljava/lang/String;
    :cond_7d
    invoke-static {p1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getSubtypeLocale(Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "newLocale":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "newMode":Ljava/lang/String;
    goto :goto_11

    .line 244
    .restart local v0    # "languageChanged":Z
    .restart local v1    # "modeChanged":Z
    :cond_86
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 247
    .local v6, "version":I
    :try_start_8d
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->mService:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/skyime/SkyIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d .. :try_end_9a} :catch_146

    .line 251
    :goto_9a
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown subtype mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". IME is already changed to other IME."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz p1, :cond_7c

    .line 254
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype locale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype extra value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v7, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype is auxiliary:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    .line 249
    :catch_146
    move-exception v7

    goto/16 :goto_9a
.end method
