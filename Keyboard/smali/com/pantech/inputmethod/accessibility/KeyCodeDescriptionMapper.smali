.class public final Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;
.super Ljava/lang/Object;
.source "KeyCodeDescriptionMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final OBSCURED_KEY_RES_ID:I = 0x7f0c00a0

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;


# instance fields
.field private final mKeyCodeMap:Landroid/util/SparseIntArray;

.field private final mKeyLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;-><init>()V

    sput-object v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/pantech/inputmethod/skyime/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    .line 59
    return-void
.end method

.method private getDescriptionForActionKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p3, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 297
    iget-object v1, p2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 298
    .local v1, "keyboardId":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->imeAction()I

    move-result v0

    .line 302
    .local v0, "actionId":I
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 303
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 331
    :goto_18
    return-object v3

    .line 307
    :cond_19
    packed-switch v0, :pswitch_data_38

    .line 329
    const v2, 0x7f0c0095

    .line 331
    .local v2, "resId":I
    :goto_1f
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    .line 309
    .end local v2    # "resId":I
    :pswitch_24
    const v2, 0x7f0c0146

    .line 310
    .restart local v2    # "resId":I
    goto :goto_1f

    .line 312
    .end local v2    # "resId":I
    :pswitch_28
    const v2, 0x7f0c00f9

    .line 313
    .restart local v2    # "resId":I
    goto :goto_1f

    .line 315
    .end local v2    # "resId":I
    :pswitch_2c
    const v2, 0x7f0c00fc

    .line 316
    .restart local v2    # "resId":I
    goto :goto_1f

    .line 318
    .end local v2    # "resId":I
    :pswitch_30
    const v2, 0x7f0c00fa

    .line 319
    .restart local v2    # "resId":I
    goto :goto_1f

    .line 321
    .end local v2    # "resId":I
    :pswitch_34
    const v2, 0x7f0c00fb

    .line 322
    .restart local v2    # "resId":I
    goto :goto_1f

    .line 307
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_28
        :pswitch_24
        :pswitch_2c
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method private getDescriptionForKeyCode(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;Z)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p3, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p4, "shouldObscure"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 356
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getCode()I

    move-result v0

    .line 359
    .local v0, "code":I
    invoke-static {v0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_1f

    move v1, v2

    .line 360
    .local v1, "isDefinedNonCtrl":Z
    :goto_13
    if-eqz p4, :cond_21

    if-eqz v1, :cond_21

    .line 361
    const v2, 0x7f0c00a0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    :goto_1e
    return-object v2

    .end local v1    # "isDefinedNonCtrl":Z
    :cond_1f
    move v1, v3

    .line 359
    goto :goto_13

    .line 363
    .restart local v1    # "isDefinedNonCtrl":Z
    :cond_21
    iget-object v4, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_34

    .line 364
    iget-object v2, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 366
    :cond_34
    if-eqz v1, :cond_3c

    .line 367
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 369
    :cond_3c
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 370
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 372
    :cond_4b
    const v4, 0x7f0c0089

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private getDescriptionForShiftKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 266
    iget-object v0, p2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 267
    .local v0, "keyboardId":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    const v1, 0x7f0c008a

    .line 284
    .local v1, "resId":I
    const v2, 0x7f0c008a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 229
    iget-object v0, p2, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    .line 230
    .local v0, "keyboardId":Lcom/pantech/inputmethod/keyboard/KeyboardId;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->getLanguage()I

    move-result v1

    .line 231
    .local v1, "lang":I
    const v2, 0x7f0c008e

    .line 255
    .local v2, "resId":I
    const v3, 0x7f0c008e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    return-object v0
.end method

.method public static init()V
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->sInstance:Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;

    invoke-direct {v0}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->initInternal()V

    .line 51
    return-void
.end method

.method private initInternal()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, ":-)"

    const v2, 0x7f0c0094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const v2, 0x7f0c0092

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x5

    const v2, 0x7f0c008d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f0c0095

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x6

    const v2, 0x7f0c0090

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    const v2, 0x7f0c008a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x7

    const v2, 0x7f0c0093

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x2

    const v2, 0x7f0c008e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f0c0091

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x9

    const v2, 0x7f0c0069

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x44b

    const v2, 0x7f0c015e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x6b

    const v2, 0x7f0c018a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x6a

    const v2, 0x7f0c018b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x69

    const v2, 0x7f0c018c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x68

    const v2, 0x7f0c018d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x67

    const v2, 0x7f0c018e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x66

    const v2, 0x7f0c018f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x65

    const v2, 0x7f0c0190

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x6f

    const v2, 0x7f0c0193

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    const/16 v1, -0x6e

    const v2, 0x7f0c0194

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3131"

    const v2, 0x7f0c0160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3134"

    const v2, 0x7f0c0161

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3137"

    const v2, 0x7f0c0162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3139"

    const v2, 0x7f0c0163

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3141"

    const v2, 0x7f0c0164

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3142"

    const v2, 0x7f0c0165

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3145"

    const v2, 0x7f0c0166

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3147"

    const v2, 0x7f0c0167

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3148"

    const v2, 0x7f0c0168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314a"

    const v2, 0x7f0c0169

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314b"

    const v2, 0x7f0c016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314c"

    const v2, 0x7f0c016b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314d"

    const v2, 0x7f0c016c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314e"

    const v2, 0x7f0c016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u314f"

    const v2, 0x7f0c016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3150"

    const v2, 0x7f0c016f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3151"

    const v2, 0x7f0c0170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3152"

    const v2, 0x7f0c0171

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3153"

    const v2, 0x7f0c0172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3154"

    const v2, 0x7f0c0173

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3155"

    const v2, 0x7f0c0174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3156"

    const v2, 0x7f0c0175

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3157"

    const v2, 0x7f0c0176

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u315b"

    const v2, 0x7f0c0177

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u315c"

    const v2, 0x7f0c0178

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3160"

    const v2, 0x7f0c0179

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3161"

    const v2, 0x7f0c017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u3163"

    const v2, 0x7f0c017b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    const-string v1, "\u2665"

    const v2, 0x7f0c0195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method


# virtual methods
.method public getDescriptionForKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;Z)Ljava/lang/String;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;
    .param p3, "key"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p4, "shouldObscure"    # Z

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getCode()I

    move-result v0

    .line 154
    .local v0, "code":I
    const/4 v7, -0x2

    if-ne v0, v7, :cond_f

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForSwitchAlphaSymbol(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "description":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 215
    .end local v2    # "description":Ljava/lang/String;
    :cond_e
    :goto_e
    return-object v2

    .line 161
    :cond_f
    const/4 v7, -0x1

    if-ne v0, v7, :cond_17

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForShiftKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 165
    :cond_17
    const/16 v7, 0xa

    if-ne v0, v7, :cond_20

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForActionKey(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 171
    :cond_20
    const/16 v7, 0x44b

    if-ne v0, v7, :cond_2f

    .line 172
    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 176
    :cond_2f
    packed-switch v0, :pswitch_data_cc

    .line 189
    :pswitch_32
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 190
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "label":Ljava/lang/String;
    const/16 v7, 0x3e9

    if-lt v0, v7, :cond_9c

    const/16 v7, 0x410

    if-gt v0, v7, :cond_9c

    move v4, v6

    .line 195
    .local v4, "korCharKey":Z
    :goto_4d
    if-eqz v4, :cond_9e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_9e

    .line 196
    const-string v2, ""

    .line 197
    .restart local v2    # "description":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_e

    .line 198
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 199
    .local v1, "cs":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 186
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "korCharKey":Z
    .end local v5    # "label":Ljava/lang/String;
    :pswitch_90
    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 192
    .restart local v5    # "label":Ljava/lang/String;
    :cond_9c
    const/4 v4, 0x0

    goto :goto_4d

    .line 204
    .restart local v4    # "korCharKey":Z
    :cond_9e
    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 205
    iget-object v6, p0, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->mKeyLabelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_b8
    move-object v2, v5

    .line 207
    goto/16 :goto_e

    .line 212
    .end local v4    # "korCharKey":Z
    .end local v5    # "label":Ljava/lang/String;
    :cond_bb
    invoke-virtual {p3}, Lcom/pantech/inputmethod/keyboard/Key;->getCode()I

    move-result v6

    const/16 v7, -0x63

    if-eq v6, v7, :cond_c9

    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKeyCode(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard;Lcom/pantech/inputmethod/keyboard/Key;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 215
    :cond_c9
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 176
    :pswitch_data_cc
    .packed-switch -0x6f
        :pswitch_90
        :pswitch_90
        :pswitch_32
        :pswitch_32
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
    .end packed-switch
.end method
