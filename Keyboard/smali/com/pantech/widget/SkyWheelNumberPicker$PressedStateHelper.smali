.class Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "SkyWheelNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2170
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2171
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->MODE_TAPPED:I

    .line 2166
    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 6
    .param p1, "button"    # I

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->cancel()V

    .line 2205
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mMode:I

    .line 2206
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2207
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2203
    return-void
.end method

.method public buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .prologue
    .line 2211
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->cancel()V

    .line 2212
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mMode:I

    .line 2213
    iput p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2214
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2210
    return-void
.end method

.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2177
    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mMode:I

    .line 2178
    iput v4, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2179
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p0}, Lcom/pantech/widget/SkyWheelNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2180
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get4(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2181
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2183
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get8(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    .line 2192
    :goto_28
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get2(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2194
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set0(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2197
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get1(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    .line 2176
    :goto_4c
    return-void

    .line 2185
    :cond_4d
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    goto :goto_28

    .line 2199
    :cond_53
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate()V

    goto :goto_4c
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2219
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_ac

    .line 2218
    :goto_7
    return-void

    .line 2221
    :pswitch_8
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_b4

    goto :goto_7

    .line 2223
    :pswitch_e
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2224
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get1(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2227
    :pswitch_2b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set0(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2228
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get8(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2233
    :pswitch_42
    iget v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_bc

    goto :goto_7

    .line 2235
    :pswitch_48
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get4(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2236
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 2237
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2236
    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2239
    :cond_5a
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get4(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set1(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2241
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get8(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2244
    :pswitch_76
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get2(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 2245
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 2246
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2245
    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2248
    :cond_88
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get2(Lcom/pantech/widget/SkyWheelNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-set0(Lcom/pantech/widget/SkyWheelNumberPicker;Z)Z

    .line 2250
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get1(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->invalidate(IIII)V

    goto/16 :goto_7

    .line 2219
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_8
        :pswitch_42
    .end packed-switch

    .line 2221
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch

    .line 2233
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_48
        :pswitch_76
    .end packed-switch
.end method
