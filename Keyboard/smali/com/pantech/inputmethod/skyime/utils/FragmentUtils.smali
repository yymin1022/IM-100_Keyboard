.class public Lcom/pantech/inputmethod/skyime/utils/FragmentUtils;
.super Ljava/lang/Object;
.source "FragmentUtils.java"


# static fields
.field private static final sSkyImeFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/FragmentUtils;->sSkyImeFragments:Ljava/util/HashSet;

    .line 28
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/FragmentUtils;->sSkyImeFragments:Ljava/util/HashSet;

    const-class v1, Lcom/pantech/inputmethod/skyime/settings/SkySettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidFragment(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/pantech/inputmethod/skyime/utils/FragmentUtils;->sSkyImeFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
