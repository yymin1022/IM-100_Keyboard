.class public Lcom/pantech/inputmethod/compat/AccessibilityManagerCompatWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatWrapper.java"


# static fields
.field private static final METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;


# instance fields
.field private final mManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    const-string v1, "isTouchExplorationEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/AccessibilityManagerCompatWrapper;->METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/AccessibilityManagerCompatWrapper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 31
    return-void
.end method


# virtual methods
.method public isTouchExplorationEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/AccessibilityManagerCompatWrapper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/pantech/inputmethod/compat/AccessibilityManagerCompatWrapper;->METHOD_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
