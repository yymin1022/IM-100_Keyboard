.class public Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodInfoCompatWrapper.java"


# static fields
.field private static final METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

.field private static final METHOD_getSubtypeCount:Ljava/lang/reflect/Method;


# instance fields
.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 27
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeAt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

    .line 29
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeCount"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeCount:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    instance-of v0, p1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    check-cast p1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    :goto_e
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubtypeAt(I)Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .registers 9
    .param p1, "index"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSubtypeCount()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeCount:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
