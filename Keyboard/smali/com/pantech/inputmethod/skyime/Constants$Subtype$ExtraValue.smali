.class public final Lcom/pantech/inputmethod/skyime/Constants$Subtype$ExtraValue;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/Constants$Subtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraValue"
.end annotation


# static fields
.field public static final ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field public static final IS_ADDITIONAL_SUBTYPE:Ljava/lang/String; = "isAdditionalSubtype"

.field public static final KEYBOARD_LAYOUT_SET:Ljava/lang/String; = "KeyboardLayoutSet"

.field public static final REQ_NETWORK_CONNECTIVITY:Ljava/lang/String; = "requireNetworkConnectivity"

.field public static final UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method
