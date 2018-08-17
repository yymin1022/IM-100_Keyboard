.class Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$2;
.super Ljava/lang/Object;
.source "EngKeyboardTypePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/EngKeyboardTypePreference;->finish()V

    .line 149
    return-void
.end method
