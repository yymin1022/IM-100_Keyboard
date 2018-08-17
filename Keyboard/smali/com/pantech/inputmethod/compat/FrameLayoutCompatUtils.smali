.class public Lcom/pantech/inputmethod/compat/FrameLayoutCompatUtils;
.super Ljava/lang/Object;
.source "FrameLayoutCompatUtils.java"


# static fields
.field private static final NEEDS_FRAME_LAYOUT_HACK:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/pantech/inputmethod/compat/FrameLayoutCompatUtils;->NEEDS_FRAME_LAYOUT_HACK:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlacer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3
    .param p0, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    sget-boolean v1, Lcom/pantech/inputmethod/compat/FrameLayoutCompatUtils;->NEEDS_FRAME_LAYOUT_HACK:Z

    if-eqz v1, :cond_11

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "placer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    .end local v0    # "placer":Landroid/view/ViewGroup;
    :goto_10
    return-object v0

    :cond_11
    move-object v0, p0

    goto :goto_10
.end method

.method public static newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 6
    .param p0, "placer"    # Landroid/view/ViewGroup;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    :goto_9
    return-object v0

    .line 44
    :cond_a
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_14

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_9

    .line 46
    :cond_14
    if-nez p0, :cond_1e

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "placer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placer is neither FrameLayout nor RelativeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static placeViewAt(Landroid/view/View;IIII)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_13

    move-object v1, v0

    .line 57
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 59
    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    invoke-virtual {v1, p1, p2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 62
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_13
    return-void
.end method
