.class public Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"


# static fields
.field public static final FORCE_ENABLE_VOICE_EVEN_WITH_NO_VOICE_SUBTYPES:Z = false

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

.field private static final METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

.field private static final METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

.field private static final METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

.field private static final METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

.field public static final SUBTYPE_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLatinImePackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-class v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    .line 49
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getCurrentInputMethodSubtype"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    .line 51
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getEnabledInputMethodSubtypeList"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/view/inputmethod/InputMethodInfo;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    .line 54
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "getShortcutInputMethodsAndSubtypes"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    .line 56
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "setInputMethodAndSubtype"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    .line 60
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v3, "switchToLastInputMethod"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    .line 63
    new-instance v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-direct {v2}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;-><init>()V

    sput-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 71
    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6e

    :goto_6b
    sput-boolean v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    .line 72
    return-void

    :cond_6e
    move v0, v1

    .line 71
    goto :goto_6b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    return-object v0
.end method

.method public static getInstance()Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_d

    .line 88
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getInstance() is called before initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_d
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method private getLastResortSubtype(Ljava/lang/String;)Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .registers 9
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    const-string v2, "voice"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 147
    :cond_a
    :goto_a
    return-object v0

    .line 143
    :cond_b
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v6

    .line 144
    .local v6, "inputLocale":Ljava/util/Locale;
    if-eqz v6, :cond_a

    .line 147
    new-instance v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v2, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private getLatinImeInputMethodInfo()Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getInputMethodInfo(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    goto :goto_9
.end method

.method public static init(Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;)V
    .registers 3
    .param p0, "service"    # Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    .prologue
    .line 93
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    iput-object p0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 94
    sget-object v1, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 96
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    return-void
.end method


# virtual methods
.method public getCurrentInputMethodSubtype()Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .registers 6

    .prologue
    .line 102
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getCurrentInputMethodSubtype:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_6

    .line 211
    const/4 v2, 0x0

    .line 217
    :cond_5
    return-object v2

    .line 213
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 215
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v3, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-direct {v3, v1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;
    .registers 10
    .param p1, "imi"    # Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getEnabledInputMethodSubtypeList:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    :goto_f
    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v2, v4, v5}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "retval":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_29

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 113
    :cond_29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 129
    :goto_2d
    return-object v1

    .end local v0    # "retval":Ljava/lang/Object;
    :cond_2e
    move-object v1, v2

    .line 108
    goto :goto_f

    .line 129
    .restart local v0    # "retval":Ljava/lang/Object;
    :cond_30
    invoke-static {v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2d
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 152
    iget-object v5, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v7, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_getShortcutInputMethodsAndSubtypes:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "retval":Ljava/lang/Object;
    instance-of v5, v2, Ljava/util/Map;

    if-eqz v5, :cond_19

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 156
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 187
    :cond_1d
    :goto_1d
    return-object v4

    .line 176
    :cond_1e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "shortcutMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    move-object v3, v2

    .line 178
    check-cast v3, Ljava/util/Map;

    .line 179
    .local v3, "retvalMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, "key":Ljava/lang/Object;
    instance-of v5, v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_45

    .line 181
    sget-object v5, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "Class type error."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 182
    goto :goto_1d

    .line 184
    :cond_45
    new-instance v7, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-object v5, v1

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v7, v5}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;-><init>(Landroid/view/inputmethod/InputMethodInfo;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/inputmethod/compat/CompatUtils;->copyInputMethodSubtypeListToWrapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "imiId"    # Ljava/lang/String;
    .param p3, "subtype"    # Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .prologue
    .line 194
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 195
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_setInputMethodAndSubtype:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_20
    return-void

    .line 198
    :cond_21
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public showInputMethodPicker()V
    .registers 29

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_7

    .line 303
    :goto_6
    return-void

    .line 224
    :cond_7
    sget-boolean v5, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->SUBTYPE_SUPPORTED:Z

    if-eqz v5, :cond_13

    .line 225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_6

    .line 231
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getInputMethodInfo(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v21

    .line 233
    .local v21, "myImi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    .line 235
    .local v7, "myImsList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v14

    .line 236
    .local v14, "currentIms":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 237
    .local v9, "imiList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    new-instance v5, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$1;-><init>(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 248
    .local v6, "myImsCount":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    .line 249
    .local v17, "imiCount":I
    add-int v5, v6, v17

    new-array v0, v5, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 251
    .local v20, "items":[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 252
    .local v13, "checkedItem":I
    const/16 v19, 0x0

    .line 253
    .local v19, "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 254
    .local v22, "myImiLabel":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_59
    if-ge v15, v6, :cond_bc

    .line 255
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 256
    .local v18, "ims":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 257
    move/from16 v13, v19

    .line 258
    :cond_6b
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mLatinImePackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x1

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x2

    const-string v25, ")"

    aput-object v25, v5, v24

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 261
    .local v23, "title":Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 262
    add-int/lit8 v19, v19, 0x1

    .line 254
    add-int/lit8 v15, v15, 0x1

    goto :goto_59

    .line 265
    .end local v18    # "ims":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v23    # "title":Ljava/lang/CharSequence;
    :cond_bc
    const/4 v15, 0x0

    :goto_bd
    move/from16 v0, v17

    if-ge v15, v0, :cond_d8

    .line 266
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 267
    .local v16, "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 268
    .restart local v23    # "title":Ljava/lang/CharSequence;
    aput-object v23, v20, v19

    .line 269
    add-int/lit8 v19, v19, 0x1

    .line 265
    add-int/lit8 v15, v15, 0x1

    goto :goto_bd

    .line 272
    .end local v16    # "imi":Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v23    # "title":Ljava/lang/CharSequence;
    :cond_d8
    new-instance v12, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$2;-><init>(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;)V

    .line 281
    .local v12, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    .line 282
    .local v8, "service":Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;
    invoke-virtual {v8}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v10, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 283
    .local v10, "token":Landroid/os/IBinder;
    new-instance v4, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$3;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper$3;-><init>(Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;ILjava/util/List;Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;Ljava/util/List;Landroid/os/IBinder;)V

    .line 298
    .local v4, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-object/from16 v24, v0

    const v25, 0x7f0c00aa

    invoke-virtual/range {v24 .. v25}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v24, 0x7f0c00ab

    move/from16 v0, v24

    invoke-virtual {v5, v0, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v13, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 302
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/pantech/inputmethod/compat/InputMethodServiceCompatWrapper;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    goto/16 :goto_6
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->getInstance()Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->isDummyVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 206
    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/pantech/inputmethod/compat/InputMethodManagerCompatWrapper;->METHOD_switchToLastInputMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c
.end method
