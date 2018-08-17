.class Lcom/pantech/inputmethod/skyime/ContactsDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/ContactsDictionary;->registerObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/ContactsDictionary;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/ContactsDictionary;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary$1;->this$0:Lcom/pantech/inputmethod/skyime/ContactsDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "self"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ContactsDictionary$1;->this$0:Lcom/pantech/inputmethod/skyime/ContactsDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/ContactsDictionary;->setRequiresReload(Z)V

    .line 75
    return-void
.end method
