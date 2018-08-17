.class public Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;
.super Ljava/lang/Object;
.source "DictAndProximity.java"


# instance fields
.field public final mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

.field public final mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/Dictionary;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 3
    .param p1, "dictionary"    # Lcom/pantech/inputmethod/skyime/Dictionary;
    .param p2, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mDictionary:Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 30
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/spellcheck/DictAndProximity;->mProximityInfo:Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .line 31
    return-void
.end method
