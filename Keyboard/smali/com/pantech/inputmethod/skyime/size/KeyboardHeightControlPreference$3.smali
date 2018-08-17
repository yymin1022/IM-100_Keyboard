.class Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;
.super Ljava/lang/Object;
.source "KeyboardHeightControlPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentKeyboardHeight:I

.field max:I

.field min:I

.field offsetY:I

.field orgY:I

.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)V
    .registers 4

    .prologue
    .line 161
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$400(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$500(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->min:I

    .line 167
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$600(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$500(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->max:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_ec

    .line 210
    :cond_9
    :goto_9
    return v5

    .line 172
    :pswitch_a
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlStrip:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->orgY:I

    goto :goto_9

    .line 176
    :pswitch_19
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlStrip:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 177
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->orgY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->offsetY:I

    .line 178
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->offsetY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    .line 179
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->min:I

    if-ge v1, v2, :cond_78

    .line 180
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->min:I

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    .line 184
    :cond_45
    :goto_45
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$500(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v2

    div-int v0, v1, v2

    .line 185
    .local v0, "yRatio":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$200(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v3}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v4}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$000(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_9

    .line 181
    .end local v0    # "yRatio":I
    :cond_78
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->max:I

    if-le v1, v2, :cond_45

    .line 182
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->max:I

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    goto :goto_45

    .line 189
    :pswitch_83
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mHeightControlStrip:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 190
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->orgY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->offsetY:I

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->orgY:I

    if-eq v1, v2, :cond_9

    .line 192
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    iget-object v1, v1, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->mKeyboardSwitcher:Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->offsetY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    .line 193
    iget v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->currentKeyboardHeight:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v2}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$500(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v2

    div-int v0, v1, v2

    .line 194
    .restart local v0    # "yRatio":I
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$400(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v1

    if-ge v0, v1, :cond_dd

    .line 195
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$400(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v0

    .line 199
    :cond_c8
    :goto_c8
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1, v0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$700(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;I)V

    .line 200
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$300(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3$1;-><init>(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 196
    :cond_dd
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$600(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v1

    if-le v0, v1, :cond_c8

    .line 197
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference$3;->this$0:Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;

    invoke-static {v1}, Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;->access$600(Lcom/pantech/inputmethod/skyime/size/KeyboardHeightControlPreference;)I

    move-result v0

    goto :goto_c8

    .line 170
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_a
        :pswitch_83
        :pswitch_19
    .end packed-switch
.end method
