.class Lcom/pantech/inputmethod/skyime/SkyIME$1;
.super Landroid/database/ContentObserver;
.source "SkyIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$1;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "self"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$1;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->loadTouchEffectInfoAsync()V

    .line 735
    return-void
.end method
