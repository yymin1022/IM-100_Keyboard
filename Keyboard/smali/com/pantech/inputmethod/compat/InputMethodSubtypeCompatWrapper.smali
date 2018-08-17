.class public final Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
.super Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;
.source "InputMethodSubtypeCompatWrapper.java"


# static fields
.field public static final CLASS_InputMethodSubtype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en_US"

.field private static final DEFAULT_MODE:Ljava/lang/String; = "keyboard"

.field private static final METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

.field private static final METHOD_getDisplayName:Ljava/lang/reflect/Method;

.field private static final METHOD_getExtraValue:Ljava/lang/reflect/Method;

.field private static final METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

.field private static final METHOD_getIconResId:Ljava/lang/reflect/Method;

.field private static final METHOD_getLocale:Ljava/lang/reflect/Method;

.field private static final METHOD_getMode:Ljava/lang/reflect/Method;

.field private static final METHOD_getNameResId:Ljava/lang/reflect/Method;

.field private static final METHOD_isAuxiliary:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDummyExtraValues:Ljava/lang/String;

.field private final mDummyIconResId:I

.field private final mDummyLocale:Ljava/lang/String;

.field private final mDummyMode:Ljava/lang/String;

.field private final mDummyNameResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->DBG:Z

    .line 34
    const-class v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "android.view.inputmethod.InputMethodSubtype"

    invoke-static {v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getNameResId"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getNameResId:Ljava/lang/reflect/Method;

    .line 42
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getIconResId"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getIconResId:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getLocale"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getLocale:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getMode"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getMode:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getExtraValue"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValue:Ljava/lang/reflect/Method;

    .line 50
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "containsExtraValueKey"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getExtraValueOf"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

    .line 54
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "isAuxiliary"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_isAuxiliary:Ljava/lang/reflect/Method;

    .line 56
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    const-string v1, "getDisplayName"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getDisplayName:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "nameResId"    # I
    .param p2, "iconResId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValues"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;-><init>(Ljava/lang/Object;)V

    .line 80
    sget-boolean v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->DBG:Z

    if-eqz v0, :cond_f

    .line 81
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->TAG:Ljava/lang/String;

    const-string v1, "CreateInputMethodSubtypeCompatWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_f
    iput p1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 84
    iput p2, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 85
    if-eqz p3, :cond_20

    .end local p3    # "locale":Ljava/lang/String;
    :goto_15
    iput-object p3, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 86
    if-eqz p4, :cond_23

    .end local p4    # "mode":Ljava/lang/String;
    :goto_19
    iput-object p4, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 87
    if-eqz p5, :cond_26

    .end local p5    # "extraValues":Ljava/lang/String;
    :goto_1d
    iput-object p5, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 88
    return-void

    .line 85
    .restart local p3    # "locale":Ljava/lang/String;
    .restart local p4    # "mode":Ljava/lang/String;
    .restart local p5    # "extraValues":Ljava/lang/String;
    :cond_20
    const-string p3, ""

    goto :goto_15

    .line 86
    .end local p3    # "locale":Ljava/lang/String;
    :cond_23
    const-string p4, ""

    goto :goto_19

    .line 87
    .end local p4    # "mode":Ljava/lang/String;
    :cond_26
    const-string p5, ""

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "subtype"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->CLASS_InputMethodSubtype:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .end local p1    # "subtype":Ljava/lang/Object;
    :goto_d
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;-><init>(Ljava/lang/Object;)V

    .line 69
    iput v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 70
    iput v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 71
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 72
    const-string v0, "keyboard"

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 74
    return-void

    .line 67
    .restart local p1    # "subtype":Ljava/lang/Object;
    :cond_21
    const/4 p1, 0x0

    goto :goto_d
.end method

.method private static hashCodeInternal(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "nameResId"    # I
    .param p1, "iconResId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_containsExtraValueKey:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    instance-of v1, p1, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_44

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 160
    .local v0, "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_39

    .line 162
    iget v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    iget v2, v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    if-ne v1, v2, :cond_37

    iget v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    iget v2, v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    iget-object v2, v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    .line 170
    .end local v0    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :goto_36
    return v1

    .line 162
    .restart local v0    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_37
    const/4 v1, 0x0

    goto :goto_36

    .line 168
    :cond_39
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_36

    .line 170
    .end local v0    # "subtype":Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    :cond_44
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_36
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-eqz v3, :cond_1e

    .line 133
    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const-string v4, ""

    sget-object v5, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getDisplayName:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v1, v3

    .line 148
    :cond_1d
    :goto_1d
    return-object v1

    .line 139
    :cond_1e
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "localeStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getNameResId()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 144
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getNameResId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    .local v2, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 146
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method public getExtraValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    .line 115
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValue:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getExtraValueOf:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    .line 97
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getIconResId:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method

.method public getLocale()Ljava/lang/String;
    .registers 6

    .prologue
    .line 101
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    .line 103
    :cond_6
    :goto_6
    return-object v0

    .line 102
    :cond_7
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getLocale:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_6

    const-string v0, "en_US"

    goto :goto_6
.end method

.method public getMode()Ljava/lang/String;
    .registers 6

    .prologue
    .line 107
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    .line 110
    :cond_6
    :goto_6
    return-object v0

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getMode:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "keyboard"

    goto :goto_6
.end method

.method public getNameResId()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    .line 92
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_getNameResId:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 176
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 177
    iget v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyNameResId:I

    iget v1, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyIconResId:I

    iget-object v2, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mDummyExtraValues:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hashCodeInternal(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 180
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_12
.end method

.method public isAuxiliary()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->mObj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->METHOD_isAuxiliary:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDummy()Z
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
