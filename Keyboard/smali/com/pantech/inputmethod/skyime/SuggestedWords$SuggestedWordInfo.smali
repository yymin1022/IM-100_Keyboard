.class public Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedWordInfo"
.end annotation


# static fields
.field public static final MAX_SCORE:I = 0x7fffffff


# instance fields
.field public final mCodePointCount:I

.field private mDebugString:Ljava/lang/String;

.field public final mScore:I

.field public final mWord:Ljava/lang/CharSequence;

.field private final mWordStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "score"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    .line 132
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    .line 134
    iput p2, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    .line 135
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    .line 136
    return-void
.end method

.method public static removeDups(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_8

    .line 182
    :cond_7
    return-void

    .line 169
    :cond_8
    const/4 v1, 0x1

    .line 170
    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 171
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 172
    .local v0, "cur":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_16
    if-ge v2, v1, :cond_34

    .line 173
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;

    .line 174
    .local v3, "previous":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    iget-object v4, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWord:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 175
    iget v4, v0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    iget v5, v3, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mScore:I

    if-ge v4, v5, :cond_2f

    move v2, v1

    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    add-int/lit8 v1, v1, -0x1

    .line 180
    .end local v3    # "previous":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_9

    .line 172
    .restart local v2    # "j":I
    .restart local v3    # "previous":Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method


# virtual methods
.method public codePointAt(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public codePointCount()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mCodePointCount:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugString(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Debug info is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_a
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    .line 160
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mWordStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
