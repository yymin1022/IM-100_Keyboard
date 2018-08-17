.class public Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;
.super Ljava/lang/Object;
.source "FusionDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field mCachedAddress:I

.field mCachedSize:I

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 48
    iput v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 49
    iput v1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$CharGroup;>;"
    const/high16 v0, -0x80000000

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mData:Ljava/util/ArrayList;

    .line 53
    iput v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedSize:I

    .line 54
    iput v0, p0, Lcom/pantech/inputmethod/skyime/makedict/FusionDictionary$Node;->mCachedAddress:I

    .line 55
    return-void
.end method
