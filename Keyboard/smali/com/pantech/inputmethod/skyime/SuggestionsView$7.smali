.class Lcom/pantech/inputmethod/skyime/SuggestionsView$7;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SuggestionsView;)V
    .registers 2

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SuggestionsView$7;->this$0:Lcom/pantech/inputmethod/skyime/SuggestionsView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "me"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 1103
    const/4 v0, 0x0

    return v0
.end method
