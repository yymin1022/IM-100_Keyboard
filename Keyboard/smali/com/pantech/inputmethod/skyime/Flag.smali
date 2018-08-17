.class public Lcom/pantech/inputmethod/skyime/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# static fields
.field private static final SOURCE_CONFIG:I = 0x1

.field private static final SOURCE_EXTRAVALUE:I = 0x2

.field private static final SOURCE_PARAM:I = 0x3


# instance fields
.field public final mMask:I

.field public final mName:Ljava/lang/String;

.field public final mResource:I

.field public final mSource:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "mask"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mResource:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mSource:I

    .line 50
    iput p1, p0, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "mask"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mName:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/pantech/inputmethod/skyime/Flag;->mResource:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mSource:I

    .line 36
    iput p2, p0, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/Flag;->mName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mResource:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/inputmethod/skyime/Flag;->mSource:I

    .line 43
    iput p2, p0, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    .line 44
    return-void
.end method

.method public static initFlags([Lcom/pantech/inputmethod/skyime/Flag;Landroid/content/Context;Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;)I
    .registers 10
    .param p0, "flagArray"    # [Lcom/pantech/inputmethod/skyime/Flag;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switcher"    # Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "flags":I
    if-nez p1, :cond_13

    const/4 v5, 0x0

    .line 57
    .local v5, "res":Landroid/content/res/Resources;
    :goto_4
    move-object v0, p0

    .local v0, "arr$":[Lcom/pantech/inputmethod/skyime/Flag;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_7
    if-ge v3, v4, :cond_38

    aget-object v1, v0, v3

    .line 58
    .local v1, "entry":Lcom/pantech/inputmethod/skyime/Flag;
    iget v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mSource:I

    packed-switch v6, :pswitch_data_3a

    .line 57
    :cond_10
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 56
    .end local v0    # "arr$":[Lcom/pantech/inputmethod/skyime/Flag;
    .end local v1    # "entry":Lcom/pantech/inputmethod/skyime/Flag;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    goto :goto_4

    .line 60
    .restart local v0    # "arr$":[Lcom/pantech/inputmethod/skyime/Flag;
    .restart local v1    # "entry":Lcom/pantech/inputmethod/skyime/Flag;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    :pswitch_18
    if-eqz v5, :cond_22

    iget v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mResource:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 61
    :cond_22
    iget v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_10

    .line 64
    :pswitch_26
    if-eqz p2, :cond_30

    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/pantech/inputmethod/skyime/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 66
    :cond_30
    iget v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_10

    .line 69
    :pswitch_34
    iget v6, v1, Lcom/pantech/inputmethod/skyime/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_10

    .line 73
    .end local v1    # "entry":Lcom/pantech/inputmethod/skyime/Flag;
    :cond_38
    return v2

    .line 58
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_26
        :pswitch_34
    .end packed-switch
.end method
