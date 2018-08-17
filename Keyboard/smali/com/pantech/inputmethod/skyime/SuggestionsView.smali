.class public Lcom/pantech/inputmethod/skyime/SuggestionsView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;,
        Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;,
        Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;,
        Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final MAX_SUGGESTIONS:I = 0xb4

.field private static final MIN_TEXT_XSCALE:F = 0.7f

.field private static final MORE_SUGGESTIONS_CHECKING_MODAL_OR_SLIDING:I = 0x1

.field private static final MORE_SUGGESTIONS_IN_MODAL_MODE:I = 0x0

.field private static final MORE_SUGGESTIONS_IN_SLIDING_MODE:I = 0x2

.field private static final OUT_OF_BOUNDS:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0x16


# instance fields
.field private buttonPressResId:I

.field private buttonResId:I

.field private leftShadowResId:I

.field private mBgPadding:Landroid/graphics/Rect;

.field private mButton:Landroid/widget/ImageButton;

.field private mButtonLayout:Landroid/view/View;

.field private mButtonPress:Landroid/widget/ImageButton;

.field private mButtonPressLayout:Landroid/view/View;

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRecommended:I

.field private mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInit:Z

.field private mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

.field private final mMoreSuggestionsBuilder:Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;

.field private final mMoreSuggestionsContainer:Landroid/view/View;

.field private final mMoreSuggestionsController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mMoreSuggestionsListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

.field private final mMoreSuggestionsModalTolerance:I

.field private mMoreSuggestionsMode:I

.field private final mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

.field private final mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

.field private final mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

.field private mOpenPanel:Z

.field private mOriginX:I

.field private mOriginY:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mShowingCompletions:Z

.field private mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

.field private final mSuggestionsStrip:Landroid/view/ViewGroup;

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTransparent:I

.field private mTypedWordValid:Z

.field private final mWordViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;",
            ">;"
        }
    .end annotation
.end field

.field private mWordWidth:[I

.field private mWordX:[I

.field private rightShadowResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 644
    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 645
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 648
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordViews:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    .line 104
    sget-object v1, Lcom/pantech/inputmethod/skyime/SuggestedWords;->EMPTY:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 108
    const/16 v1, 0xb4

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    .line 109
    const/16 v1, 0xb4

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordX:[I

    .line 123
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTouchX:I

    .line 140
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    .line 141
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mIsInit:Z

    .line 147
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mHandler:Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;

    .line 1010
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$5;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    .line 1033
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$6;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 1089
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    .line 1099
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$7;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$7;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 650
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 651
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030022

    move-object/from16 v0, p0

    invoke-virtual {v12, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 655
    const-string v1, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 658
    .local v11, "inflate":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 659
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    const v1, 0x7f1000f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mColorNormal:I

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mColorPressed:I

    .line 667
    const-string v1, "com.pantech.inputmethod.skyime_preferences"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 670
    .local v16, "sp":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SkySettingsValues;->getKeyboardThemeIconsType(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v10

    .line 671
    .local v10, "iconType":I
    const-string v1, "theme_type"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v17, v1, 0x1

    .line 676
    .local v17, "themeIndex":I
    packed-switch v17, :pswitch_data_372

    .line 724
    :goto_12e
    const/4 v1, 0x1

    if-eq v10, v1, :cond_143

    const/4 v1, 0x4

    if-eq v10, v1, :cond_143

    const/4 v1, 0x6

    if-eq v10, v1, :cond_143

    const/16 v1, 0x8

    if-eq v10, v1, :cond_143

    const/16 v1, 0xa

    if-eq v10, v1, :cond_143

    const/16 v1, 0x9

    if-ne v10, v1, :cond_290

    .line 727
    :cond_143
    const v1, 0x7f0201ab

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->leftShadowResId:I

    .line 728
    const v1, 0x7f0201ac

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->rightShadowResId:I

    .line 740
    :goto_151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTransparent:I

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 743
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDescent:I

    .line 750
    const/4 v14, 0x0

    .local v14, "pos":I
    :goto_1b0
    const/16 v1, 0xb4

    if-ge v14, v1, :cond_2a0

    .line 751
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 752
    .local v18, "word":Landroid/widget/TextView;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 753
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 755
    new-instance v8, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView$1;)V

    .line 756
    .local v8, "addWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 759
    .local v9, "divider":Landroid/view/View;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 760
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    const v1, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b0

    .line 680
    .end local v8    # "addWord":Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
    .end local v9    # "divider":Landroid/view/View;
    .end local v14    # "pos":I
    .end local v18    # "word":Landroid/widget/TextView;
    :pswitch_210
    const v1, 0x7f0200be

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 681
    const v1, 0x7f0200dc

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 690
    :pswitch_220
    const v1, 0x7f0200b3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 691
    const v1, 0x7f0200d1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 695
    :pswitch_230
    const v1, 0x7f0200b4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 696
    const v1, 0x7f0200d2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 701
    :pswitch_240
    const v1, 0x7f0200bc

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 702
    const v1, 0x7f0200da

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 705
    :pswitch_250
    const v1, 0x7f0200b8

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 706
    const v1, 0x7f0200d6

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 710
    :pswitch_260
    const v1, 0x7f0200b6

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 711
    const v1, 0x7f0200d4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 714
    :pswitch_270
    const v1, 0x7f0200bd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 715
    const v1, 0x7f0200db

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 718
    :pswitch_280
    const v1, 0x7f0200b9

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    .line 719
    const v1, 0x7f0200d7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    goto/16 :goto_12e

    .line 732
    :cond_290
    const v1, 0x7f02004e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->leftShadowResId:I

    .line 733
    const v1, 0x7f02004f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->rightShadowResId:I

    goto/16 :goto_151

    .line 765
    .restart local v14    # "pos":I
    :cond_2a0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$1;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 794
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 795
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setWillNotDraw(Z)V

    .line 796
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setHorizontalScrollBarEnabled(Z)V

    .line 797
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->setVerticalScrollBarEnabled(Z)V

    .line 798
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 800
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .line 801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$1700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    const v2, 0x7f1000c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .line 806
    new-instance v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-direct {v1, v2}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;-><init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;

    .line 808
    new-instance v13, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 809
    .local v13, "moreWindow":Landroid/widget/PopupWindow;
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v13, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 811
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 813
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 814
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 816
    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$2;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    invoke-virtual {v13, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 825
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 828
    .local v15, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0021

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    .line 830
    new-instance v1, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    .line 832
    return-void

    .line 676
    nop

    :pswitch_data_372
    .packed-switch 0x1
        :pswitch_210
        :pswitch_210
        :pswitch_230
        :pswitch_220
        :pswitch_210
        :pswitch_250
        :pswitch_260
        :pswitch_260
        :pswitch_230
        :pswitch_270
        :pswitch_280
        :pswitch_220
        :pswitch_220
        :pswitch_220
        :pswitch_240
        :pswitch_240
        :pswitch_240
        :pswitch_220
        :pswitch_220
        :pswitch_220
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->hidePreview()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$1420(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1502(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    return p1
.end method

.method static synthetic access$1600(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mIsInit:Z

    return p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/skyime/SuggestionsView;)Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/skyime/SuggestionsView;)[I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/skyime/SuggestionsView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method static synthetic access$802(Lcom/pantech/inputmethod/skyime/SuggestionsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$912(Lcom/pantech/inputmethod/skyime/SuggestionsView;I)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    return v0
.end method

.method private addToDictionary(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1005
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0085

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$1700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1008
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_26
    return-void
.end method

.method private dismissMoreSuggestions()Z
    .registers 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1042
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1043
    const/4 v0, 0x1

    .line 1045
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private hidePreview()V
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 979
    return-void
.end method

.method private removeHighlight()V
    .registers 2

    .prologue
    .line 1390
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTouchX:I

    .line 1391
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    .line 1392
    return-void
.end method

.method private scrollToTarget()V
    .registers 3

    .prologue
    .line 1321
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    if-le v0, v1, :cond_1d

    .line 1322
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 1323
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    if-lt v0, v1, :cond_19

    .line 1324
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 1325
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->requestLayout()V

    .line 1334
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    .line 1335
    return-void

    .line 1328
    :cond_1d
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 1329
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    if-gt v0, v1, :cond_19

    .line 1330
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 1331
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->requestLayout()V

    goto :goto_19
.end method

.method private showMoreSuggestions()Z
    .registers 18

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    .line 1058
    .local v15, "params":Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;
    iget-boolean v2, v15, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    if-eqz v2, :cond_8c

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v16

    .line 1060
    .local v16, "stripWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 1061
    .local v13, "container":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v4, v16, v2

    .line 1062
    .local v4, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;

    .line 1063
    .local v1, "builder":Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iget v3, v15, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    invoke-static {v15}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2600(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIII)Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->build()Lcom/pantech/inputmethod/skyime/MoreSuggestions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->setKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V

    .line 1067
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .line 1071
    .local v5, "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    iget v2, v15, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    neg-int v9, v2

    .line 1072
    .local v9, "pointY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v8

    .line 1073
    .local v8, "keyboardHeight":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsController:Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsListener:Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-interface/range {v5 .. v12}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/pantech/inputmethod/keyboard/KeyboardActionListener;I)V

    .line 1076
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    .line 1077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOriginX:I

    .line 1078
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOriginY:I

    .line 1080
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_73
    iget v2, v15, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    if-ge v14, v2, :cond_8a

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;

    iget-object v2, v2, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;->view:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1080
    add-int/lit8 v14, v14, 0x1

    goto :goto_73

    .line 1083
    :cond_8a
    const/4 v2, 0x1

    .line 1085
    .end local v1    # "builder":Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
    .end local v4    # "maxWidth":I
    .end local v5    # "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    .end local v8    # "keyboardHeight":I
    .end local v9    # "pointY":I
    .end local v13    # "container":Landroid/view/View;
    .end local v14    # "i":I
    .end local v16    # "stripWidth":I
    :goto_8b
    return v2

    :cond_8c
    const/4 v2, 0x0

    goto :goto_8b
.end method

.method private showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 981
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1002
    :goto_8
    return-void

    .line 984
    :cond_9
    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 985
    .local v4, "previewText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2500(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 986
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 988
    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 990
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 991
    .local v0, "offsetInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 992
    aget v1, v0, v7

    .line 993
    .local v1, "posX":I
    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 994
    .local v2, "posY":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 995
    .local v3, "previewPopup":Landroid/widget/PopupWindow;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 996
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1000
    :goto_45
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mHandler:Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->postHidePreview()V

    goto :goto_8

    .line 998
    :cond_4e
    invoke-virtual {v3, p0, v7, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_45
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 958
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 959
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->removeAllViews()V

    .line 960
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->addView(Landroid/view/View;)V

    .line 961
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissMoreSuggestions()Z

    .line 963
    sget-object v0, Lcom/pantech/inputmethod/skyime/SuggestedWords;->EMPTY:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 964
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTouchX:I

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    .line 966
    iput v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    .line 967
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    .line 968
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 969
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 970
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 971
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 973
    :cond_37
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    .line 974
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    .line 975
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 1394
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .registers 2

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 947
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 948
    const/4 v0, 0x1

    .line 950
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1109
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-eqz v6, :cond_8

    .line 1110
    const/4 v6, 0x1

    .line 1150
    :goto_7
    return v6

    .line 1112
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    if-nez v6, :cond_3d

    .line 1114
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastX:I

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastY:I

    .line 1116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1117
    const/4 v6, 0x1

    goto :goto_7

    .line 1119
    :cond_38
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_7

    .line 1122
    :cond_3d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .line 1123
    .local v8, "moreKeysPanel":Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 1124
    .local v11, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 1125
    .local v14, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 1126
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1127
    .local v2, "id":I
    invoke-static {v2, v8}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/pantech/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 1128
    .local v3, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v17, v0

    .line 1129
    .local v17, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v18, v0

    .line 1130
    .local v18, "y":I
    move/from16 v0, v17

    invoke-interface {v8, v0}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v4

    .line 1131
    .local v4, "translatedX":I
    move/from16 v0, v18

    invoke-interface {v8, v0}, Lcom/pantech/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v5

    .line 1133
    .local v5, "translatedY":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b3

    .line 1134
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOriginX:I

    sub-int v6, v17, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-ge v6, v7, :cond_98

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOriginY:I

    sub-int v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-lt v6, v7, :cond_a7

    .line 1138
    :cond_98
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 1145
    :cond_a4
    :goto_a4
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1141
    :cond_a7
    const/4 v6, 0x1

    if-eq v11, v6, :cond_ad

    const/4 v6, 0x6

    if-ne v11, v6, :cond_a4

    .line 1143
    :cond_ad
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mMoreSuggestionsMode:I

    goto :goto_a4

    :cond_b3
    move-object v10, v3

    move v12, v4

    move v13, v5

    move-object/from16 v16, v8

    .line 1149
    invoke-virtual/range {v10 .. v16}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/pantech/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 1150
    const/4 v6, 0x1

    goto/16 :goto_7
.end method

.method public getSuggestions()Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 936
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_18

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->isAddToDictionaryShowing(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1155
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->playKeyEffect(I)V

    .line 1156
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$1700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)Landroid/widget/TextView;

    move-result-object v3

    if-ne p1, v3, :cond_1b

    .line 1157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->addToDictionary(Ljava/lang/CharSequence;)V

    .line 1158
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 1171
    :cond_1a
    :goto_1a
    return-void

    .line 1162
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1163
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1a

    .line 1165
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1166
    .local v0, "index":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v3

    if-ge v0, v3, :cond_1a

    .line 1169
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1170
    .local v2, "word":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastX:I

    iget v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mLastY:I

    invoke-interface {v3, v0, v2, v4, v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;II)V

    goto :goto_1a
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1175
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1176
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mHandler:Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$UiHandler;->cancelAllMessages()V

    .line 1177
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->hidePreview()V

    .line 1178
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->dismissMoreSuggestions()Z

    .line 1179
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1183
    if-eqz p1, :cond_5

    .line 1184
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1186
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    if-nez v2, :cond_11

    .line 1319
    :cond_10
    :goto_10
    return-void

    .line 1189
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getHeight()I

    move-result v12

    .line 1190
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v12, v2

    div-int/lit8 v16, v2, 0x2

    .line 1191
    .local v16, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_59

    .line 1192
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mBgPadding:Landroid/graphics/Rect;

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1196
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v6, v12, v16

    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1201
    :cond_59
    const/16 v26, 0x0

    .line 1202
    .local v26, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v2

    const/16 v4, 0xf

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1203
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mBgPadding:Landroid/graphics/Rect;

    .line 1204
    .local v9, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    .line 1205
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTouchX:I

    move/from16 v22, v0

    .line 1206
    .local v22, "touchX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    move/from16 v18, v0

    .line 1207
    .local v18, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrolled:Z

    move/from16 v19, v0

    .line 1208
    .local v19, "scrolled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTypedWordValid:Z

    move/from16 v23, v0

    .line 1209
    .local v23, "typedWordValid":Z
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDescent:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v27, v2, 0x2

    .line 1211
    .local v27, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->computeHorizontalScrollOffset()I

    move-result v15

    .line 1213
    .local v15, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v24

    .line 1214
    .local v24, "width":I
    add-int v21, v24, v15

    .line 1216
    .local v21, "toend":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iget-boolean v2, v2, Lcom/pantech/inputmethod/skyime/SuggestedWords;->mIsPunctuationSuggestions:Z

    if-eqz v2, :cond_c2

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 1221
    :cond_c2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-eqz v2, :cond_e9

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    :goto_d9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_da
    if-ge v13, v11, :cond_20e

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v2, v13}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1232
    .local v3, "suggestion":Ljava/lang/CharSequence;
    if-nez v3, :cond_fb

    .line 1230
    :goto_e6
    add-int/lit8 v13, v13, 0x1

    goto :goto_da

    .line 1226
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v13    # "i":I
    :cond_e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d9

    .line 1233
    .restart local v3    # "suggestion":Ljava/lang/CharSequence;
    .restart local v13    # "i":I
    :cond_fb
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-eqz v2, :cond_1ac

    .line 1234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTransparent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1247
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    aget v2, v2, v13

    if-eqz v2, :cond_1ee

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    aget v25, v2, v13

    .line 1255
    .local v25, "wordWidth":I
    :goto_116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordX:[I

    aput v26, v2, v13

    .line 1257
    add-int v2, v22, v18

    move/from16 v0, v26

    if-lt v2, v0, :cond_168

    add-int v2, v22, v18

    add-int v4, v26, v25

    if-ge v2, v4, :cond_168

    if-nez v19, :cond_168

    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_168

    .line 1259
    if-eqz p1, :cond_160

    .line 1260
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mColorPressed:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, v9, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    invoke-virtual {v2, v4, v5, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1264
    move/from16 v0, v26

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1266
    :cond_160
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1267
    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    .line 1270
    :cond_168
    if-eqz p1, :cond_1a0

    .line 1271
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v2, v26, 0x16

    int-to-float v6, v2

    move/from16 v0, v27

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2800(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1273
    add-int v2, v26, v25

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1274
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-eqz v2, :cond_204

    .line 1276
    :goto_194
    move/from16 v0, v26

    neg-int v2, v0

    sub-int v2, v2, v25

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1278
    :cond_1a0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1279
    add-int v26, v26, v25

    goto/16 :goto_e6

    .line 1237
    .end local v25    # "wordWidth":I
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->hasAutoCorrectionWord()Z

    move-result v2

    if-eqz v2, :cond_1df

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1c6

    if-eqz v23, :cond_1ca

    :cond_1c6
    if-nez v13, :cond_1df

    if-eqz v23, :cond_1df

    .line 1240
    :cond_1ca
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2700(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_108

    .line 1242
    :cond_1df
    if-eqz v13, :cond_108

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->access$2800(Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_108

    .line 1250
    :cond_1ee
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v8, v3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    .line 1251
    .local v20, "textWidth":F
    move/from16 v0, v20

    float-to-int v2, v0

    add-int/lit8 v25, v2, 0x2c

    .line 1252
    .restart local v25    # "wordWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mWordWidth:[I

    aput v25, v2, v13

    goto/16 :goto_116

    .line 1275
    .end local v20    # "textWidth":F
    :cond_204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_194

    .line 1281
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v25    # "wordWidth":I
    :cond_20e
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    .line 1282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTargetScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrollX:I

    if-eq v2, v4, :cond_221

    .line 1283
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->scrollToTarget()V

    .line 1286
    :cond_221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_2a6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mIsInit:Z

    if-eqz v2, :cond_2a6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->size()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_2a6

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    :goto_245
    const/16 v2, 0xa

    if-ge v2, v15, :cond_268

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-nez v2, :cond_268

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->leftShadowResId:I

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1294
    .local v14, "leftShadow":Landroid/graphics/Bitmap;
    move v10, v15

    .line 1296
    .local v10, "bitmapPos":I
    if-eqz p1, :cond_268

    .line 1297
    if-eqz v14, :cond_268

    .line 1298
    int-to-float v2, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1304
    .end local v10    # "bitmapPos":I
    .end local v14    # "leftShadow":Landroid/graphics/Bitmap;
    :cond_268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mOpenPanel:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTotalWidth:I

    add-int/lit8 v2, v2, -0xa

    move/from16 v0, v21

    if-lt v2, v0, :cond_10

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->rightShadowResId:I

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1308
    .local v17, "rightShadow":Landroid/graphics/Bitmap;
    add-int v2, v15, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v10, v2, v4

    .line 1311
    .restart local v10    # "bitmapPos":I
    if-eqz p1, :cond_10

    .line 1312
    if-eqz v17, :cond_10

    .line 1313
    int-to-float v2, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 1289
    .end local v10    # "bitmapPos":I
    .end local v17    # "rightShadow":Landroid/graphics/Bitmap;
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_245
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1340
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1387
    :goto_c
    return v8

    .line 1344
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1345
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1346
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1347
    .local v2, "y":I
    iput v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mTouchX:I

    .line 1349
    packed-switch v0, :pswitch_data_80

    goto :goto_c

    .line 1351
    :pswitch_21
    iput-boolean v6, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrolled:Z

    .line 1352
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    invoke-interface {v3, v6}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->playKeyEffect(I)V

    .line 1353
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    goto :goto_c

    .line 1356
    :pswitch_2c
    if-gtz v2, :cond_4e

    .line 1358
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4e

    .line 1359
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mShowingCompletions:Z

    if-nez v3, :cond_41

    .line 1360
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v3, v6}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1363
    :cond_41
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6, v6}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;II)V

    .line 1364
    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1365
    iput v7, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    .line 1368
    :cond_4e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->invalidate()V

    goto :goto_c

    .line 1371
    :pswitch_52
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mScrolled:Z

    if-nez v3, :cond_72

    .line 1372
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_72

    .line 1373
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mShowingCompletions:Z

    if-nez v3, :cond_69

    .line 1374
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v3, v6}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/skyime/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1377
    :cond_69
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    iget v4, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6, v6}, Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;II)V

    .line 1380
    :cond_72
    iput-object v9, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1381
    iput v7, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSelectedIndex:I

    .line 1382
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->removeHighlight()V

    .line 1383
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->hidePreview()V

    .line 1384
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->requestLayout()V

    goto :goto_c

    .line 1349
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_21
        :pswitch_52
        :pswitch_2c
    .end packed-switch
.end method

.method public setListener(Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;Landroid/view/View;)V
    .registers 9
    .param p1, "listener"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;
    .param p2, "inputView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 840
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mListener:Lcom/pantech/inputmethod/skyime/SuggestionsView$Listener;

    .line 841
    const v0, 0x7f100083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .line 842
    const v0, 0x7f1000aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    .line 843
    const v0, 0x7f1000ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    .line 844
    const v0, 0x7f1000ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    .line 845
    const v0, 0x7f1000ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    .line 859
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 860
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 862
    :cond_49
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    if-eqz v0, :cond_5b

    .line 863
    invoke-static {}, Lcom/pantech/inputmethod/style/KeyDrawable;->getInstance()Lcom/pantech/inputmethod/style/KeyDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/style/KeyDrawable;->setKeyboardBackground(Landroid/content/Context;Landroid/view/View;ZIZ)V

    .line 869
    :cond_5b
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    if-eqz v0, :cond_66

    .line 870
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonPressResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 872
    :cond_66
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_71

    .line 873
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->buttonResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 878
    :cond_71
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 879
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 881
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$3;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 900
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPress:Landroid/widget/ImageButton;

    new-instance v1, Lcom/pantech/inputmethod/skyime/SuggestionsView$4;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$4;-><init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 917
    return-void
.end method

.method public setMoreSuggestionsHeight(I)I
    .registers 3
    .param p1, "remainingHeight"    # I

    .prologue
    .line 932
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->setMoreSuggestionsHeight(I)I

    move-result v0

    return v0
.end method

.method public setSuggestions(Lcom/pantech/inputmethod/skyime/SuggestedWords;)V
    .registers 7
    .param p1, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .prologue
    const/16 v4, 0x8

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mIsInit:Z

    .line 921
    if-nez p1, :cond_8

    .line 929
    :goto_7
    return-void

    .line 923
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 924
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 925
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestedWords:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 926
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonPressLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->clear()V

    .line 942
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mParams:Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView;->getWidth()I

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/inputmethod/skyime/SuggestionsView$SuggestionsViewParams;->layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 943
    return-void
.end method
