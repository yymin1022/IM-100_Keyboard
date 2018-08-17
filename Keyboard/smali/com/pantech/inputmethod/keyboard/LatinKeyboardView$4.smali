.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->showMoreKeyboard(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$400(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1294
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$400(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Lcom/pantech/inputmethod/skyime/MoreKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/MoreKeyboardView;->dismissMoreKeysPanel()Z

    .line 1297
    :cond_11
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$4;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    const/16 v1, -0x1f4

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1100(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;I)V

    .line 1304
    sget-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_21

    .line 1305
    sget-object v0, Lcom/pantech/inputmethod/skyime/settings/SkySettingsActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1307
    :cond_21
    return-void
.end method
