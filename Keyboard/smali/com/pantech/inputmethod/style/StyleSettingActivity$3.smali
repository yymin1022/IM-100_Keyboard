.class Lcom/pantech/inputmethod/style/StyleSettingActivity$3;
.super Ljava/lang/Object;
.source "StyleSettingActivity.java"

# interfaces
.implements Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/style/StyleSettingActivity;->initETCButton()V
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
    .line 1065
    iput-object p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChangedTouch(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;

    move-result-object v0

    if-ne p1, v0, :cond_14

    .line 1079
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0, p2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$802(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I

    .line 1088
    :goto_d
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$300(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V

    .line 1089
    return-void

    .line 1080
    :cond_14
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2600(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;

    move-result-object v0

    if-ne p1, v0, :cond_22

    .line 1081
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0, p2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$902(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I

    goto :goto_d

    .line 1082
    :cond_22
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$2700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;

    move-result-object v0

    if-ne p1, v0, :cond_30

    .line 1083
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;->this$0:Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-static {v0, p2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->access$1002(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I

    goto :goto_d

    .line 1085
    :cond_30
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "what is this seekbar?"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1073
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1069
    return-void
.end method
