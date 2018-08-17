.class public abstract Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;
.super Ljava/lang/Object;
.source "AbstractCompatWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_5

    .line 28
    :cond_5
    iput-object p1, p0, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getOriginalObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public hasOriginalObject()Z
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/inputmethod/compat/AbstractCompatWrapper;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
