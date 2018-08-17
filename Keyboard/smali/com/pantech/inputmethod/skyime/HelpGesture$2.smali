.class Lcom/pantech/inputmethod/skyime/HelpGesture$2;
.super Ljava/lang/Object;
.source "HelpGesture.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/HelpGesture;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/HelpGesture;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/HelpGesture$2;->this$0:Lcom/pantech/inputmethod/skyime/HelpGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 121
    return-void
.end method
