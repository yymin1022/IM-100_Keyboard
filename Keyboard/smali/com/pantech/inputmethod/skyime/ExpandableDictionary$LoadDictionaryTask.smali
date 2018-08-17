.class Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;
.super Ljava/lang/Thread;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictionaryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/ExpandableDictionary;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableDictionary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 702
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableDictionary;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->loadDictionaryAsync()V

    .line 703
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableDictionary;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->access$000(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 704
    :try_start_c
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/pantech/inputmethod/skyime/ExpandableDictionary;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->access$102(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;Z)Z

    .line 705
    monitor-exit v1

    .line 706
    return-void

    .line 705
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method
