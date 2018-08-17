.class public Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
.super Landroid/app/Activity;
.source "EngKeyboardTypePreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCancelButtonClickListner:Landroid/view/View$OnClickListener;

.field private mCurEngKeyboardType:I

.field private mEngKeyboardTypeListView:Landroid/widget/ListView;

.field mEntryValues:[Ljava/lang/String;

.field mKeyboardType:[Ljava/lang/String;

.field mKeyboardTypeSummary:[Ljava/lang/String;

.field mKorKeyboardTypeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOkButtonClickListener:Landroid/view/View$OnClickListener;

.field mPreviewImg:Landroid/widget/ImageView;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    .line 128
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$1;-><init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$2;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$2;-><init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$3;-><init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mKorKeyboardTypeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ImagePreviewer(I)V
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 178
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    .line 179
    packed-switch p1, :pswitch_data_22

    .line 189
    :goto_e
    return-void

    .line 181
    :pswitch_f
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020195

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 184
    :pswitch_18
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 179
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method private ListViewSettings()V
    .registers 7

    .prologue
    const v5, 0x7f100067

    const v4, 0x7f100066

    const/4 v3, 0x1

    .line 72
    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEngKeyboardTypeListView:Landroid/widget/ListView;

    .line 73
    iget v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->ImagePreviewer(I)V

    .line 74
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEngKeyboardTypeListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mKorKeyboardTypeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEngKeyboardTypeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 76
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEngKeyboardTypeListView:Landroid/widget/ListView;

    const v1, 0x7f0b001d

    const v2, 0x109000f

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEngKeyboardTypeListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findIndexOfValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->ImagePreviewer(I)V

    return-void
.end method

.method private findIndexOfValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 174
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "-1"

    goto :goto_8
.end method


# virtual methods
.method public findIndexOfListView(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 161
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 162
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 167
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 161
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 167
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->ListViewSettings()V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->setContentView(I)V

    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    .line 43
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    const-string v1, "eng_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findIndexOfListView(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    .line 47
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->ListViewSettings()V

    .line 49
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 217
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    const-string v1, "eng_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->findIndexOfListView(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->mCurEngKeyboardType:I

    .line 60
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->ListViewSettings()V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 205
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->finish()V

    .line 206
    const/4 v0, 0x1

    goto :goto_b

    .line 203
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
