.class Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$1;
.super Ljava/lang/Object;
.source "CustomPopupSettingActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2$1;->this$1:Lcom/pantech/inputmethod/skyime/CustomPopupSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 233
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_13

    .line 234
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 235
    const-string v1, ""

    .line 238
    :goto_f
    return-object v1

    .line 233
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method
