.class Lcom/pantech/inputmethod/skyime/SkyIME$7;
.super Ljava/lang/Object;
.source "SkyIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;->showSubtypeSelectorAndSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2

    .prologue
    .line 4217
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$7;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 4219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4220
    packed-switch p2, :pswitch_data_20

    .line 4232
    :goto_6
    return-void

    .line 4222
    :pswitch_7
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$7;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1900(Lcom/pantech/inputmethod/skyime/SkyIME;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x14200000

    invoke-static {v1, v2}, Lcom/pantech/inputmethod/compat/CompatUtils;->getInputLanguageSelectionIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$7;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/skyime/SkyIME;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 4229
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_19
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$7;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/SkyIME;->launchSettings()V

    goto :goto_6

    .line 4220
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_19
    .end packed-switch
.end method
