.class Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictionaryController"
.end annotation


# instance fields
.field private volatile mLastUpdateRequestTime:J

.field private volatile mLastUpdateTime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 465
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 466
    iput-wide v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    .line 467
    iput-wide v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    .param p1, "x1"    # J

    .prologue
    .line 465
    iput-wide p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;
    .param p1, "x1"    # J

    .prologue
    .line 465
    iput-wide p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->isOutOfDate()Z

    move-result v0

    return v0
.end method

.method private isOutOfDate()Z
    .registers 5

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateRequestTime:J

    iget-wide v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$DictionaryController;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
