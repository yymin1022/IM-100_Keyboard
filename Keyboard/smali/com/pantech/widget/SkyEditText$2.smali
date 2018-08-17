.class Lcom/pantech/widget/SkyEditText$2;
.super Ljava/lang/Object;
.source "SkyEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/widget/SkyEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyEditText;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyEditText;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyEditText;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/pantech/widget/SkyEditText$2;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText$2;->this$0:Lcom/pantech/widget/SkyEditText;

    invoke-static {v0}, Lcom/pantech/widget/SkyEditText;->-wrap2(Lcom/pantech/widget/SkyEditText;)V

    .line 162
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText$2;->this$0:Lcom/pantech/widget/SkyEditText;

    iget-object v0, v0, Lcom/pantech/widget/SkyEditText;->mBtDelete:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/pantech/widget/SkyEditText$2;->this$0:Lcom/pantech/widget/SkyEditText;

    iget-object v0, v0, Lcom/pantech/widget/SkyEditText;->mBtUndo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    return-void
.end method
