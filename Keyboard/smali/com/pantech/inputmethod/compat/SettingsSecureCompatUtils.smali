.class public Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;
.super Ljava/lang/Object;
.source "SettingsSecureCompatUtils.java"


# static fields
.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

.field private static final FIELD_ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const-class v0, Landroid/provider/Settings$Secure;

    const-string v1, "ACCESSIBILITY_SPEAK_PASSWORD"

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;->FIELD_ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/reflect/Field;

    .line 32
    sget-object v0, Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;->FIELD_ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/pantech/inputmethod/compat/SettingsSecureCompatUtils;->ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
