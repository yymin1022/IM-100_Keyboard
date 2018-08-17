.class public Lcom/pantech/inputmethod/skyime/HelpGesture;
.super Landroid/app/Activity;
.source "HelpGesture.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HelpGesture"

.field private static mPage:I


# instance fields
.field private final MAX_PAGE_NUM:I

.field private helpGestureAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private helpGestureImageSet:[I

.field private helpGestureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private helpGestureString:[I

.field private helpGestureTextSet:[I

.field private imageView:Landroid/widget/ImageView;

.field private listView:Landroid/widget/ListView;

.field private mBtnLeft:Landroid/widget/Button;

.field private mBtnRight:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogView:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->MAX_PAGE_NUM:I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureImageSet:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureTextSet:[I

    return-void

    .line 47
    :array_1a
    .array-data 4
        0x7f0c00cd
        0x7f0c00d0
        0x7f0c00d2
        0x7f0c00d4
    .end array-data

    .line 57
    :array_26
    .array-data 4
        0x7f0c00ce
        0x7f0c00d1
        0x7f0c00d3
        0x7f0c00d5
    .end array-data
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/HelpGesture;)[I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 31
    sget v0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    return p0
.end method

.method static synthetic access$108()I
    .registers 2

    .prologue
    .line 31
    sget v0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    return v0
.end method

.method static synthetic access$110()I
    .registers 2

    .prologue
    .line 31
    sget v0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pantech/inputmethod/skyime/HelpGesture;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnLeft:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/HelpGesture;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/pantech/inputmethod/skyime/HelpGesture;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/HelpGesture;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnRight:Landroid/widget/Button;

    return-object p1
.end method

.method private init()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method private settings()V
    .registers 5

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    .line 79
    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->listView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030019

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureAdapter:Landroid/widget/ArrayAdapter;

    .line 88
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/pantech/inputmethod/skyime/HelpGesture$1;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/HelpGesture$1;-><init>(Lcom/pantech/inputmethod/skyime/HelpGesture;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public convertDpToPixel(F)I
    .registers 5
    .param p1, "dp"    # F

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 157
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->init()V

    .line 74
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->settings()V

    .line 75
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 104
    packed-switch p1, :pswitch_data_54

    .line 150
    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    .line 152
    :goto_6
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 109
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    sget v2, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ca

    new-instance v2, Lcom/pantech/inputmethod/skyime/HelpGesture$2;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/skyime/HelpGesture$2;-><init>(Lcom/pantech/inputmethod/skyime/HelpGesture;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    .line 123
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/pantech/inputmethod/skyime/HelpGesture$3;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/HelpGesture$3;-><init>(Lcom/pantech/inputmethod/skyime/HelpGesture;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_6

    .line 104
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 202
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    .line 209
    :cond_14
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    return-void
.end method

.method public setPages()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/HelpGesture;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5e

    move v1, v3

    .line 165
    .local v1, "isLandscapeMode":Z
    :goto_11
    if-eqz v1, :cond_60

    const v5, 0x44198000    # 614.0f

    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/skyime/HelpGesture;->convertDpToPixel(F)I

    move-result v2

    .line 166
    .local v2, "width":I
    :goto_1a
    const/4 v0, -0x2

    .line 167
    .local v0, "height":I
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 169
    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    if-gez v5, :cond_62

    .line 170
    sput v4, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    .line 174
    :cond_2a
    :goto_2a
    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    if-nez v5, :cond_6a

    .line 175
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    :goto_33
    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    if-ne v5, v7, :cond_70

    .line 182
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    :goto_3c
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureImageSet:[I

    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureTextSet:[I

    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->helpGestureString:[I

    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 192
    return-void

    .end local v0    # "height":I
    .end local v1    # "isLandscapeMode":Z
    .end local v2    # "width":I
    :cond_5e
    move v1, v4

    .line 164
    goto :goto_11

    .line 165
    .restart local v1    # "isLandscapeMode":Z
    :cond_60
    const/4 v2, -0x2

    goto :goto_1a

    .line 171
    .restart local v0    # "height":I
    .restart local v2    # "width":I
    :cond_62
    sget v5, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2a

    .line 172
    sput v7, Lcom/pantech/inputmethod/skyime/HelpGesture;->mPage:I

    goto :goto_2a

    .line 177
    :cond_6a
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_33

    .line 184
    :cond_70
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/HelpGesture;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3c
.end method
