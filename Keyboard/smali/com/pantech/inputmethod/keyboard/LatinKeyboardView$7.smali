.class Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$7;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$7;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView$7;->this$0:Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v0}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->access$1200(Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;)Z

    move-result v0

    return v0
.end method
