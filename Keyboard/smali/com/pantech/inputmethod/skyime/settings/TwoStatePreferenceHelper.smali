.class public Lcom/pantech/inputmethod/skyime/settings/TwoStatePreferenceHelper;
.super Ljava/lang/Object;
.source "TwoStatePreferenceHelper.java"


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static addSwitchPreferenceBasedOnCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceGroup;)V
    .registers 4
    .param p0, "checkBox"    # Landroid/preference/CheckBoxPreference;
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 67
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 71
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isPersistent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 72
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 77
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 78
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private static replaceAllCheckBoxPreferencesBySwitchPreferences(Landroid/preference/PreferenceGroup;)V
    .registers 6
    .param p0, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 48
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 49
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 51
    :cond_16
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 52
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_3b

    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 54
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2e

    .line 55
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-static {v2, p0}, Lcom/pantech/inputmethod/skyime/settings/TwoStatePreferenceHelper;->addSwitchPreferenceBasedOnCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceGroup;)V

    .line 52
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 57
    .restart local v2    # "preference":Landroid/preference/Preference;
    :cond_2e
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 58
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2b

    .line 59
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/settings/TwoStatePreferenceHelper;->replaceAllCheckBoxPreferencesBySwitchPreferences(Landroid/preference/PreferenceGroup;)V

    goto :goto_2b

    .line 63
    :cond_3b
    return-void
.end method

.method public static replaceCheckBoxPreferencesBySwitchPreferences(Landroid/preference/PreferenceGroup;)V
    .registers 3
    .param p0, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_7

    .line 42
    :goto_6
    return-void

    .line 41
    :cond_7
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/settings/TwoStatePreferenceHelper;->replaceAllCheckBoxPreferencesBySwitchPreferences(Landroid/preference/PreferenceGroup;)V

    goto :goto_6
.end method
