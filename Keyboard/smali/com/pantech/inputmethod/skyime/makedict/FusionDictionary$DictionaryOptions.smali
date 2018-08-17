.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryOptions"
.end annotation


# instance fields
.field public final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFrenchLigatureProcessing:Z

.field public final mGermanUmlautProcessing:Z


# direct methods
.method public constructor <init>(Ljava/util/HashMap;ZZ)V
    .registers 4
    .param p2, "germanUmlautProcessing"    # Z
    .param p3, "frenchLigatureProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mAttributes:Ljava/util/HashMap;

    .line 252
    iput-boolean p2, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mGermanUmlautProcessing:Z

    .line 253
    iput-boolean p3, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$DictionaryOptions;->mFrenchLigatureProcessing:Z

    .line 254
    return-void
.end method
