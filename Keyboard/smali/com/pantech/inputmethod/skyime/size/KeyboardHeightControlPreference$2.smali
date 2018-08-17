.class Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$2;
.super Ljava/lang/Object;
.source "KeyboardHeightControlPreference.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$2;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 152
    packed-switch p2, :pswitch_data_c

    .line 157
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 154
    :pswitch_5
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$2;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->finish()V

    goto :goto_3

    .line 152
    nop

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method
