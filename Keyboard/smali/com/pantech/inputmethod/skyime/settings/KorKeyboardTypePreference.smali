.class public Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
.super Landroid/app/Activity;
.source "KorKeyboardTypePreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCancelButtonClickListner:Landroid/view/View$OnClickListener;

.field private mCurKorKeyboardType:I

.field mEntryValues:[Ljava/lang/String;

.field mKeyboardType:[Ljava/lang/String;

.field mKeyboardTypeSummary:[Ljava/lang/String;

.field private mKorKeyboardTypeListView:Landroid/widget/ListView;

.field mOkButtonClickListener:Landroid/view/View$OnClickListener;

.field mPreviewImg:Landroid/widget/ImageView;

.field mThemeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    .line 144
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$1;-><init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$2;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$2;-><init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$3;-><init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mThemeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ImagePreviewer(I)V
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 194
    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    .line 195
    packed-switch p1, :pswitch_data_3c

    .line 216
    :goto_e
    return-void

    .line 198
    :pswitch_f
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 201
    :pswitch_18
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 204
    :pswitch_21
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 207
    :pswitch_2a
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 210
    :pswitch_33
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mPreviewImg:Landroid/widget/ImageView;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 195
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_18
        :pswitch_21
        :pswitch_2a
        :pswitch_33
    .end packed-switch
.end method

.method private ListViewSettings()V
    .registers 7

    .prologue
    const v5, 0x7f100067

    const v4, 0x7f100066

    const/4 v3, 0x1

    .line 88
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mKorKeyboardTypeListView:Landroid/widget/ListView;

    .line 89
    iget v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->ImagePreviewer(I)V

    .line 90
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mKorKeyboardTypeListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mThemeListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mKorKeyboardTypeListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 92
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mKorKeyboardTypeListView:Landroid/widget/ListView;

    const v1, 0x7f0b001e

    const v2, 0x109000f

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mKorKeyboardTypeListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCancelButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mOkButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findIndexOfValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->ImagePreviewer(I)V

    return-void
.end method

.method private findIndexOfValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 190
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
    .line 176
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 177
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 178
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 183
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 177
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 183
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->ListViewSettings()V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->setContentView(I)V

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    .line 45
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mEntryValues:[Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    const-string v1, "kor_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findIndexOfListView(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    .line 49
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->ListViewSettings()V

    .line 51
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 246
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f0c00b6

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 223
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->sp:Landroid/content/SharedPreferences;

    const-string v1, "kor_keyboard_type_key"

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->findIndexOfListView(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->mCurKorKeyboardType:I

    .line 62
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->ListViewSettings()V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 234
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->finish()V

    .line 235
    const/4 v0, 0x1

    goto :goto_b

    .line 232
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    return-void
.end method
