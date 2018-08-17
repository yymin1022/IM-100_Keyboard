.class Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;
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
    .line 239
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0, p2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$002(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;I)I

    .line 243
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$100(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V

    .line 245
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$200(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$200(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, p2, :cond_2a

    .line 246
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$200(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->access$300(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;Ljava/lang/String;)V

    .line 255
    :cond_2a
    return-void
.end method
