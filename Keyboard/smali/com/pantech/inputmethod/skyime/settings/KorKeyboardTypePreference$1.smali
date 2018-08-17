.class Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;
.super Ljava/lang/Object;
.source "KorKeyboardTypePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "kor_keyboard_type_key"

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->access$000(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->access$100(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->finish()V

    .line 156
    return-void
.end method
