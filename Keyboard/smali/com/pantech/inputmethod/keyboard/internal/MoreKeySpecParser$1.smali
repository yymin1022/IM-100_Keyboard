.class final Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser$1;
.super Ljava/lang/Object;
.source "MoreKeySpecParser.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/internal/MoreKeySpecParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method
