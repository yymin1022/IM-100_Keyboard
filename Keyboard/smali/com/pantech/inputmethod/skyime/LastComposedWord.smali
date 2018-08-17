.class public Lcom/pantech/inputmethod/skyime/LastComposedWord;
.super Ljava/lang/Object;
.source "LastComposedWord.java"


# static fields
.field public static final COMMIT_TYPE_CANCEL_AUTO_CORRECT:I = 0x3

.field public static final COMMIT_TYPE_DECIDED_WORD:I = 0x2

.field public static final COMMIT_TYPE_MANUAL_PICK:I = 0x1

.field public static final COMMIT_TYPE_USER_TYPED_WORD:I = 0x0

.field public static final NOT_A_COMPOSED_WORD:Lcom/pantech/inputmethod/skyime/LastComposedWord;

.field public static final NOT_A_SEPARATOR:I = -0x1


# instance fields
.field private mActive:Z

.field public final mCommittedWord:Ljava/lang/String;

.field public final mPrevWord:Ljava/lang/CharSequence;

.field public final mPrimaryKeyCodes:[I

.field public final mSeparatorCode:I

.field public final mTypedWord:Ljava/lang/String;

.field public final mXCoordinates:[I

.field public final mYCoordinates:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/pantech/inputmethod/skyime/LastComposedWord;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/pantech/inputmethod/skyime/LastComposedWord;-><init>([I[I[ILjava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;)V

    sput-object v0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->NOT_A_COMPOSED_WORD:Lcom/pantech/inputmethod/skyime/LastComposedWord;

    return-void
.end method

.method public constructor <init>([I[I[ILjava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;)V
    .registers 9
    .param p1, "primaryKeyCodes"    # [I
    .param p2, "xCoordinates"    # [I
    .param p3, "yCoordinates"    # [I
    .param p4, "typedWord"    # Ljava/lang/String;
    .param p5, "committedWord"    # Ljava/lang/String;
    .param p6, "separatorCode"    # I
    .param p7, "prevWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mPrimaryKeyCodes:[I

    .line 62
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mXCoordinates:[I

    .line 63
    iput-object p3, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mYCoordinates:[I

    .line 64
    iput-object p4, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mTypedWord:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    .line 66
    iput p6, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mSeparatorCode:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mActive:Z

    .line 68
    iput-object p7, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mPrevWord:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method

.method public static getSeparatorLength(I)I
    .registers 2
    .param p0, "separatorCode"    # I

    .prologue
    .line 84
    const/4 v0, -0x1

    if-ne v0, p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public canRevertCommit()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mActive:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mActive:Z

    .line 73
    return-void
.end method

.method public didCommitTypedWord()Z
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mTypedWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/LastComposedWord;->mCommittedWord:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
