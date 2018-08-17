.class public Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;
.super Landroid/app/Activity;
.source "KeyboardHeightControlPreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field public static activity:Landroid/app/Activity;

.field private static mIsShowWindow:Z

.field private static final sInstance:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;


# instance fields
.field private controllerCover:Landroid/widget/LinearLayout;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mDefalutKeyboardHeight:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHeightControlEditText:Landroid/widget/EditText;

.field mHeightControlStrip:Landroid/view/View;

.field private mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

.field mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

.field private mLatestKeyboardHeight:I

.field private mLatestKeyboardHeightRatio:I

.field private mMaxKeyboardRatio:I

.field private mMinKeyboardRatio:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScreenEndYCoordinate:I

.field private mSoftKeyHeight:I

.field private parentLayout:Landroid/widget/LinearLayout;

.field private popupView:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field previousHeightDiffrence:I

.field screenRect:Landroid/graphics/Rect;

.field private stripHeight:I

.field windowRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->sInstance:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->windowRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->screenRect:Landroid/graphics/Rect;

    .line 63
    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    .line 81
    const/16 v0, 0x7d

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mMaxKeyboardRatio:I

    .line 82
    const/16 v0, 0x55

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mMinKeyboardRatio:I

    .line 275
    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->previousHeightDiffrence:I

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->parentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getIsShowWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->controllerCover:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mSoftKeyHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mMinKeyboardRatio:I

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mMaxKeyboardRatio:I

    return v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->updateKeyboardHeight(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeightRatio:I

    return v0
.end method

.method static synthetic access$900(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeight:I

    return v0
.end method

.method private checkKeyboardHeight(Landroid/view/View;)V
    .registers 4
    .param p1, "parentLayout"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$5;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$5;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    return-void
.end method

.method private enablePopUpView()V
    .registers 6

    .prologue
    .line 298
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    .line 299
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$6;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$6;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 305
    return-void
.end method

.method public static getInstance()Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;
    .registers 1

    .prologue
    .line 216
    sget-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->sInstance:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    return-object v0
.end method

.method private getIsShowWindow()Z
    .registers 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mIsShowWindow:Z

    return v0
.end method

.method public static init(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2
    .param p0, "ims"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 220
    sget-object v0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->sInstance:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->initInternal(Lcom/pantech/inputmethod/skyime/SkyIME;)V

    .line 221
    return-void
.end method

.method private initInternal(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2
    .param p1, "ims"    # Lcom/pantech/inputmethod/skyime/SkyIME;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mInputMethodService:Lcom/pantech/inputmethod/skyime/SkyIME;

    .line 225
    return-void
.end method

.method private showPopup()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 252
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->stripHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 254
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getIsShowWindow()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 255
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->controllerCover:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    :goto_20
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    new-instance v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$4;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_2a
    return-void

    .line 257
    :cond_2b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->controllerCover:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20
.end method

.method private updateKeyboardHeight(I)V
    .registers 4
    .param p1, "yRatio"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "custom_height"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->setContentView(I)V

    .line 89
    sput-object p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->activity:Landroid/app/Activity;

    .line 90
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    .line 94
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 96
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_3f

    .line 100
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    .line 102
    :cond_3f
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    const v2, 0x7f1000b0

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->parentLayout:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x7f1000b3

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->controllerCover:Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    const v3, 0x7f1000b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlStrip:Landroid/view/View;

    .line 109
    const v2, 0x7f1000b2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    .line 110
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    .line 111
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->stripHeight:I

    .line 113
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 114
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 116
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "custom_height"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeightRatio:I

    .line 117
    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeightRatio:I

    iget v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeight:I

    .line 118
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->windowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mScreenEndYCoordinate:I

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 120
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 121
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mSoftKeyHeight:I

    .line 122
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->enablePopUpView()V

    .line 125
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->parentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->checkKeyboardHeight(Landroid/view/View;)V

    .line 126
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;

    invoke-direct {v3, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$1;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$2;

    invoke-direct {v3, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$2;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupView:Landroid/view/View;

    new-instance v3, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;

    invoke-direct {v3, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 363
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 364
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 365
    const v2, 0x7f0c0154

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 341
    :cond_9
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 343
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 374
    :sswitch_d
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->finish()V

    goto :goto_c

    .line 378
    :sswitch_11
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->updateKeyboardHeight(I)V

    .line 379
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    iget v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    iget v4, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mSoftKeyHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_c

    .line 372
    :sswitch_data_2e
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f1000f3 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 352
    :cond_9
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 354
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 234
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 314
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 325
    if-eqz p1, :cond_22

    .line 326
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "custom_height"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeightRatio:I

    .line 327
    iget v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeightRatio:I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mDefalutKeyboardHeight:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mLatestKeyboardHeight:I

    .line 328
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 329
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->showPopup()V

    .line 332
    :cond_22
    return-void
.end method

.method public setIsShowWindow(Z)V
    .registers 2
    .param p1, "isShowWindow"    # Z

    .prologue
    .line 238
    sput-boolean p1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mIsShowWindow:Z

    .line 239
    return-void
.end method
