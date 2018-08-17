.class public Lcom/pantech/inputmethod/skyime/SkyIMEData;
.super Ljava/lang/Object;
.source "SkyIMEData.java"


# static fields
.field public static MULTITAP_DURATION_SIMPLE_QWERTY:I = 0x0

.field public static final SKYIME_PROVIDER:Z = true

.field public static final USE_DICTIONARY_PACK:Z

.field public static USE_SYSTEM_LIBRARY:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/SkyIMEData;->USE_SYSTEM_LIBRARY:Z

    .line 15
    const/16 v0, 0x12c

    sput v0, Lcom/pantech/inputmethod/skyime/SkyIMEData;->MULTITAP_DURATION_SIMPLE_QWERTY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
