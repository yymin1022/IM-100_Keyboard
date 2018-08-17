.class Lcom/android/inputmethodcommon/InputMethodSettingsImpl;
.super Ljava/lang/Object;
.source "InputMethodSettingsImpl.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

.field private mInputMethodSettingsCategoryTitleRes:I

.field private mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtypeEnablerIconRes:I

.field private mSubtypeEnablerPreference:Landroid/preference/Preference;

.field private mSubtypeEnablerTitle:Ljava/lang/CharSequence;

.field private mSubtypeEnablerTitleRes:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 81
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    const/4 v5, 0x0

    .line 93
    :goto_7
    return-object v5

    .line 82
    :cond_8
    const/4 v5, 0x1

    invoke-virtual {p1, p2, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 83
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_3e

    .line 86
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 87
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 88
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2a
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 93
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method private static getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 71
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 72
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 76
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_25
    return-object v1

    .line 70
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 76
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_29
    const/4 v1, 0x0

    goto :goto_25
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x1

    .line 51
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 52
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getMyImi(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 53
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-gt v1, v2, :cond_21

    .line 54
    :cond_1f
    const/4 v1, 0x0

    .line 65
    :goto_20
    return v1

    .line 56
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "input_method_id"

    iget-object v3, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    .line 62
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    move v1, v2

    .line 65
    goto :goto_20
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    .line 101
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 102
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitleRes:I

    .line 110
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mInputMethodSettingsCategoryTitle:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 112
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    .line 139
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 140
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    .line 148
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 150
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    .line 120
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 121
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    .line 129
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 131
    return-void
.end method

.method public updateSubtypeEnabler()V
    .registers 8

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerPreference:Landroid/preference/Preference;

    .line 154
    .local v2, "pref":Landroid/preference/Preference;
    if-nez v2, :cond_5

    .line 178
    :goto_4
    return-void

    .line 157
    :cond_5
    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    iget v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    if-eqz v5, :cond_3c

    .line 160
    iget v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitleRes:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "title":Ljava/lang/CharSequence;
    :goto_13
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_21

    .line 167
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 169
    :cond_21
    iget-object v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0, v5, v6}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getEnabledSubtypesLabel(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "summary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 171
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    :cond_32
    iget v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    if-eqz v5, :cond_3f

    .line 174
    iget v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIconRes:I

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_4

    .line 162
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_3c
    iget-object v4, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerTitle:Ljava/lang/CharSequence;

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto :goto_13

    .line 176
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "summary":Ljava/lang/String;
    :cond_3f
    iget-object v5, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mSubtypeEnablerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method
