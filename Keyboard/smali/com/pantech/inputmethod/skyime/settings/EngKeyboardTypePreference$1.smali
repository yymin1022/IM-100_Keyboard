.class Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;
.super Ljava/lang/Object;
.source "EngKeyboardTypePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "eng_keyboard_type_key"

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->access$000(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->access$100(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->finish()V

    .line 140
    return-void
.end method
