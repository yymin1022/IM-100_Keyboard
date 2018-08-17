.class Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonEnableThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 250
    return-void
.end method
