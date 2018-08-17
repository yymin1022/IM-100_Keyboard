.class public Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;
.super Ljava/lang/Object;
.source "SkyEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomUndoTextWathcer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyEditText;


# direct methods
.method public constructor <init>(Lcom/pantech/widget/SkyEditText;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyEditText;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;->this$0:Lcom/pantech/widget/SkyEditText;

    iput-object p1, v0, Lcom/pantech/widget/SkyEditText;->mText:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText$CustomUndoTextWathcer;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-static {v0}, Lcom/pantech/widget/SkyEditText;->-wrap1(Lcom/pantech/widget/SkyEditText;)V

    .line 281
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 295
    return-void
.end method
