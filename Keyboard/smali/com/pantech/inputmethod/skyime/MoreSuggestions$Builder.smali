.class public Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
.super Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/MoreSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;",
        ">;"
    }
.end annotation


# instance fields
.field private mFromPos:I

.field private final mPaneView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

.field private mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

.field private mToPos:I


# direct methods
.method public constructor <init>(Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;)V
    .registers 4
    .param p1, "paneView"    # Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;)V

    .line 184
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mPaneView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    .line 185
    return-void
.end method

.method private static getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;
    .registers 3
    .param p0, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p1, "pos"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/pantech/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->build()Lcom/pantech/inputmethod/skyime/MoreSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/pantech/inputmethod/skyime/MoreSuggestions;
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    .line 218
    .local v1, "params":Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;
    const/4 v12, 0x0

    .local v12, "pos":I
    :goto_6
    iget v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mToPos:I

    if-ge v12, v6, :cond_42

    .line 219
    invoke-virtual {v1, v12}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getX(I)I

    move-result v7

    .line 220
    .local v7, "x":I
    invoke-virtual {v1, v12}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getY(I)I

    move-result v8

    .line 221
    .local v8, "y":I
    invoke-virtual {v1, v12}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v6

    sget v10, Lcom/pantech/inputmethod/skyime/MoreSuggestions;->mDividerWidth:I

    add-int v9, v6, v10

    .line 222
    .local v9, "width":I
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-virtual {v6, v12}, Lcom/pantech/inputmethod/skyime/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "word":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    invoke-static {v6, v12}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->getDebugInfo(Lcom/pantech/inputmethod/skyime/SuggestedWords;I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "info":Ljava/lang/String;
    add-int/lit16 v5, v12, 0x400

    .line 225
    .local v5, "index":I
    new-instance v0, Lcom/pantech/inputmethod/keyboard/Key;

    iget v10, v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    move-object v6, v4

    move-object v11, v4

    invoke-direct/range {v0 .. v11}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIIILjava/lang/String;)V

    .line 229
    .local v0, "key":Lcom/pantech/inputmethod/keyboard/Key;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/pantech/inputmethod/keyboard/Key;->setBackgroundType(I)V

    .line 230
    invoke-virtual {v1, v0, v12}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->markAsEdgeKey(Lcom/pantech/inputmethod/keyboard/Key;I)V

    .line 231
    invoke-virtual {v1, v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->onAddKey(Lcom/pantech/inputmethod/keyboard/Key;)V

    .line 218
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 242
    .end local v0    # "key":Lcom/pantech/inputmethod/keyboard/Key;
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "width":I
    :cond_42
    new-instance v6, Lcom/pantech/inputmethod/skyime/MoreSuggestions;

    invoke-direct {v6, v1, v4}, Lcom/pantech/inputmethod/skyime/MoreSuggestions;-><init>(Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;Lcom/pantech/inputmethod/skyime/MoreSuggestions$1;)V

    return-object v6
.end method

.method public layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIII)Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;
    .registers 16
    .param p1, "suggestions"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;
    .param p2, "fromPos"    # I
    .param p3, "maxWidth"    # I
    .param p4, "minWidth"    # I
    .param p5, "maxRow"    # I

    .prologue
    const v2, 0x7f050052

    .line 189
    invoke-static {}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/pantech/inputmethod/keyboard/LatinKeyboard;

    move-result-object v8

    .line 191
    .local v8, "keyboard":Lcom/pantech/inputmethod/keyboard/Keyboard;
    if-eqz v8, :cond_46

    .line 192
    const v9, 0x7f050052

    .line 194
    .local v9, "xmlId":I
    iget-object v0, v8, Lcom/pantech/inputmethod/keyboard/Keyboard;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->load(Lcom/pantech/inputmethod/keyboard/KeyboardId;)V

    .line 195
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    iget v2, v8, Lcom/pantech/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mTopPadding:I

    iput v2, v0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->mVerticalGap:I

    .line 197
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    check-cast v0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;

    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mPaneView:Lcom/pantech/inputmethod/skyime/MoreSuggestionsView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder$MoreSuggestionsParam;->layout(Lcom/pantech/inputmethod/skyime/SuggestedWords;IIIILcom/pantech/inputmethod/keyboard/KeyboardView;)I

    move-result v7

    .line 199
    .local v7, "count":I
    iput p2, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mFromPos:I

    .line 200
    add-int v0, p2, v7

    iput v0, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mToPos:I

    .line 201
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/MoreSuggestions$Builder;->mSuggestions:Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .line 203
    .end local v7    # "count":I
    .end local v9    # "xmlId":I
    :cond_46
    return-object p0
.end method
