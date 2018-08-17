.class Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPreviewDrawParam"
.end annotation


# instance fields
.field public final mCorner_radius:I

.field public final mFunctionColor:Ljava/lang/String;

.field public final mFunctionKeyColor:Ljava/lang/String;

.field public final mFunctionOutlineColor:Ljava/lang/String;

.field public final mGap:I

.field public final mKeyboardBackground:Ljava/lang/String;

.field public final mLongPressColor:Ljava/lang/String;

.field public final mNormalKeyColor:Ljava/lang/String;

.field public final mNormalOutlineColor:Ljava/lang/String;

.field public final mNumberColor:Ljava/lang/String;

.field public final mNumberKeyColor:Ljava/lang/String;

.field public final mNumberOutlineColor:Ljava/lang/String;

.field public final mOpacity_key_bg:I

.field public final mOpacity_outline:I

.field public final mOpacity_text:I

.field public final mOutlineThickness:I

.field public final mTextColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalKeyColor:Ljava/lang/String;

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionKeyColor:Ljava/lang/String;

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberKeyColor:Ljava/lang/String;

    .line 173
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberOutlineColor:Ljava/lang/String;

    .line 175
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalOutlineColor:Ljava/lang/String;

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionOutlineColor:Ljava/lang/String;

    .line 179
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOutlineThickness:I

    .line 181
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mCorner_radius:I

    .line 183
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mGap:I

    .line 184
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mTextColor:Ljava/lang/String;

    .line 185
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberColor:Ljava/lang/String;

    .line 186
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionColor:Ljava/lang/String;

    .line 188
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mLongPressColor:Ljava/lang/String;

    .line 190
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mKeyboardBackground:Ljava/lang/String;

    .line 193
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_text:I

    .line 195
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_key_bg:I

    .line 197
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_outline:I

    .line 199
    return-void
.end method
