.class public Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;
.super Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/MiniKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMoreKeys:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardView;ILcom/pantech/inputmethod/keyboard/Key;Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 14
    .param p1, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;
    .param p2, "xmlId"    # I
    .param p3, "parentKey"    # Lcom/pantech/inputmethod/keyboard/Key;
    .param p4, "parentKeyboard"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    invoke-direct {v1}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 212
    iget-object v0, p4, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;)V

    .line 216
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v1, p4, Lcom/pantech/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    .line 217
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-boolean v1, p4, Lcom/pantech/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    iput-boolean v1, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mIsRtlKeyboard:Z

    .line 218
    iget-object v0, p3, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v8, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundWidth:I

    .line 221
    .local v8, "previewWidth":I
    iget-object v0, p1, Lcom/pantech/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v7, v0, Lcom/pantech/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundHeight:I

    .line 225
    .local v7, "previewHeight":I
    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->isKeyPreviewPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    if-lez v8, :cond_6f

    if-lez v7, :cond_6f

    .line 227
    move v3, v8

    .line 228
    .local v3, "width":I
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    add-int v4, v7, v0

    .line 233
    .local v4, "height":I
    :goto_52
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget v2, p3, Lcom/pantech/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    iget v6, p3, Lcom/pantech/inputmethod/keyboard/Key;->mX:I

    iget-object v5, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v5, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v5, v5, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->setParameters(IIIIII)V

    .line 235
    return-void

    .line 230
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_6f
    iget-object v1, p3, Lcom/pantech/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    invoke-static {p1, v1, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->getMaxKeyWidth(Lcom/pantech/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I

    move-result v3

    .line 231
    .restart local v3    # "width":I
    iget v4, p4, Lcom/pantech/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .restart local v4    # "height":I
    goto :goto_52
.end method

.method private static getMaxKeyWidth(Lcom/pantech/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I
    .registers 15
    .param p0, "view"    # Lcom/pantech/inputmethod/keyboard/KeyboardView;
    .param p1, "moreKeys"    # [Ljava/lang/CharSequence;
    .param p2, "minKeyWidth"    # I

    .prologue
    const/4 v11, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 241
    .local v6, "padding":I
    const/4 v7, 0x0

    .line 242
    .local v7, "paint":Landroid/graphics/Paint;
    move v4, p2

    .line 243
    .local v4, "maxWidth":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_16
    if-ge v1, v3, :cond_41

    aget-object v5, v0, v1

    .line 244
    .local v5, "moreKeySpec":Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v9, v11, :cond_3e

    .line 248
    if-nez v7, :cond_34

    .line 249
    new-instance v7, Landroid/graphics/Paint;

    .end local v7    # "paint":Landroid/graphics/Paint;
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 250
    .restart local v7    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    :cond_34
    invoke-virtual {p0, v2, v7}, Lcom/pantech/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v9

    float-to-int v9, v9

    add-int v8, v9, v6

    .line 253
    .local v8, "width":I
    if-ge v4, v8, :cond_3e

    .line 254
    move v4, v8

    .line 243
    .end local v8    # "width":I
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 258
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v5    # "moreKeySpec":Ljava/lang/CharSequence;
    :cond_41
    return v4
.end method


# virtual methods
.method public bridge synthetic build()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->build()Lcom/pantech/inputmethod/keyboard/MiniKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/pantech/inputmethod/keyboard/MiniKeyboard;
    .registers 11

    .prologue
    .line 263
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    .line 264
    .local v2, "params":Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_5
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v8, v1, :cond_32

    .line 265
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "moreKeySpec":Ljava/lang/String;
    iget v1, v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    div-int v9, v8, v1

    .line 267
    .local v9, "row":I
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8, v9}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getX(II)I

    move-result v4

    invoke-virtual {v2, v9}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getY(I)I

    move-result v5

    iget v6, v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    iget v7, v2, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/String;IIII)V

    .line 269
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    invoke-virtual {v2, v0, v9}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    .line 270
    invoke-virtual {v2, v0}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 264
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 272
    .end local v0    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v3    # "moreKeySpec":Ljava/lang/String;
    .end local v9    # "row":I
    :cond_32
    new-instance v1, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/pantech/inputmethod/keyboard/MiniKeyboard;-><init>(Lcom/pantech/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;Lcom/pantech/inputmethod/keyboard/MiniKeyboard$1;)V

    return-object v1
.end method
