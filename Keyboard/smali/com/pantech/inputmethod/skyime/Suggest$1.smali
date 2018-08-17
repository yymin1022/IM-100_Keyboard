.class Lcom/pantech/inputmethod/skyime/Suggest$1;
.super Ljava/lang/Thread;
.source "Suggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/Suggest;->resetMainDict(Landroid/content/Context;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/Suggest;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->this$0:Lcom/pantech/inputmethod/skyime/Suggest;

    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->val$locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/skyime/DictionaryFactory;->createMainDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;)Lcom/pantech/inputmethod/skyime/DictionaryCollection;

    move-result-object v0

    .line 143
    .local v0, "newMainDict":Lcom/pantech/inputmethod/skyime/DictionaryCollection;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->this$0:Lcom/pantech/inputmethod/skyime/Suggest;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/DictionaryCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    :goto_13
    invoke-static {v2, v1}, Lcom/pantech/inputmethod/skyime/Suggest;->access$002(Lcom/pantech/inputmethod/skyime/Suggest;Z)Z

    .line 144
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->this$0:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/Suggest;->access$100(Lcom/pantech/inputmethod/skyime/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "main"

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->access$200(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 145
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/Suggest$1;->this$0:Lcom/pantech/inputmethod/skyime/Suggest;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/Suggest;->access$300(Lcom/pantech/inputmethod/skyime/Suggest;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "main"

    invoke-static {v1, v2, v0}, Lcom/pantech/inputmethod/skyime/Suggest;->access$200(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/Dictionary;)V

    .line 146
    return-void

    .line 143
    :cond_2d
    const/4 v1, 0x0

    goto :goto_13
.end method
