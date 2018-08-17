.class Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictPackSettings"
.end annotation


# instance fields
.field final mDictPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    .line 200
    .local v0, "dictPackContext":Landroid/content/Context;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    .line 203
    return-void

    .line 200
    :cond_a
    const-string v1, "LatinImeDictPrefs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_7
.end method


# virtual methods
.method public isWordListActive(Ljava/lang/String;)Z
    .registers 4
    .param p1, "dictId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_6

    .line 217
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/BinaryDictionaryGetter$DictPackSettings;->mDictPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_5
.end method
