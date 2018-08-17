.class Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeArray"
.end annotation


# static fields
.field private static final INCREMENT:I = 0x2


# instance fields
.field mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

.field mLength:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 71
    return-void
.end method


# virtual methods
.method add(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V
    .registers 6
    .param p1, "n"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .prologue
    const/4 v3, 0x0

    .line 74
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    array-length v2, v2

    if-le v1, v2, :cond_1d

    .line 75
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 76
    .local v0, "tempData":[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    if-lez v1, :cond_1b

    .line 77
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    iget v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :cond_1b
    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 81
    .end local v0    # "tempData":[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_1d
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    iget v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    aput-object p1, v1, v2

    .line 82
    return-void
.end method
