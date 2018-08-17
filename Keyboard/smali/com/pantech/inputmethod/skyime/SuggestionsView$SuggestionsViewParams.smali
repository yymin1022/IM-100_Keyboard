.class Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;
.super Ljava/lang/Object;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsViewParams"
.end annotation


# static fields
.field private static final AUTO_CORRECT_BOLD:I = 0x1

.field private static final AUTO_CORRECT_UNDERLINE:I = 0x2

.field private static final BOLD_SPAN:Landroid/text/style/CharacterStyle;

.field private static final DEFAULT_CENTER_SUGGESTION_PERCENTILE:I = 0x28

.field private static final DEFAULT_MAX_MORE_SUGGESTIONS_ROW:I = 0x3c

.field private static final DEFAULT_SUGGESTIONS_COUNT_IN_STRIP:I = 0x3

.field private static final PUNCTUATIONS_IN_STRIP:I = 0x6

.field private static final UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

.field private static final VALID_TYPED_WORD_BOLD:I = 0x4


# instance fields
.field private final mAlphaObsoleted:F

.field private final mCenterSuggestionIndex:I

.field private final mCenterSuggestionWeight:F

.field private final mColorAutoCorrect:I

.field private final mColorSavedWord:I

.field private final mColorSuggested:I

.field private final mColorTypedWord:I

.field public final mDividerWidth:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintToSaveView:Landroid/widget/TextView;

.field private final mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMoreSuggestionsRow:I

.field public mMoreSuggestionsAvailable:Z

.field public final mMoreSuggestionsBottomGap:I

.field public final mMoreSuggestionsRowHeight:I

.field public final mPadding:I

.field private final mSuggestionStripOption:I

.field public final mSuggestionsCountInStrip:I

.field public final mSuggestionsStripHeight:I

.field private final mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordToSaveView:Landroid/widget/TextView;

.field private final mWordViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 212
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    .line 213
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p4, "words":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;>;"
    .local p5, "dividers":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    .line 230
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    .line 231
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    .line 232
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mInfos:Ljava/util/List;

    .line 234
    const/4 v9, 0x0

    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    iget-object v8, v9, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    .line 235
    .local v8, "word":Landroid/widget/TextView;
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 236
    .local v5, "divider":Landroid/view/View;
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mPadding:I

    .line 237
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->measure(II)V

    .line 239
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    .line 241
    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 242
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a001c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsStripHeight:I

    .line 244
    sget-object v9, Lcom/pantech/inputmethod/skyime/R$styleable;->SuggestionsView:[I

    const v10, 0x7f0e0024

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 246
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionStripOption:I

    .line 247
    const/4 v9, 0x5

    const/16 v10, 0x64

    invoke-static {v1, v9, v10}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v4

    .line 249
    .local v4, "alphaTypedWord":F
    const/4 v9, 0x6

    const/16 v10, 0x64

    invoke-static {v1, v9, v10}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v2

    .line 251
    .local v2, "alphaAutoCorrect":F
    const/4 v9, 0x7

    const/16 v10, 0x64

    invoke-static {v1, v9, v10}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v3

    .line 253
    .local v3, "alphaSuggested":F
    const/4 v9, 0x7

    const/16 v10, 0x64

    invoke-static {v1, v9, v10}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mAlphaObsoleted:F

    .line 254
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    .line 256
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorSavedWord:I

    .line 258
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    .line 260
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorSuggested:I

    .line 262
    const/16 v9, 0x9

    const/4 v10, 0x3

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    .line 265
    const/16 v9, 0xa

    const/16 v10, 0x28

    invoke-static {v1, v9, v10}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    .line 268
    const/16 v9, 0xb

    const/16 v10, 0x3c

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    .line 272
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    iget v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    .line 277
    const v9, 0x7f0a0020

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    .line 279
    const v9, 0x7f0a001e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsRowHeight:I

    .line 282
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 283
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030021

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 284
    const v9, 0x7f030009

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 285
    return-void
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorSavedWord:I

    return v0
.end method

.method static synthetic access$2600(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    return v0
.end method

.method static synthetic access$2700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorSuggested:I

    return v0
.end method

.method static synthetic access$2800(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .prologue
    .line 186
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    return v0
.end method

.method private static addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p0, "stripView"    # Landroid/view/ViewGroup;
    .param p1, "divider"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 380
    return-void
.end method

.method private static applyAlpha(IF)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 371
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 372
    .local v0, "newAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "maxWidth"    # I
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    const v5, 0x3f333333    # 0.7f

    .line 575
    if-nez p0, :cond_7

    .line 576
    const/4 p0, 0x0

    .line 596
    .end local p0    # "text":Ljava/lang/CharSequence;
    :cond_6
    :goto_6
    return-object p0

    .line 577
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 578
    invoke-static {p0, p2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    .line 579
    .local v2, "width":I
    if-le v2, p1, :cond_6

    .line 582
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 583
    .local v1, "scaleX":F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_1e

    .line 584
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    goto :goto_6

    .line 593
    :cond_1e
    int-to-float v3, p1

    div-float/2addr v3, v5

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 595
    .local v0, "ellipsized":Ljava/lang/CharSequence;
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    move-object p0, v0

    .line 596
    goto :goto_6
.end method

.method private getMoreSuggestionsHeight()I
    .registers 3

    .prologue
    .line 288
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsRowHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getPercent(Landroid/content/res/TypedArray;II)F
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getStyledSuggestionWord(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "pos"    # I

    .prologue
    const/16 v8, 0x11

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 309
    invoke-virtual {p1, p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 310
    .local v5, "word":Ljava/lang/CharSequence;
    if-ne p2, v1, :cond_1c

    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->willAutoCorrect()Z

    move-result v7

    if-eqz v7, :cond_1c

    move v0, v1

    .line 311
    .local v0, "isAutoCorrect":Z
    :goto_11
    if-nez p2, :cond_1e

    iget-boolean v7, p1, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mTypedWordValid:Z

    if-eqz v7, :cond_1e

    .line 312
    .local v1, "isTypedWordValid":Z
    :goto_17
    if-nez v0, :cond_20

    if-nez v1, :cond_20

    .line 325
    .end local v5    # "word":Ljava/lang/CharSequence;
    :goto_1b
    return-object v5

    .end local v0    # "isAutoCorrect":Z
    .end local v1    # "isTypedWordValid":Z
    .restart local v5    # "word":Ljava/lang/CharSequence;
    :cond_1c
    move v0, v6

    .line 310
    goto :goto_11

    .restart local v0    # "isAutoCorrect":Z
    :cond_1e
    move v1, v6

    .line 311
    goto :goto_17

    .line 315
    .restart local v1    # "isTypedWordValid":Z
    :cond_20
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 316
    .local v2, "len":I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 317
    .local v4, "spannedWord":Landroid/text/Spannable;
    iget v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionStripOption:I

    .line 318
    .local v3, "option":I
    if-eqz v0, :cond_31

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_37

    :cond_31
    if-eqz v1, :cond_3c

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_3c

    .line 320
    :cond_37
    sget-object v7, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 322
    :cond_3c
    if-eqz v0, :cond_47

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_47

    .line 323
    sget-object v7, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    move-object v5, v4

    .line 325
    goto :goto_1b
.end method

.method private getSuggestionTextColor(ILcom/pantech/inputmethod/skyime/SuggestedWords;I)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    if-eqz p3, :cond_38

    move v1, v2

    .line 346
    .local v1, "isSuggested":Z
    :goto_5
    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v4, :cond_3a

    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->willAutoCorrect()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 347
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    .line 353
    .local v0, "color":I
    :goto_11
    sget-boolean v4, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v4, :cond_42

    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v4

    if-le v4, v2, :cond_42

    .line 356
    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v4, :cond_42

    iget-boolean v4, p2, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v4, :cond_42

    invoke-virtual {p2, v2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/skyime/Suggest;->shouldBlockAutoCorrectionBySafetyNet(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 359
    const/high16 v0, -0x10000

    .line 366
    .end local v0    # "color":I
    :cond_37
    :goto_37
    return v0

    .end local v1    # "isSuggested":Z
    :cond_38
    move v1, v3

    .line 343
    goto :goto_5

    .line 348
    .restart local v1    # "isSuggested":Z
    :cond_3a
    if-eqz v1, :cond_3f

    .line 349
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorSuggested:I

    .restart local v0    # "color":I
    goto :goto_11

    .line 351
    .end local v0    # "color":I
    :cond_3f
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    .restart local v0    # "color":I
    goto :goto_11

    .line 363
    :cond_42
    iget-boolean v2, p2, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsObsoleteSuggestions:Z

    if-eqz v2, :cond_37

    if-eqz v1, :cond_37

    .line 364
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mAlphaObsoleted:F

    invoke-static {v0, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v0

    goto :goto_37
.end method

.method private getSuggestionWeight(I)F
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 455
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v0, :cond_7

    .line 456
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    .line 459
    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_6
.end method

.method private getSuggestionWidth(II)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "maxWidth"    # I

    .prologue
    .line 448
    iget v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mPadding:I

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    mul-int v2, v3, v4

    .line 449
    .local v2, "paddings":I
    iget v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v4, v4, -0x1

    mul-int v1, v3, v4

    .line 450
    .local v1, "dividers":I
    sub-int v3, p2, v2

    sub-int v0, v3, v1

    .line 451
    .local v0, "availableWidth":I
    int-to-float v3, v0

    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getSuggestionWeight(I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method private static getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "maxWidth"    # I
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 565
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 566
    invoke-static {p0, p2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    .line 567
    .local v0, "width":I
    if-gt v0, p1, :cond_c

    .line 570
    :goto_b
    return v1

    :cond_c
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_b
.end method

.method private static getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 618
    instance-of v2, p0, Landroid/text/SpannableString;

    if-nez v2, :cond_a

    .line 619
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 631
    :goto_9
    return-object v2

    :cond_a
    move-object v0, p0

    .line 621
    check-cast v0, Landroid/text/SpannableString;

    .line 622
    .local v0, "ss":Landroid/text/SpannableString;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 623
    .local v1, "styles":[Landroid/text/style/StyleSpan;
    array-length v2, v1

    if-nez v2, :cond_21

    .line 624
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_9

    .line 626
    :cond_21
    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 631
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_9

    .line 628
    :pswitch_2f
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_9

    .line 626
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
    .end packed-switch
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v4, 0x0

    .line 600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 614
    :goto_7
    return v4

    .line 602
    :cond_8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 603
    .local v3, "savedTypeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 605
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 606
    .local v2, "len":I
    new-array v5, v2, [F

    .line 607
    .local v5, "widths":[F
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 608
    .local v0, "count":I
    const/4 v4, 0x0

    .line 609
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_2e

    .line 610
    aget v6, v5, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 612
    :cond_2e
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7
.end method

.method private getWordPosition(ILcom/pantech/inputmethod/skyime/SuggestedWords;)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .prologue
    .line 331
    invoke-virtual {p2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->willAutoCorrect()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 332
    .local v0, "centerPos":I
    :goto_7
    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v1, :cond_e

    .line 337
    .end local v0    # "centerPos":I
    :goto_b
    return v0

    .line 331
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 334
    .restart local v0    # "centerPos":I
    :cond_e
    if-ne p1, v0, :cond_13

    .line 335
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    goto :goto_b

    :cond_13
    move v0, p1

    .line 337
    goto :goto_b
.end method

.method private layoutPunctuationSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;)V
    .registers 13
    .param p1, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "stripView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 478
    .local v0, "countInStrip":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_e
    if-ge v1, v0, :cond_62

    .line 479
    if-eqz v1, :cond_1d

    .line 482
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {p2, v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 484
    :cond_1d
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    .line 485
    .local v2, "selectWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    iget-object v4, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    .line 486
    .local v4, "word":Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 487
    iget v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    iput v1, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->position:I

    .line 489
    iget v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    iput v5, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->color:I

    .line 490
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    invoke-interface {v5, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {p1, v1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 492
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 494
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 495
    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 496
    new-instance v5, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;

    invoke-direct {v5, p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$2;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    iget v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsStripHeight:I

    invoke-static {v4, v8, v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 518
    .end local v2    # "selectWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "word":Landroid/widget/TextView;
    :cond_62
    iput-boolean v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    .line 519
    return-void
.end method

.method private static setLayoutWeight(Landroid/view/View;FI)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "weight"    # F
    .param p2, "height"    # I

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 556
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 557
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 558
    .local v0, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 559
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 560
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 562
    .end local v0    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    return-void
.end method

.method private setupTexts(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)V
    .registers 8
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "countInStrip"    # I

    .prologue
    .line 464
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 465
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 466
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_e
    if-ge v1, v0, :cond_1c

    .line 467
    invoke-direct {p0, p1, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getStyledSuggestionWord(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 468
    .local v2, "styled":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 470
    .end local v2    # "styled":Ljava/lang/CharSequence;
    :cond_1c
    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_28

    .line 472
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 474
    :cond_28
    return-void
.end method


# virtual methods
.method public isAddToDictionaryShowing(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mHintToSaveView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .registers 25
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "stripView"    # Landroid/view/ViewGroup;
    .param p3, "placer"    # Landroid/view/ViewGroup;
    .param p4, "stripWidth"    # I

    .prologue
    .line 384
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPunctuationSuggestions:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 385
    invoke-direct/range {p0 .. p2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->layoutPunctuationSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;)V

    .line 445
    :cond_b
    return-void

    .line 389
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    .line 390
    .local v4, "countInStrip":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setupTexts(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v4, :cond_10a

    const/16 v18, 0x1

    :goto_21
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    .line 392
    const/16 v16, 0x0

    .line 393
    .local v16, "x":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2a
    if-ge v6, v4, :cond_b

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getWordPosition(ILcom/pantech/inputmethod/skyime/SuggestedWords;)I

    move-result v9

    .line 396
    .local v9, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    .line 397
    .local v11, "selectWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 398
    .local v12, "styled":Ljava/lang/CharSequence;
    iget-object v15, v11, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    .line 400
    .local v15, "word":Landroid/widget/TextView;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10e

    const/16 v18, 0x1

    :goto_5a
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v9}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getSuggestionTextColor(ILcom/pantech/inputmethod/skyime/SuggestedWords;I)I

    move-result v3

    .line 402
    .local v3, "color":I
    iput v6, v11, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->position:I

    .line 403
    iput v3, v11, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->color:I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordViews:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    new-instance v18, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams$1;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getSuggestionWidth(II)I

    move-result v14

    .line 421
    .local v14, "width":I
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v14, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 422
    .local v13, "text":Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v10

    .line 423
    .local v10, "scaleX":F
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getSuggestionWeight(I)F

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 428
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 430
    invoke-static {}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->access$200()Z

    move-result v18

    if-eqz v18, :cond_106

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_106

    .line 431
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/pantech/inputmethod/skyime/utils/Utils;->getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, "debugInfo":Ljava/lang/CharSequence;
    if-eqz v5, :cond_106

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 434
    .local v7, "info":Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 438
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 439
    .local v8, "infoWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 440
    .local v17, "y":I
    sub-int v18, v16, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v7, v0, v1, v8, v2}, Lcom/pantech/inputmethod/keyboard/ViewLayoutUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 393
    .end local v5    # "debugInfo":Ljava/lang/CharSequence;
    .end local v7    # "info":Landroid/widget/TextView;
    .end local v8    # "infoWidth":I
    .end local v17    # "y":I
    :cond_106
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    .line 391
    .end local v3    # "color":I
    .end local v6    # "index":I
    .end local v9    # "pos":I
    .end local v10    # "scaleX":F
    .end local v11    # "selectWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    .end local v12    # "styled":Ljava/lang/CharSequence;
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v14    # "width":I
    .end local v15    # "word":Landroid/widget/TextView;
    .end local v16    # "x":I
    :cond_10a
    const/16 v18, 0x0

    goto/16 :goto_21

    .line 400
    .restart local v6    # "index":I
    .restart local v9    # "pos":I
    .restart local v11    # "selectWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    .restart local v12    # "styled":Ljava/lang/CharSequence;
    .restart local v15    # "word":Landroid/widget/TextView;
    .restart local v16    # "x":I
    :cond_10e
    const/16 v18, 0x0

    goto/16 :goto_5a
.end method

.method public layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 16
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "stripView"    # Landroid/view/ViewGroup;
    .param p3, "stripWidth"    # I
    .param p4, "hintText"    # Ljava/lang/CharSequence;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 523
    iget v8, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    sub-int v8, p3, v8

    iget v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 525
    .local v4, "width":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 526
    .local v6, "wordView":Landroid/widget/TextView;
    iget v8, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    int-to-float v8, v4

    iget v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 528
    .local v7, "wordWidth":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 529
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v5

    .line 530
    .local v5, "wordScaleX":F
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 533
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 534
    iget v8, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    const/4 v9, -0x1

    invoke-static {v6, v8, v9}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 536
    iget-object v8, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 539
    .local v1, "hintView":Landroid/widget/TextView;
    const/16 v8, 0x13

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 540
    iget v8, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    move v2, v4

    .line 542
    .local v2, "hintWidth":I
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {p4, v2, v8}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F

    move-result v0

    .line 543
    .local v0, "hintScaleX":F
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 545
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 546
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v8, v9

    const/4 v9, -0x1

    invoke-static {v1, v8, v9}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setLayoutWeight(Landroid/view/View;FI)V

    .line 548
    return-void
.end method

.method public setMoreSuggestionsHeight(I)I
    .registers 6
    .param p1, "remainingHeight"    # I

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getMoreSuggestionsHeight()I

    move-result v0

    .line 293
    .local v0, "currentHeight":I
    if-gt v0, p1, :cond_7

    .line 300
    .end local v0    # "currentHeight":I
    :goto_6
    return v0

    .line 297
    .restart local v0    # "currentHeight":I
    :cond_7
    iget v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsRowHeight:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    .line 299
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->getMoreSuggestionsHeight()I

    move-result v1

    .local v1, "newHeight":I
    move v0, v1

    .line 300
    goto :goto_6
.end method
