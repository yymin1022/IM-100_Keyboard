.class Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;
.super Ljava/lang/Object;
.source "SKYSoundListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$100(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V

    .line 268
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    return-void
.end method
