.class public final Lcom/pantech/inputmethod/skyime/CoordinateUtils;
.super Ljava/lang/Object;
.source "CoordinateUtils.java"


# static fields
.field private static final ARRAY_SIZE:I = 0x2

.field private static final INDEX_X:I = 0x0

.field private static final INDEX_Y:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static copy([I[I)V
    .registers 5
    .param p0, "destination"    # [I
    .param p1, "source"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    aget v0, p1, v1

    aput v0, p0, v1

    .line 47
    aget v0, p1, v2

    aput v0, p0, v2

    .line 48
    return-void
.end method

.method public static newInstance()[I
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    return-object v0
.end method

.method public static set([III)V
    .registers 4
    .param p0, "coords"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 42
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 43
    return-void
.end method

.method public static x([I)I
    .registers 2
    .param p0, "coords"    # [I

    .prologue
    .line 33
    const/4 v0, 0x0

    aget v0, p0, v0

    return v0
.end method

.method public static y([I)I
    .registers 2
    .param p0, "coords"    # [I

    .prologue
    .line 37
    const/4 v0, 0x1

    aget v0, p0, v0

    return v0
.end method
