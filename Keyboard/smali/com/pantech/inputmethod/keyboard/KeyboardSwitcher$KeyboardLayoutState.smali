.class Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardLayoutState"
.end annotation


# instance fields
.field private mInputModeBackup:I

.field private mIsShiftLocked:Z

.field private mIsShifted:Z

.field private mIsValid:Z

.field private mLanguageBackup:I

.field private mOneHandModeBackup:I

.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;


# direct methods
.method private constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;
    .param p2, "x1"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$1;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    return v0
.end method


# virtual methods
.method public getKeyboardId(Landroid/view/inputmethod/EditorInfo;)Lcom/pantech/inputmethod/keyboard/KeyboardId;
    .registers 5
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v0, :cond_10

    .line 268
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0, p1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$500(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;Landroid/view/inputmethod/EditorInfo;)V

    .line 269
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$200(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    .line 281
    :goto_f
    return-object v0

    .line 273
    :cond_10
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mInputModeBackup:I

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$302(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)I

    .line 276
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$600(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 277
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->enableOneHandMode(Z)V

    .line 281
    :cond_2b
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    iget v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mInputModeBackup:I

    iget v2, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mLanguageBackup:I

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$700(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;II)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    goto :goto_f
.end method

.method public restore()V
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    if-nez v0, :cond_5

    .line 303
    :goto_4
    return-void

    .line 287
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    .line 289
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mLanguageBackup:I

    goto :goto_4
.end method

.method public save()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$200(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)Lcom/pantech/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    if-nez v0, :cond_a

    .line 264
    :goto_9
    return-void

    .line 252
    :cond_a
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardLanguage()I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mLanguageBackup:I

    .line 255
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$300(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mInputModeBackup:I

    .line 257
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mLanguageBackup:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    .line 258
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    .line 259
    iget-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShiftLocked:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsShifted:Z

    .line 261
    :cond_36
    iput-boolean v1, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mIsValid:Z

    .line 263
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->this$0:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->access$400(Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->mOneHandModeBackup:I

    goto :goto_9

    .line 259
    :cond_41
    const/4 v0, 0x0

    goto :goto_34
.end method
