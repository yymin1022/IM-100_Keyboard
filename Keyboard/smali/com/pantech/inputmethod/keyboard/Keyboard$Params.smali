.class public Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;
    }
.end annotation


# instance fields
.field public GRID_HEIGHT:I

.field public GRID_WIDTH:I

.field public mBaseHeight:I

.field public mBaseWidth:I

.field public mBottomPadding:I

.field public mDefaultKeyWidth:I

.field public mDefaultRowHeight:I

.field private final mHeightHistogram:Landroid/util/SparseIntArray;

.field public mHeightIndex:I

.field public mHorizontalCenterPadding:I

.field public mHorizontalEdgesPadding:I

.field public mHorizontalGap:I

.field public final mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

.field public mIsRtlKeyboard:Z

.field public final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxHeightCount:I

.field public mMaxMiniKeyboardColumn:I

.field private mMaxWidthCount:I

.field public mMoreKeysTemplate:I

.field public mMostCommonKeyHeight:I

.field public mMostCommonKeyWidth:I

.field public mOccupiedHeight:I

.field public mOccupiedWidth:I

.field public mOneHandMode:I

.field public mProximityCharsCorrectionEnabled:Z

.field public final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftedPreviewIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeId:I

.field public mTopPadding:I

.field public final mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

.field public final mUnshiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnshiftedPreviewIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mVerticalGap:I

.field private final mWidthHistogram:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftKeys:Ljava/util/List;

    .line 472
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockKeys:Ljava/util/Set;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedIcons:Ljava/util/Map;

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockedIcons:Ljava/util/Map;

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedIcons:Ljava/util/Map;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedPreviewIcons:Ljava/util/Map;

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedPreviewIcons:Ljava/util/Map;

    .line 479
    new-instance v0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mIconsSet:Lcom/pantech/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 481
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyHeight:I

    .line 482
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyWidth:I

    .line 487
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightIndex:I

    .line 489
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    invoke-direct {v0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mTouchPositionCorrection:Lcom/pantech/inputmethod/keyboard/Keyboard$Params$TouchPositionCorrection;

    .line 584
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxHeightCount:I

    .line 585
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxWidthCount:I

    .line 586
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightHistogram:Landroid/util/SparseIntArray;

    .line 587
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mWidthHistogram:Landroid/util/SparseIntArray;

    return-void
.end method

.method private clearHistogram()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyHeight:I

    .line 591
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxHeightCount:I

    .line 592
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 594
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxWidthCount:I

    .line 595
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyWidth:I

    .line 596
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mWidthHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 597
    return-void
.end method

.method private updateHistogram(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 606
    iget v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mHeight:I

    iget v5, p1, Lcom/pantech/inputmethod/keyboard/Key;->mVerticalGap:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 607
    .local v0, "height":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightHistogram:Landroid/util/SparseIntArray;

    invoke-static {v4, v0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->updateHistogramCounter(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v1

    .line 608
    .local v1, "heightCount":I
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxHeightCount:I

    if-le v1, v4, :cond_1b

    .line 609
    iput v1, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxHeightCount:I

    .line 610
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyHeight:I

    .line 613
    :cond_1b
    iget v4, p1, Lcom/pantech/inputmethod/keyboard/Key;->mWidth:I

    iget v5, p1, Lcom/pantech/inputmethod/keyboard/Key;->mHorizontalGap:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 614
    .local v2, "width":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mWidthHistogram:Landroid/util/SparseIntArray;

    invoke-static {v4, v2}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->updateHistogramCounter(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I

    move-result v3

    .line 615
    .local v3, "widthCount":I
    iget v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxWidthCount:I

    if-le v3, v4, :cond_36

    .line 616
    iput v3, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMaxWidthCount:I

    .line 617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mMostCommonKeyWidth:I

    .line 619
    :cond_36
    return-void
.end method

.method private static updateHistogramCounter(Landroid/util/SparseIntArray;Ljava/lang/Integer;)I
    .registers 5
    .param p0, "histogram"    # Landroid/util/SparseIntArray;
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 601
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    return v0
.end method


# virtual methods
.method public addShiftLockedIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockedIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public addShiftedIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method public addShiftedPreviewIcon(Lcom/pantech/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method protected clearKeys()V
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 548
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 549
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 550
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 551
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockedIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 552
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 553
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 554
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mUnshiftedPreviewIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 555
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->clearHistogram()V

    .line 556
    return-void
.end method

.method public onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 4
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->updateHistogram(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 561
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 562
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 564
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_1d
    return-void
.end method
