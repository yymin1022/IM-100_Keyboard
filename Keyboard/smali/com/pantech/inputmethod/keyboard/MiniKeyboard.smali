.class public Lcom/pantech/inputmethod/keyboard/MiniKeyboard;
.super Lcom/pantech/inputmethod/keyboard/Keyboard;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/MiniKeyboard$1;,
        Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;
    }
.end annotation


# instance fields
.field private final mDefaultKeyCoordX:I


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;)V
    .registers 4
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/Keyboard;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 30
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getDefaultKeyCoordX()I

    move-result v0

    iget v1, p1, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;Lcom/pantech/inputmethod/keyboard/MiniKeyboard$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    .param p2, "x1"    # Lcom/pantech/inputmethod/keyboard/MiniKeyboard$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;-><init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;)V

    return-void
.end method


# virtual methods
.method public getDefaultCoordX()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    return v0
.end method
