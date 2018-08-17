.class Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SkyWheelNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/widget/SkyWheelNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/widget/SkyWheelNumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pantech/widget/SkyWheelNumberPicker;

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 2101
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v7}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get3(Lcom/pantech/widget/SkyWheelNumberPicker;)[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_59

    .line 2102
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2103
    .local v1, "filtered":Ljava/lang/CharSequence;
    if-nez v1, :cond_12

    .line 2104
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2107
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2108
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    move/from16 v0, p6

    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2110
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 2111
    return-object v2

    .line 2113
    :cond_46
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v7, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->-wrap0(Lcom/pantech/widget/SkyWheelNumberPicker;Ljava/lang/String;)I

    move-result v4

    .line 2120
    .local v4, "val":I
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v7}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get7(Lcom/pantech/widget/SkyWheelNumberPicker;)I

    move-result v7

    if-le v4, v7, :cond_58

    .line 2121
    const-string/jumbo v7, ""

    return-object v7

    .line 2123
    :cond_58
    return-object v1

    .line 2126
    .end local v1    # "filtered":Ljava/lang/CharSequence;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "val":I
    :cond_59
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2127
    .restart local v1    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2128
    const-string/jumbo v7, ""

    return-object v7

    .line 2130
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2131
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    move/from16 v0, p6

    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2130
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2132
    .restart local v2    # "result":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2133
    .local v3, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-static {v7}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get3(Lcom/pantech/widget/SkyWheelNumberPicker;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_a5
    if-ge v7, v9, :cond_ce

    aget-object v5, v8, v7

    .line 2134
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2135
    .local v6, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2136
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelNumberPicker$InputTextFilter;->this$0:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->-wrap2(Lcom/pantech/widget/SkyWheelNumberPicker;II)V

    .line 2137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v0, p5

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    return-object v7

    .line 2133
    :cond_cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    .line 2140
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "valLowerCase":Ljava/lang/String;
    :cond_ce
    const-string/jumbo v7, ""

    return-object v7
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 2095
    invoke-static {}, Lcom/pantech/widget/SkyWheelNumberPicker;->-get0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 2090
    const/4 v0, 0x1

    return v0
.end method
