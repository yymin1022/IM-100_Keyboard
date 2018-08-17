.class public Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;
.super Ljava/lang/Object;
.source "VibratorCompatWrapper.java"


# static fields
.field private static final METHOD_hasVibrator:Ljava/lang/reflect/Method;

.field private static final sInstance:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;


# instance fields
.field private IME_VIB_PATTERN:[J

.field private VIB_FIRST_DURATION:[J

.field private VIB_SECOND_DURATION:[J

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const-class v0, Landroid/os/SystemVibrator;

    const-string v1, "hasVibrator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    .line 29
    new-instance v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    invoke-direct {v0}, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->IME_VIB_PATTERN:[J

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_FIRST_DURATION:[J

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_SECOND_DURATION:[J

    .line 47
    return-void

    .line 33
    :array_1e
    .array-data 8
        0x0
        0xa
        0x5
        0xe
    .end array-data

    .line 37
    :array_32
    .array-data 8
        0x0
        0x39
        0x41
        0x48
        0x4e
        0x50
        0x51
        0x53
    .end array-data

    .line 41
    :array_56
    .array-data 8
        0x0
        0xb
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x19
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    iget-object v0, v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_12

    .line 51
    sget-object v1, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, v1, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    .line 54
    :cond_12
    sget-object v0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->sInstance:Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;

    return-object v0
.end method


# virtual methods
.method public hasVibrator()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v1, :cond_6

    .line 60
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public vibrate(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 65
    return-void
.end method

.method public vibrate(JI)V
    .registers 5
    .param p1, "milliseconds"    # J
    .param p3, "volume"    # I

    .prologue
    .line 71
    if-lez p3, :cond_7

    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/SystemVibrator;->vibrate(JI)V

    .line 74
    :cond_7
    return-void
.end method

.method public vibratePattern(I)V
    .registers 6
    .param p1, "volume"    # I

    .prologue
    .line 78
    if-lez p1, :cond_22

    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_FIRST_DURATION:[J

    array-length v0, v0

    if-ge p1, v0, :cond_22

    .line 80
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->IME_VIB_PATTERN:[J

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_FIRST_DURATION:[J

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->IME_VIB_PATTERN:[J

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_SECOND_DURATION:[J

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/pantech/inputmethod/compat/VibratorCompatWrapper;->VIB_FIRST_DURATION:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/os/SystemVibrator;->vibrate(JI)V

    .line 87
    :cond_22
    return-void
.end method
