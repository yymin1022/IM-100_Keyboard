.class public final Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "AccessibleKeyboardViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;
    }
.end annotation


# static fields
.field private static final KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

.field private static final KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;


# instance fields
.field private mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

.field private mEdgeSlop:I

.field private mInputMethod:Landroid/inputmethodservice/InputMethodService;

.field private final mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

.field private mLastHoverKey:Lcom/pantech/inputmethod/keyboard/Key;

.field private mLastKeyboardMode:I

.field private mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .line 43
    const-class v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    .line 50
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0c013d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f0c013e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0c013f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0c0140

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0c0141

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0c0142

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const v2, 0x7f0c0143

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f0c0144

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f0c0145

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f050018

    const v2, 0x7f0c0191

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f05001a

    const v2, 0x7f0c0192

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f050034

    const v2, 0x7f0c0157

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f050029

    const v2, 0x7f0c0158

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f05002a

    const v2, 0x7f0c0159

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f050024

    const v2, 0x7f0c015a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    const v1, 0x7f050027

    const v2, 0x7f0c015b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 81
    new-instance v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;-><init>(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;Lcom/pantech/inputmethod/keyboard/Key;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;
    .param p1, "x1"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    move-result v0

    return v0
.end method

.method private announceKeyboardHidden()V
    .registers 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0c013b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "text":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sendWindowStateChanged(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private announceKeyboardMode(I)V
    .registers 9
    .param p1, "mode"    # I

    .prologue
    .line 208
    sget-object v4, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_MODE_RES_IDS:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 209
    .local v2, "resId":I
    if-nez v2, :cond_9

    .line 216
    :goto_8
    return-void

    .line 212
    :cond_9
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "keyboardMode":Ljava/lang/String;
    const v4, 0x7f0c013c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "text":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sendWindowStateChanged(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private announceKeyboardType(I)V
    .registers 9
    .param p1, "type"    # I

    .prologue
    .line 220
    sget-object v4, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->KEYBOARD_TYPE_RES_IDS:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 221
    .local v3, "typeId":I
    if-nez v3, :cond_9

    .line 228
    :goto_8
    return-void

    .line 224
    :cond_9
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 225
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "keyboardType":Ljava/lang/String;
    const v4, 0x7f0c013c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "text":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sendWindowStateChanged(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private getAccessibilityNodeProvider()Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    if-nez v0, :cond_f

    .line 358
    new-instance v0, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    iget-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1, v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    .line 360
    :cond_f
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    return-object v0
.end method

.method public static getInstance()Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p0, "inputMethod"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 122
    sget-object v0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->initInternal(Landroid/inputmethodservice/InputMethodService;)V

    .line 123
    return-void
.end method

.method private initInternal(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "inputMethod"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    .line 135
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    .line 137
    return-void
.end method

.method private onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z
    .registers 6
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "action"    # I

    .prologue
    .line 409
    if-nez p1, :cond_4

    .line 410
    const/4 v1, 0x0

    .line 427
    :goto_3
    return v1

    .line 412
    :cond_4
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    .line 414
    .local v0, "provider":Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;
    packed-switch p2, :pswitch_data_20

    .line 427
    :goto_b
    const/4 v1, 0x1

    goto :goto_3

    .line 417
    :pswitch_d
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    .line 419
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->performActionForKey(Lcom/pantech/inputmethod/keyboard/Key;ILandroid/os/Bundle;)Z

    goto :goto_b

    .line 423
    :pswitch_19
    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->sendAccessibilityEventForKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    goto :goto_b

    .line 414
    nop

    :pswitch_data_20
    .packed-switch 0x9
        :pswitch_d
        :pswitch_19
    .end packed-switch
.end method

.method private onTransitionKey(Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "currentKey"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p2, "previousKey"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 388
    .local v1, "savedAction":I
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 389
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    .line 390
    const/16 v2, 0x9

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 391
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    .line 392
    const/4 v2, 0x7

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 393
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    move-result v0

    .line 394
    .local v0, "handled":Z
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 395
    return v0
.end method

.method private pointInView(II)Z
    .registers 5
    .param p1, "localX"    # I
    .param p2, "localY"    # I

    .prologue
    .line 371
    iget v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    if-lt p1, v0, :cond_20

    iget v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    if-lt p2, v0, :cond_20

    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_20

    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mEdgeSlop:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private sendWindowStateChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 246
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 248
    .local v1, "stateChange":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 249
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_23

    .line 254
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 256
    :cond_23
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/pantech/inputmethod/keyboard/PointerTracker;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    const-wide/16 v10, 0x640

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v7, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v7, :cond_9

    .line 345
    :goto_8
    return v5

    .line 298
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 299
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 300
    .local v4, "y":I
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 303
    .local v2, "previousKey":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-direct {p0, v3, v4}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->pointInView(II)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 304
    invoke-virtual {p2, v3, v4}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getKeyOn(II)Lcom/pantech/inputmethod/keyboard/Key;

    move-result-object v1

    .line 308
    .local v1, "key":Lcom/pantech/inputmethod/keyboard/Key;
    :goto_1f
    iput-object v1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 310
    if-nez v1, :cond_4b

    .line 311
    sget-object v7, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " === dispatchHoverEvent: (key == null), ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4b
    iget-object v7, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->isLongPressed()Z

    move-result v0

    .line 318
    .local v0, "ignoreEvents":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_a0

    :pswitch_58
    goto :goto_8

    .line 337
    :pswitch_59
    if-eqz v0, :cond_88

    move v5, v6

    goto :goto_8

    .line 306
    .end local v0    # "ignoreEvents":Z
    .end local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    :cond_5d
    const/4 v1, 0x0

    .restart local v1    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    goto :goto_1f

    .line 320
    .restart local v0    # "ignoreEvents":Z
    :pswitch_5f
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->cancelLongPressTimer()V

    .line 321
    if-eqz v0, :cond_68

    move v5, v6

    .line 322
    goto :goto_8

    .line 327
    :cond_68
    if-eqz v1, :cond_71

    .line 328
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->simulateKeyPress(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 331
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    move-result v5

    goto :goto_8

    .line 334
    :pswitch_7a
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    invoke-virtual {v5, v10, v11, v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->startLongPressTimer(JLcom/pantech/inputmethod/keyboard/Key;)V

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    move-result v5

    goto :goto_8

    .line 339
    :cond_88
    if-eq v1, v2, :cond_95

    .line 340
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mKeyTimerHandler:Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;

    invoke-virtual {v5, v10, v11, v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyTimerHandler;->startLongPressTimer(JLcom/pantech/inputmethod/keyboard/Key;)V

    .line 341
    invoke-direct {p0, v1, v2, p1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onTransitionKey(Lcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Key;Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_8

    .line 343
    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverKey(Lcom/pantech/inputmethod/keyboard/Key;I)Z

    move-result v5

    goto/16 :goto_8

    .line 318
    nop

    :pswitch_data_a0
    .packed-switch 0x7
        :pswitch_59
        :pswitch_58
        :pswitch_7a
        :pswitch_5f
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;
    .registers 3
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v0, :cond_6

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_5
    return-object v0

    :cond_6
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getAccessibilityNodeProvider()Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    move-result-object v0

    goto :goto_5
.end method

.method public notifyShiftState()V
    .registers 7

    .prologue
    .line 434
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v4, :cond_5

    .line 459
    :goto_4
    return-void

    .line 438
    :cond_5
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 439
    .local v1, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v2, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 441
    .local v2, "keyboardId":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f0c014b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 458
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v4, v5, v3}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public notifySymbolsState()V
    .registers 8

    .prologue
    .line 465
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v5, :cond_5

    .line 503
    :cond_4
    :goto_4
    return-void

    .line 469
    :cond_5
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 470
    .local v1, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    iget-object v5, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    .local v0, "context":Landroid/content/Context;
    iget-object v2, v1, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 497
    .local v2, "keyboardId":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    const v3, 0x7f0c014d

    .line 498
    .local v3, "resId":I
    if-ltz v3, :cond_4

    .line 501
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "text":Ljava/lang/String;
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v5, v6, v4}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onHideWindow()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v0, :cond_5

    .line 199
    :goto_4
    return-void

    .line 197
    :cond_5
    invoke-direct {p0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->announceKeyboardHidden()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastKeyboardMode:I

    goto :goto_4
.end method

.method public setKeyboard()V
    .registers 4

    .prologue
    .line 167
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    if-nez v2, :cond_5

    .line 188
    :goto_4
    return-void

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    if-eqz v2, :cond_e

    .line 171
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->setKeyboard()V

    .line 173
    :cond_e
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v2

    iget-object v2, v2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v0, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 174
    .local v0, "keyboardMode":I
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/pantech/inputmethod/keyboard/Keyboard;

    move-result-object v2

    iget-object v2, v2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget v1, v2, Lcom/pantech/inputmethod/keyboard/KeyboardId;->mXmlId:I

    .line 178
    .local v1, "keyboardType":I
    invoke-static {}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/inputmethod/accessibility/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 180
    if-nez v0, :cond_34

    .line 181
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->announceKeyboardType(I)V

    .line 187
    :cond_31
    :goto_31
    iput v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastKeyboardMode:I

    goto :goto_4

    .line 184
    :cond_34
    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->announceKeyboardMode(I)V

    goto :goto_31
.end method

.method public setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V
    .registers 3
    .param p1, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 158
    :cond_2
    :goto_2
    return-void

    .line 149
    :cond_3
    iput-object p1, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/pantech/inputmethod/keyboard/KeyboardView;

    .line 152
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 154
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mAccessibilityNodeProvider:Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;

    invoke-virtual {v0, p1}, Lcom/pantech/inputmethod/accessibility/AccessibilityEntityProvider;->setView(Lcom/pantech/inputmethod/keyboard/KeyboardView;)V

    goto :goto_2
.end method
