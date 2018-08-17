.class Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;
.super Ljava/lang/Thread;
.source "ExpandableBinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReloadDictionaryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;)V
    .registers 2

    .prologue
    .line 453
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;
    .param p2, "x1"    # Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary$AsyncReloadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;->access$500(Lcom/pantech/inputmethod/skyime/ExpandableBinaryDictionary;)V

    .line 457
    return-void
.end method
