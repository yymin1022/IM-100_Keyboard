.class Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;
.super Ljava/lang/Thread;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->closeAllDictionaries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

.field final synthetic val$oldPools:Ljava/util/Map;

.field final synthetic val$oldUserDictionaries:Ljava/util/Map;

.field final synthetic val$oldWhitelistDictionaries:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldPools:Ljava/util/Map;

    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldUserDictionaries:Ljava/util/Map;

    iput-object p5, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldWhitelistDictionaries:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 378
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldPools:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;

    .line 379
    .local v3, "pool":Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;->close()V

    goto :goto_a

    .line 381
    .end local v3    # "pool":Lcom/pantech/inputmethod/skyime/spellcheck/DictionaryPool;
    :cond_1a
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldUserDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 382
    .local v0, "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    goto :goto_24

    .line 384
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_34
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->val$oldWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 385
    .restart local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    goto :goto_3e

    .line 387
    .end local v0    # "dict":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_4e
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$100(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 388
    :try_start_55
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$200(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)Lcom/pantech/inputmethod/skyime/Dictionary;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 392
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$200(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;)Lcom/pantech/inputmethod/skyime/Dictionary;

    move-result-object v1

    .line 395
    .local v1, "dictToClose":Lcom/pantech/inputmethod/skyime/Dictionary;
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService$1;->this$0:Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;->access$202(Lcom/pantech/inputmethod/skyime/spellcheck/AndroidSpellCheckerService;Lcom/pantech/inputmethod/skyime/Dictionary;)Lcom/pantech/inputmethod/skyime/Dictionary;

    .line 396
    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/Dictionary;->close()V

    .line 398
    .end local v1    # "dictToClose":Lcom/pantech/inputmethod/skyime/Dictionary;
    :cond_6c
    monitor-exit v5

    .line 399
    return-void

    .line 398
    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_6e

    throw v4
.end method
