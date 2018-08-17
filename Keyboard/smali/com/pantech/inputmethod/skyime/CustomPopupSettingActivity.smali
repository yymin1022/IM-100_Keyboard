.class public Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;
.super Landroid/app/Activity;
.source "CustomPopupSettingActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CustomPopupSettingActivity"


# instance fields
.field private btnIdArray:[I

.field private mContext:Landroid/content/Context;

.field private mCurrentButtonIndex:I

.field private mCustomDialogView:Landroid/view/View;

.field mDialog:Landroid/app/AlertDialog;

.field private mNewSymbol:Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSymbolButtonArray:[Landroid/widget/Button;

.field private mSymbolEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xc

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->btnIdArray:[I

    .line 45
    new-array v0, v1, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mNewSymbol:Ljava/lang/String;

    return-void

    .line 39
    :array_14
    .array-data 4
        0x7f10006b
        0x7f10006c
        0x7f10006d
        0x7f10006e
        0x7f10006f
        0x7f100070
        0x7f100071
        0x7f100072
        0x7f100073
        0x7f100074
        0x7f100075
        0x7f100076
    .end array-data
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->updateAllButtonLabel()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCustomDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mNewSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mNewSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCurrentButtonIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCurrentButtonIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->updateCustomPopupListAtPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)[Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    return-object v0
.end method

.method private addClickEventListenerOnButton()V
    .registers 6

    .prologue
    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    array-length v3, v3

    if-ge v1, v3, :cond_2a

    .line 208
    move v2, v1

    .line 209
    .local v2, "tempIndex":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "customList":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mNewSymbol:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;-><init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "customList":Ljava/lang/String;
    .end local v2    # "tempIndex":I
    :cond_2a
    return-void
.end method

.method private createCustomDialog()V
    .registers 5

    .prologue
    .line 284
    new-instance v1, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$3;-><init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)V

    .line 304
    .local v1, "customDialogListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00e0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCustomDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00e4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    .line 311
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 132
    iput-object p0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mContext:Landroid/content/Context;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->btnIdArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 135
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->btnIdArray:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 139
    :cond_19
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 140
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const v2, 0x7f100068

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCustomDialogView:Landroid/view/View;

    .line 144
    const-string v2, "com.pantech.inputmethod.skyime_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    .line 196
    return-void
.end method

.method private updateAllButtonLabel()V
    .registers 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "customList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 202
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 204
    :cond_23
    return-void
.end method

.method private updateCustomPopupListAtPreference(Ljava/lang/String;)V
    .registers 7
    .param p1, "newSymbol"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getCustomPopupList(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "customList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 326
    .local v0, "chars":[C
    iget v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCurrentButtonIndex:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 327
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 330
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "edittext_preference"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mSymbolButtonArray:[Landroid/widget/Button;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mCurrentButtonIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 348
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->init()V

    .line 59
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->updateAllButtonLabel()V

    .line 60
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->addClickEventListenerOnButton()V

    .line 61
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->createCustomDialog()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 72
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    const v2, 0x7f0c00dc

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 355
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    .line 360
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 361
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 365
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 336
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 337
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 341
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_62

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 82
    :sswitch_d
    new-instance v0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$1;-><init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;)V

    .line 108
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    .line 124
    .end local v0    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :sswitch_5d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->finish()V

    goto :goto_c

    .line 80
    nop

    :sswitch_data_62
    .sparse-switch
        0x102002c -> :sswitch_5d
        0x7f1000f3 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    :cond_c
    return-void
.end method
