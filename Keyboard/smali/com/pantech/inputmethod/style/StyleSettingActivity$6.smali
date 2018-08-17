.class Lcom/pantech/inputmethod/style/StyleSettingActivity$6;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;->createCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 2

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$6;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1595
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1596
    return-void
.end method
