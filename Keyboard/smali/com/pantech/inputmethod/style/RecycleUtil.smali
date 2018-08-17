.class public Lcom/pantech/inputmethod/style/RecycleUtil;
.super Ljava/lang/Object;
.source "RecycleUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .registers 6
    .param p0, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 43
    if-nez p0, :cond_4

    .line 63
    :goto_3
    return-void

    .line 45
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    move-object v1, p0

    .line 48
    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 50
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_1f

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 54
    :cond_1f
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_26

    .line 55
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_26
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_2f

    .line 60
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "root":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_2f
    const/4 p0, 0x0

    .line 63
    .restart local p0    # "root":Landroid/view/View;
    goto :goto_3
.end method
