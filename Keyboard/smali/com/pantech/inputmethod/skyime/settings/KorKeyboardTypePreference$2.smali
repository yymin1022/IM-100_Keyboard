.class Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$2;
.super Ljava/lang/Object;
.source "KorKeyboardTypePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference$2;->this$0:Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/KorKeyboardTypePreference;->finish()V

    .line 165
    return-void
.end method
