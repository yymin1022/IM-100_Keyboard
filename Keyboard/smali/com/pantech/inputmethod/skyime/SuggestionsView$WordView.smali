.class Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;
.super Ljava/lang/Object;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordView"
.end annotation


# instance fields
.field public color:I

.field public position:I

.field public view:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/inputmethod/skyime/SuggestionsView$1;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/SuggestionsView$WordView;-><init>()V

    return-void
.end method
