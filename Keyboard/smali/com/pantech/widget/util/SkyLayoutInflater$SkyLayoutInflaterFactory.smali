.class public final Lcom/pantech/widget/util/SkyLayoutInflater$SkyLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "SkyLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/util/SkyLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SkyLayoutInflaterFactory"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const-string/jumbo v1, "SkyLayoutInflater"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v1, "ImageView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    :goto_18
    return-object v0

    .line 68
    :cond_19
    const-string/jumbo v1, "View"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 69
    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v0, "retView":Landroid/view/View;
    goto :goto_18

    .line 70
    .end local v0    # "retView":Landroid/view/View;
    :cond_2c
    const-string/jumbo v1, "LinearLayout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3f

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto :goto_18

    .line 72
    .end local v0    # "retView":Landroid/view/View;
    :cond_3f
    const-string/jumbo v1, "RelativeLayout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_52

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto :goto_18

    .line 74
    .end local v0    # "retView":Landroid/view/View;
    :cond_52
    const-string/jumbo v1, "FrameLayout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_65

    .line 75
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto :goto_18

    .line 76
    .end local v0    # "retView":Landroid/view/View;
    :cond_65
    const-string/jumbo v1, "ImageButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_78

    .line 77
    new-instance v0, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto :goto_18

    .line 78
    .end local v0    # "retView":Landroid/view/View;
    :cond_78
    const-string/jumbo v1, "com.pantech.widget.SkyWheelDatePicker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8b

    .line 79
    new-instance v0, Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/pantech/widget/SkyWheelDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto :goto_18

    .line 80
    .end local v0    # "retView":Landroid/view/View;
    :cond_8b
    const-string/jumbo v1, "com.pantech.widget.SkyWheelTimePicker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9f

    .line 81
    new-instance v0, Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/pantech/widget/SkyWheelTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto/16 :goto_18

    .line 82
    .end local v0    # "retView":Landroid/view/View;
    :cond_9f
    const-string/jumbo v1, "com.pantech.widget.SkyWheelNumberPicker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b3

    .line 83
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/pantech/widget/SkyWheelNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto/16 :goto_18

    .line 84
    .end local v0    # "retView":Landroid/view/View;
    :cond_b3
    const-string/jumbo v1, "com.pantech.widget.SkyWheelNumberPicker$CustomEditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c7

    .line 85
    new-instance v0, Lcom/pantech/widget/SkyWheelNumberPicker$CustomEditText;

    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/pantech/widget/SkyWheelNumberPicker$CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "retView":Landroid/view/View;
    goto/16 :goto_18

    .line 87
    .end local v0    # "retView":Landroid/view/View;
    :cond_c7
    const-string/jumbo v1, "SkyLayoutInflater"

    const-string/jumbo v2, "unknow class name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .local v0, "retView":Landroid/view/View;
    goto/16 :goto_18
.end method
