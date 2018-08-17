.class Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
.super Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatinKeyboardParams"
.end annotation


# instance fields
.field public mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

.field public mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 99
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 100
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 102
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 103
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 104
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    .line 105
    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V
    .registers 3
    .param p1, "key"    # Lcom/pantech/inputmethod/keyboard/Key;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 110
    iget v0, p1, Lcom/pantech/inputmethod/keyboard/Key;->mCode:I

    sparse-switch v0, :sswitch_data_28

    .line 143
    :cond_8
    :goto_8
    return-void

    .line 113
    :sswitch_9
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mAlphaSymbolKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 116
    :sswitch_c
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mKorKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 119
    :sswitch_f
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mEngKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 122
    :sswitch_12
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSettingKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 126
    :sswitch_15
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 130
    :sswitch_18
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mHintShortcutKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 133
    :sswitch_1b
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mActionKey:Lcom/pantech/inputmethod/keyboard/Key;

    goto :goto_8

    .line 138
    :sswitch_1e
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pantech/inputmethod/keyboard/Key;->setEnabled(Z)V

    goto :goto_8

    .line 110
    nop

    :sswitch_data_28
    .sparse-switch
        -0x75 -> :sswitch_18
        -0x6d -> :sswitch_f
        -0x6c -> :sswitch_c
        -0x7 -> :sswitch_15
        -0x6 -> :sswitch_12
        -0x2 -> :sswitch_9
        0x0 -> :sswitch_1e
        0xa -> :sswitch_1b
    .end sparse-switch
.end method
