.class public Lcom/pantech/inputmethod/skyime/WordListInfo;
.super Ljava/lang/Object;
.source "WordListInfo.java"


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/WordListInfo;->mId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/pantech/inputmethod/skyime/WordListInfo;->mLocale:Ljava/lang/String;

    .line 28
    return-void
.end method
