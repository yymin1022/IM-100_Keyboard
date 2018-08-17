.class public Lcom/pantech/inputmethod/skyime/utils/EditingUtils;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;,
        Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    }
.end annotation


# static fields
.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static final LOOKBACK_CHARACTER_NUM:I = 0xf

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 166
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 7
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 47
    if-nez p0, :cond_4

    .line 64
    :goto_3
    return-void

    .line 52
    :cond_4
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 55
    move-object v1, p1

    .line 56
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    .local v0, "charBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_30

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_30
    invoke-interface {p0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3
.end method

.method public static deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 7
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;

    move-result-object v1

    .line 96
    .local v1, "range":Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    if-nez v1, :cond_7

    .line 104
    :goto_6
    return-void

    .line 98
    :cond_7
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 101
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsBefore:I

    sub-int v0, v2, v3

    .line 102
    .local v0, "newCursor":I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 103
    const/4 v2, 0x0

    iget v3, v1, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsBefore:I

    iget v4, v1, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsAfter:I

    add-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_6
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .registers 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, -0x1

    .line 67
    if-nez p0, :cond_4

    .line 73
    :cond_3
    :goto_3
    return v1

    .line 68
    :cond_4
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 70
    .local v0, "extracted":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_3

    .line 73
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 174
    :goto_3
    return-object v1

    .line 173
    :cond_4
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, "prev":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3
.end method

.method public static getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "prev"    # Ljava/lang/CharSequence;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 188
    if-nez p0, :cond_4

    .line 198
    :cond_3
    :goto_3
    return-object v2

    .line 189
    :cond_4
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "w":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 195
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 198
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    goto :goto_3
.end method

.method public static getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    .line 202
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 204
    :goto_3
    return-object v1

    .line 203
    :cond_4
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, "prev":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3
.end method

.method public static getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "prev"    # Ljava/lang/CharSequence;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    if-nez p0, :cond_4

    .line 225
    :cond_3
    :goto_3
    return-object v2

    .line 216
    :cond_4
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "w":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 222
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 223
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 225
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_3
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;

    move-result-object v0

    .line 86
    .local v0, "r":Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mWord:Ljava/lang/String;

    goto :goto_7
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;
    .registers 14
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "wordSeparators"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 263
    if-ne p1, p2, :cond_22

    .line 266
    invoke-static {p0, p3}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;

    move-result-object v4

    .line 267
    .local v4, "range":Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    if-eqz v4, :cond_21

    iget-object v7, v4, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mWord:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 268
    new-instance v6, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;

    iget v7, v4, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsBefore:I

    sub-int v7, p1, v7

    iget v8, v4, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mCharsAfter:I

    add-int/2addr v8, p2

    iget-object v9, v4, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;->mWord:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    .line 299
    .end local v4    # "range":Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    :cond_21
    :goto_21
    return-object v6

    .line 272
    :cond_22
    if-eqz p0, :cond_21

    .line 274
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    .local v1, "charsBefore":Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 280
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    .local v0, "charsAfter":Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 286
    invoke-static {p0, p1, p2}, Lcom/pantech/inputmethod/compat/InputConnectionCompatUtils;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 288
    .local v5, "touching":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 290
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 291
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    if-ge v2, v3, :cond_58

    .line 292
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 297
    :cond_58
    new-instance v6, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;

    invoke-direct {v6, p1, p2, v5}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    goto :goto_21
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;
    .registers 13
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 133
    if-eqz p0, :cond_8

    if-nez p1, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-object v6

    .line 136
    :cond_9
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 137
    .local v1, "before":Ljava/lang/CharSequence;
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, "after":Ljava/lang/CharSequence;
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 143
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 144
    .local v4, "start":I
    :goto_19
    if-lez v4, :cond_2a

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 147
    :cond_2a
    const/4 v3, -0x1

    .line 148
    .local v3, "end":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3d

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 152
    :cond_3d
    invoke-static {p0}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 153
    .local v2, "cursor":I
    if-ltz v4, :cond_8

    add-int v7, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_8

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "word":Ljava/lang/String;
    new-instance v6, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-direct {v6, v7, v3, v5}, Lcom/pantech/inputmethod/skyime/utils/EditingUtils$Range;-><init>(IILjava/lang/String;)V

    goto :goto_8
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .registers 3
    .param p0, "code"    # I
    .param p1, "whitespace"    # Ljava/lang/String;

    .prologue
    .line 163
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0, "singleChar"    # Ljava/lang/CharSequence;
    .param p1, "wordSeparators"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
