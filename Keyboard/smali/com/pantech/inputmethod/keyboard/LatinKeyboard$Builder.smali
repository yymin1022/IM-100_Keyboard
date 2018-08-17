.class public Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
.super Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;-><init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;)V

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->build()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;
    .registers 5

    .prologue
    .line 160
    new-instance v1, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;Lcom/pantech/inputmethod/keyboard/LatinKeyboard$1;)V

    return-object v1
.end method

.method public load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;
    .registers 4
    .param p1, "id"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .param p2, "oneHandMode"    # I
    .param p3, "heightIndex"    # I

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 155
    return-object p0
.end method

.method public bridge synthetic load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
    .registers 5
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;II)Lcom/pantech/inputmethod/keyboard/LatinKeyboard$Builder;

    move-result-object v0

    return-object v0
.end method
