.class public interface abstract Lcom/pantech/inputmethod/keyboard/PointerTracker$DrawingProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/pantech/inputmethod/keyboard/MoreKeysPanel$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawingProxy"
.end annotation


# virtual methods
.method public abstract cancelShowKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract dismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract dismissKeyPreview(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V
.end method

.method public abstract inflateKeyPreviewText()Landroid/widget/TextView;
.end method

.method public abstract invalidateKey(Lcom/pantech/inputmethod/keyboard/Key;)V
.end method

.method public abstract showKeyPreview(IZLcom/pantech/inputmethod/keyboard/PointerTracker;)V
.end method
