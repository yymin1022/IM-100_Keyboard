.class public Lcom/pantech/widget/SkyEditText;
.super Landroid/widget/LinearLayout;
.source "SkyEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;,
        Lcom/pantech/widget/SkyEditText$SavedState;
    }
.end annotation


# static fields
.field static final ID_DELETE_BUTTON:I = 0x1000

.field static final ID_EDITTEXT:I = 0x0

.field static final ID_LINEARLAYOUT:I = 0x3000

.field static final ID_UNDO_BUTTON:I = 0x2000


# instance fields
.field TAG:Ljava/lang/String;

.field public mActiveColor:I

.field mBtDelete:Landroid/widget/Button;

.field mBtUndo:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field mEtText:Landroid/widget/EditText;

.field public mHintColor:I

.field mLayout:Landroid/widget/LinearLayout;

.field public mNorColor:I

.field public mShowInputMethod:Z

.field mTAG:Z

.field public mText:Ljava/lang/CharSequence;

.field public mType:I

.field public mUndoText:Ljava/lang/CharSequence;

.field misShowUndo:Z

.field mllButton:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -wrap0(Lcom/pantech/widget/SkyEditText;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->isShowFocusedInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/pantech/widget/SkyEditText;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->checkedText()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/pantech/widget/SkyEditText;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->deleteText()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/pantech/widget/SkyEditText;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->undoText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const-string/jumbo v0, "SkyEditText"

    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    .line 80
    iput-boolean v2, p0, Lcom/pantech/widget/SkyEditText;->misShowUndo:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyEditText;->mShowInputMethod:Z

    .line 85
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mLayout:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mType:I

    .line 89
    iput-boolean v2, p0, Lcom/pantech/widget/SkyEditText;->mTAG:Z

    .line 94
    const v0, -0x343435

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mNorColor:I

    .line 95
    const v0, -0xdb6509

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mActiveColor:I

    .line 96
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mHintColor:I

    .line 106
    iput-object p1, p0, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const-string/jumbo v0, "SkyEditText"

    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    .line 80
    iput-boolean v2, p0, Lcom/pantech/widget/SkyEditText;->misShowUndo:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyEditText;->mShowInputMethod:Z

    .line 85
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mLayout:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mType:I

    .line 89
    iput-boolean v2, p0, Lcom/pantech/widget/SkyEditText;->mTAG:Z

    .line 94
    const v0, -0x343435

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mNorColor:I

    .line 95
    const v0, -0xdb6509

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mActiveColor:I

    .line 96
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/pantech/widget/SkyEditText;->mHintColor:I

    .line 113
    iput-object p1, p0, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 115
    iput p3, p0, Lcom/pantech/widget/SkyEditText;->mType:I

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method private checkedText()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 319
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 321
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 322
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    :goto_19
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 333
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    :cond_2b
    return-void

    .line 324
    :cond_2c
    iget-boolean v1, p0, Lcom/pantech/widget/SkyEditText;->misShowUndo:Z

    if-eqz v1, :cond_41

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 325
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_19

    .line 328
    :cond_41
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_19
.end method

.method private convertDipToPixels(I)I
    .registers 6
    .param p1, "ndip"    # I

    .prologue
    .line 2012
    iget-object v2, p0, Lcom/pantech/widget/SkyEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2013
    .local v0, "mScale":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2014
    .local v1, "nPexel":I
    return v1
.end method

.method private deleteText()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 302
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 300
    return-void
.end method

.method private drawImage()V
    .registers 5

    .prologue
    const v1, 0x7f0600df

    const v3, 0x7f0600dd

    const v2, 0x7f05000f

    .line 207
    iget v0, p0, Lcom/pantech/widget/SkyEditText;->mType:I

    packed-switch v0, :pswitch_data_92

    .line 230
    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->setBackground()V

    .line 206
    :goto_11
    return-void

    .line 209
    :pswitch_12
    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->setBackground()V

    goto :goto_11

    .line 212
    :pswitch_16
    const v0, 0x7f0600e6

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-static {v3}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/pantech/widget/RR;->getColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_11

    .line 218
    :pswitch_3c
    const v0, 0x7f0600e7

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-static {v3}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/pantech/widget/RR;->getColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_11

    .line 224
    :pswitch_62
    const v0, 0x7f0600e8

    invoke-static {v0}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const v1, 0x7f0600e0

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    const v1, 0x7f060222

    invoke-static {v1}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    const v1, 0x7f050010

    invoke-static {v1}, Lcom/pantech/widget/RR;->getColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_11

    .line 207
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_62
        :pswitch_16
        :pswitch_3c
        :pswitch_12
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 120
    iget-boolean v4, p0, Lcom/pantech/widget/SkyEditText;->mTAG:Z

    if-eqz v4, :cond_25

    .line 121
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_25
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    if-nez v4, :cond_63

    .line 126
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    .line 127
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v7, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 128
    .local v1, "eidttextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 130
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 132
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    new-instance v5, Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;

    invoke-direct {v5, p0}, Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;-><init>(Lcom/pantech/widget/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 134
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    new-instance v5, Lcom/pantech/widget/SkyEditText$1;

    invoke-direct {v5, p0}, Lcom/pantech/widget/SkyEditText$1;-><init>(Lcom/pantech/widget/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    .end local v1    # "eidttextparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_63
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 151
    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 153
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    if-nez v4, :cond_99

    .line 154
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    .line 155
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    new-instance v5, Lcom/pantech/widget/SkyEditText$2;

    invoke-direct {v5, p0}, Lcom/pantech/widget/SkyEditText$2;-><init>(Lcom/pantech/widget/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_99
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    if-nez v4, :cond_ba

    .line 170
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    .line 171
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    new-instance v5, Lcom/pantech/widget/SkyEditText$3;

    invoke-direct {v5, p0}, Lcom/pantech/widget/SkyEditText$3;-><init>(Lcom/pantech/widget/SkyEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_ba
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    if-nez v4, :cond_e6

    .line 185
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "buttonlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/pantech/widget/SkyEditText;->convertDipToPixels(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 188
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    .line 189
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 190
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .end local v0    # "buttonlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_e6
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 197
    .local v2, "linearlayoutparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkyEditText;->addView(Landroid/view/View;)V

    .line 198
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/pantech/widget/SkyEditText;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0, v10}, Lcom/pantech/widget/SkyEditText;->setAddStatesFromChildren(Z)V

    .line 201
    invoke-virtual {p0, v8}, Lcom/pantech/widget/SkyEditText;->setFocusable(Z)V

    .line 203
    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->drawImage()V

    .line 119
    return-void
.end method

.method private isShowFocusedInputMethod()Z
    .registers 2

    .prologue
    .line 2077
    iget-boolean v0, p0, Lcom/pantech/widget/SkyEditText;->mShowInputMethod:Z

    return v0
.end method

.method private setBackground()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060233

    .line 244
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 245
    .local v3, "states":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    .local v0, "drow":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/pantech/widget/SkyEditText;->mNorColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 248
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, -0x101009e

    aput v5, v4, v7

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    .local v1, "drow1":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/pantech/widget/SkyEditText;->mNorColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    const v4, -0x10100a7

    const v5, -0x101009c

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-static {v6}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 256
    .local v2, "drow2":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/pantech/widget/SkyEditText;->mActiveColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 257
    new-array v4, v7, [I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const v5, 0x7f060223

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    const v5, 0x7f060222

    invoke-static {v5}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    const v5, 0x7f05001f

    invoke-static {v5}, Lcom/pantech/widget/RR;->getColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    iget-object v4, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    iget v5, p0, Lcom/pantech/widget/SkyEditText;->mHintColor:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 243
    return-void
.end method

.method private undoText()V
    .registers 4

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/pantech/widget/SkyEditText;->mTAG:Z

    if-eqz v0, :cond_1f

    .line 308
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "undoText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1f
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 311
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 313
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 306
    :cond_3e
    return-void
.end method

.method private updateView()V
    .registers 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/pantech/widget/SkyEditText;->misShowUndo:Z

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    :cond_a
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2017
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1468
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;II)V

    .line 1477
    return-void
.end method

.method public clearAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    .line 267
    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    .line 268
    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    .line 269
    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mllButton:Landroid/widget/LinearLayout;

    .line 270
    iput-object v0, p0, Lcom/pantech/widget/SkyEditText;->mLayout:Landroid/widget/LinearLayout;

    .line 265
    return-void
.end method

.method public extendSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 1886
    return-void
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getAutoLinkMask()I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getChildDeleteButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    return-object v0
.end method

.method public getChildEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getChildUndoButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v0

    return v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingBottom()I
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v0

    return v0
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getExtendedPaddingTop()I
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFreezesText()Z

    move-result v0

    return v0
.end method

.method public getHighlightColor()I
    .registers 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionId()I

    move-result v0

    return v0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getIncludeFontPadding()Z
    .registers 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getIncludeFontPadding()Z

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineHeight()I
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .registers 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinksClickable()Z

    move-result v0

    return v0
.end method

.method public getMaxEms()I
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxEms()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .registers 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public getMaxLines()I
    .registers 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    return v0
.end method

.method public getMinEms()I
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinEms()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getMinLines()I
    .registers 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShadowColor()I
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowColor()I

    move-result v0

    return v0
.end method

.method public getShadowDx()F
    .registers 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v0

    return v0
.end method

.method public getShadowDy()F
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v0

    return v0
.end method

.method public getShadowRadius()F
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v0

    return v0
.end method

.method public getSkyEditTextId()I
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/pantech/widget/SkyEditText;->getId()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUndoText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method public isShowDeleteButton()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_b
    return v1
.end method

.method public isShowUndoButton()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 367
    const/4 v0, 0x1

    return v0

    .line 369
    :cond_b
    return v1
.end method

.method public isTextSelectable()Z
    .registers 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isTextSelectable()Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public onEditorAction(I)V
    .registers 3
    .param p1, "actionCode"    # I

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 1663
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1909
    instance-of v1, p1, Lcom/pantech/widget/SkyEditText$SavedState;

    if-nez v1, :cond_8

    .line 1910
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1911
    return-void

    :cond_8
    move-object v0, p1

    .line 1914
    check-cast v0, Lcom/pantech/widget/SkyEditText$SavedState;

    .line 1915
    .local v0, "ss":Lcom/pantech/widget/SkyEditText$SavedState;
    invoke-virtual {v0}, Lcom/pantech/widget/SkyEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1917
    iget-object v1, v0, Lcom/pantech/widget/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a

    .line 1918
    iget-object v1, v0, Lcom/pantech/widget/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    .line 1922
    :cond_1a
    iget-object v1, v0, Lcom/pantech/widget/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    if-eqz v1, :cond_22

    .line 1923
    iget-object v1, v0, Lcom/pantech/widget/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 1927
    :cond_22
    iget-boolean v1, v0, Lcom/pantech/widget/SkyEditText$SavedState;->btVisivility:Z

    if-eqz v1, :cond_29

    .line 1928
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/widget/SkyEditText;->misShowUndo:Z

    .line 1931
    :cond_29
    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->updateView()V

    .line 1908
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 1936
    iget-boolean v3, p0, Lcom/pantech/widget/SkyEditText;->mTAG:Z

    if-eqz v3, :cond_c

    .line 1937
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSaveInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_c
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1940
    .local v2, "superState":Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 1941
    .local v0, "save":Z
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1e

    .line 1942
    const/4 v0, 0x1

    .line 1945
    :cond_1e
    new-instance v1, Lcom/pantech/widget/SkyEditText$SavedState;

    invoke-direct {v1, v2}, Lcom/pantech/widget/SkyEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1948
    .local v1, "ss":Lcom/pantech/widget/SkyEditText$SavedState;
    iput-boolean v0, v1, Lcom/pantech/widget/SkyEditText$SavedState;->btVisivility:Z

    .line 1950
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1951
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/pantech/widget/SkyEditText$SavedState;->text:Ljava/lang/CharSequence;

    .line 1954
    :cond_31
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1955
    iget-object v3, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/pantech/widget/SkyEditText$SavedState;->undotext:Ljava/lang/CharSequence;

    .line 1957
    :cond_3d
    return-object v1
.end method

.method public selectAll()V
    .registers 2

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 1879
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .registers 3
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 1068
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 807
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 693
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 746
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 768
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 784
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 714
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 730
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1894
    return-void
.end method

.method public setData(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "bVisible"    # Z
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "undotext"    # Ljava/lang/CharSequence;

    .prologue
    .line 2065
    if-eqz p1, :cond_8

    .line 2066
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2068
    :cond_8
    iput-object p2, p0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    .line 2069
    iput-object p3, p0, Lcom/pantech/widget/SkyEditText;->mUndoText:Ljava/lang/CharSequence;

    .line 2064
    return-void
.end method

.method public setDeleteButton(I)V
    .registers 3
    .param p1, "visible"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 1516
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1890
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEms(I)V

    .line 1420
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    .line 432
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1723
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 1736
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 3
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 1833
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1746
    return-void
.end method

.method public setFreezesText(Z)V
    .registers 3
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFreezesText(Z)V

    .line 1495
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 979
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 978
    return-void
.end method

.method public final setHint(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1119
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1133
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .param p1, "whether"    # Z

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 1246
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1607
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 380
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .param p1, "includepad"    # Z

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1846
    return-void
.end method

.method public setInputExtras(I)V
    .registers 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputExtras(I)V

    .line 1701
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 403
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 3
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 558
    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 1431
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLines(I)V

    .line 1359
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(I)V

    .line 1169
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1183
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 3
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinksClickable(Z)V

    .line 1081
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 1392
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 1334
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1309
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinEms(I)V

    .line 1369
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1285
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1261
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 581
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2033
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2045
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1639
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2029
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2037
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2041
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2025
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 1236
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method public setRawInputType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1583
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 3
    .param p1, "selectAllOnFocus"    # Z

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2021
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1872
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1865
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 1002
    return-void
.end method

.method public setShowFocusedInputMethod(Z)V
    .registers 2
    .param p1, "bShow"    # Z

    .prologue
    .line 2073
    iput-boolean p1, p0, Lcom/pantech/widget/SkyEditText;->mShowInputMethod:Z

    .line 2072
    return-void
.end method

.method public setSkyEditTextId(I)V
    .registers 4
    .param p1, "nId"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    add-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 340
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 341
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 342
    add-int/lit16 v0, p1, 0x3000

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyEditText;->setId(I)V

    .line 338
    return-void
.end method

.method public setSkyEditTextId(IZ)V
    .registers 5
    .param p1, "nId"    # I
    .param p2, "bView"    # Z

    .prologue
    .line 346
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    add-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 347
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 348
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    add-int/lit16 v1, p1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 349
    if-eqz p2, :cond_1c

    .line 350
    add-int/lit16 v0, p1, 0x3000

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyEditText;->setId(I)V

    .line 345
    :cond_1c
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    .line 1523
    return-void
.end method

.method public final setText(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/pantech/widget/SkyEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/pantech/widget/SkyEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1573
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1548
    return-void
.end method

.method public final setText([CII)V
    .registers 5
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->setText([CII)V

    .line 1559
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 835
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 933
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 947
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 3
    .param p1, "selectable"    # Z

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 1799
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1536
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1569
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextScaleX(F)V

    .line 888
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 857
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 871
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 870
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 905
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 437
    return-void
.end method

.method public setUndoButton(I)V
    .registers 3
    .param p1, "visible"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 376
    return-void
.end method

.method public setbackgroundColor(II)V
    .registers 3
    .param p1, "norColor"    # I
    .param p2, "activeColor"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/pantech/widget/SkyEditText;->mNorColor:I

    .line 239
    iput p2, p0, Lcom/pantech/widget/SkyEditText;->mActiveColor:I

    .line 240
    invoke-direct {p0}, Lcom/pantech/widget/SkyEditText;->setBackground()V

    .line 237
    return-void
.end method
