.class public Lcom/pantech/inputmethod/style/KeyDrawableInfo;
.super Ljava/lang/Object;
.source "KeyDrawableInfo.java"


# instance fields
.field mCorner_radius:D

.field mGap:D

.field mNormal:I

.field mOutline:I

.field mOutline_thick:D

.field mPressed:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorner_radius()D
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mCorner_radius:D

    return-wide v0
.end method

.method public getGap()D
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mGap:D

    return-wide v0
.end method

.method public getNormal()I
    .registers 2

    .prologue
    .line 12
    iget v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mNormal:I

    return v0
.end method

.method public getOutline()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline:I

    return v0
.end method

.method public getOutline_thick()D
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mOutline_thick:D

    return-wide v0
.end method

.method public getPressed()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/pantech/inputmethod/style/KeyDrawableInfo;->mPressed:I

    return v0
.end method
