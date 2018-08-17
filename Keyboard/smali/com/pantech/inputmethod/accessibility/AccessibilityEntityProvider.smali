.class public final Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "AccessibilityEntityProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED:I = -0x80000000


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mAccessibilityUtils:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private final mKeyCodeDescriptionMapper:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

.field private mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

.field private final mParentLocation:[I

.field private final mTempBoundsInScreen:Landroid/graphics/Rect;

.field private final mVirtualViewIdToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "keyboardView"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;
    .param p2, "inputMethod"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 61
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    .line 67
    invoke-static {}, Lcom/pantech/inputmethod/skyime/CoordinateUtils;->newInstance()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    .line 70
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 77
    iput-object p2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 78
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getInstance()Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyCodeDescriptionMapper:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    .line 79
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    .line 80
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    .line 81
    return-void
.end method

.method private assignVirtualViewIds()V
    .registers 9

    .prologue
    .line 356
    iget-object v7, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 357
    .local v3, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-nez v3, :cond_9

    .line 367
    :cond_8
    return-void

    .line 360
    :cond_9
    iget-object v7, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 362
    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/Keyboard;->getKeys()[Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v4

    .line 363
    .local v4, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object v0, v4

    .local v0, "arr$":[Lcom/pantech/inputmethod/keyboard/Key;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_15
    if-ge v1, v5, :cond_8

    aget-object v2, v0, v1

    .line 364
    .local v2, "key":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-static {v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/pantech/inputmethod/keyboard/Key;)I

    move-result v6

    .line 365
    .local v6, "virtualViewId":I
    iget-object v7, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method private static generateVirtualViewIdForKey(Lcom/pantech/inputmethod/keyboard/Key;)I
    .registers 4
    .param p0, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    const v2, 0xffff

    .line 387
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Key;->getX()I

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/Key;->getY()I

    move-result v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private getKeyDescription(Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 340
    iget-object v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 341
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v3, v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    .line 342
    .local v2, "shouldObscure":Z
    iget-object v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyCodeDescriptionMapper:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;Z)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "keyCodeDescription":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 345
    iget-object v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v3, v1, v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getAutoCorrectionDescription(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 348
    .end local v1    # "keyCodeDescription":Ljava/lang/String;
    :cond_2e
    return-object v1
.end method

.method private updateParentLocation()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getLocationOnScreen([I)V

    .line 374
    return-void
.end method


# virtual methods
.method public createAccessibilityEvent(Lcom/pantech/inputmethod/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "eventType"    # I

    .prologue
    .line 114
    invoke-static {p1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/pantech/inputmethod/keyboard/Key;)I

    move-result v3

    .line 115
    .local v3, "virtualViewId":I
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->getKeyDescription(Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "keyDescription":Ljava/lang/String;
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 117
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 121
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 122
    .local v2, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 123
    return-object v0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 18
    .param p1, "virtualViewId"    # I

    .prologue
    .line 149
    const/high16 v13, -0x80000000

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 150
    const/4 v12, 0x0

    .line 202
    :cond_7
    :goto_7
    return-object v12

    .line 152
    :cond_8
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3d

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-static {v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v12

    .line 157
    .local v12, "rootInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-static {v13, v12}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v13}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v9

    .line 161
    .local v9, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    invoke-virtual {v9}, Lcom/pantech/inputmethod/keyboard/Keyboard;->getKeys()[Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v10

    .line 162
    .local v10, "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    move-object v1, v10

    .local v1, "arr$":[Lcom/pantech/inputmethod/keyboard/Key;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2b
    if-ge v5, v11, :cond_7

    aget-object v7, v1, v5

    .line 163
    .local v7, "key":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-static {v7}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/pantech/inputmethod/keyboard/Key;)I

    move-result v4

    .line 164
    .local v4, "childVirtualViewId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v12, v13, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 170
    .end local v1    # "arr$":[Lcom/pantech/inputmethod/keyboard/Key;
    .end local v4    # "childVirtualViewId":I
    .end local v5    # "i$":I
    .end local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v9    # "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    .end local v10    # "keys":[Lcom/pantech/inputmethod/keyboard/Key;
    .end local v11    # "len$":I
    .end local v12    # "rootInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/inputmethod/keyboard/Key;

    .line 171
    .restart local v7    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v7, :cond_67

    .line 172
    sget-object v13, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid virtual view ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v12, 0x0

    goto :goto_7

    .line 175
    :cond_67
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->getKeyDescription(Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "keyDescription":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v2

    .line 179
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    invoke-static {v14}, Lcom/pantech/inputmethod/skyime/CoordinateUtils;->x([I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mParentLocation:[I

    invoke-static {v15}, Lcom/pantech/inputmethod/skyime/CoordinateUtils;->y([I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mTempBoundsInScreen:Landroid/graphics/Rect;

    .line 185
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    .line 186
    .local v6, "info":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v13}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v6, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v6, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {v6, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    move/from16 v0, p1

    invoke-virtual {v6, v13, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 193
    invoke-virtual {v6, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 194
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 195
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 197
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_e5

    .line 198
    const/16 v13, 0x80

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_e2
    move-object v12, v6

    .line 202
    goto/16 :goto_7

    .line 200
    :cond_e5
    const/16 v13, 0x40

    invoke-virtual {v6, v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_e2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mVirtualViewIdToKey:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/keyboard/Key;

    .line 283
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    if-nez v0, :cond_c

    .line 284
    const/4 v1, 0x0

    .line 286
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v0, p2, p3}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->performActionForKey(Lcom/pantech/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_b
.end method

.method performActionForKey(Lcom/pantech/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-static {p1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->generateVirtualViewIdForKey(Lcom/pantech/inputmethod/keyboard/Key;)I

    move-result v0

    .line 300
    .local v0, "virtualViewId":I
    sparse-switch p2, :sswitch_data_28

    .line 318
    :cond_9
    :goto_9
    return v1

    .line 302
    :sswitch_a
    iget v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    if-eq v3, v0, :cond_9

    .line 305
    iput v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 306
    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    move v1, v2

    .line 308
    goto :goto_9

    .line 310
    :sswitch_18
    iget v3, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    if-ne v3, v0, :cond_9

    .line 313
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityFocusedView:I

    .line 314
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    move v1, v2

    .line 316
    goto :goto_9

    .line 300
    nop

    :sswitch_data_28
    .sparse-switch
        0x40 -> :sswitch_a
        0x80 -> :sswitch_18
    .end sparse-switch
.end method

.method sendAccessibilityEventForKey(Lcom/pantech/inputmethod/keyboard/Key;I)V
    .registers 5
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "eventType"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->createAccessibilityEvent(Lcom/pantech/inputmethod/keyboard/Key;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 330
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mAccessibilityUtils:Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->requestSendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 331
    return-void
.end method

.method public setKeyboard()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->assignVirtualViewIds()V

    .line 102
    return-void
.end method

.method public setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V
    .registers 2
    .param p1, "keyboardView"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .line 90
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->updateParentLocation()V

    .line 94
    invoke-virtual {p0}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->setKeyboard()V

    .line 95
    return-void
.end method

.method simulateKeyDown(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "downTime":J
    int-to-float v5, p1

    int-to-float v6, p2

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 234
    .local v8, "downEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 236
    return-void
.end method

.method simulateKeyMove(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 242
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 245
    .local v8, "moveEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 247
    return-void
.end method

.method simulateKeyPress(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 14
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 213
    .local v10, "x":I
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 214
    .local v11, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "downTime":J
    const/4 v4, 0x0

    int-to-float v5, v10

    int-to-float v6, v11

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 217
    .local v8, "downEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, v10

    int-to-float v6, v11

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 220
    .local v9, "upEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 221
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v9}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 222
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 223
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 224
    return-void
.end method

.method simulateKeyUp(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 254
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 257
    .local v8, "upEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v8}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 259
    return-void
.end method

.method simulateLongPress(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 14
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v9, p0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->mKeyboardView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    check-cast v9, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    .line 264
    .local v9, "view":Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 265
    .local v10, "x":I
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/Key;->getHitBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 266
    .local v11, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, "downTime":J
    int-to-float v5, v10

    int-to-float v6, v11

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 276
    .local v8, "downEvent":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8, p1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->onLongEvent(Landroid/view/MotionEvent;Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 277
    return-void
.end method
