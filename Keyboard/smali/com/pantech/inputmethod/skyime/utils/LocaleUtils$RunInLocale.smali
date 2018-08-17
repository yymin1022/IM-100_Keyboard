.class public abstract Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunInLocale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 166
    .local p0, "this":Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;, "Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")TT;"
        }
    .end annotation
.end method

.method public runInLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "newLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;, "Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale<TT;>;"
    sget-object v3, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils;->sLockForRunInLocale:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 179
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3b

    .line 181
    .local v1, "oldLocale":Ljava/util/Locale;
    if-eqz p2, :cond_17

    :try_start_b
    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 182
    iput-object p2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 183
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 185
    :cond_17
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;->job(Landroid/content/res/Resources;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_2b

    move-result-object v2

    .line 187
    if-eqz p2, :cond_29

    :try_start_1d
    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 188
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 189
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_29
    monitor-exit v3

    return-object v2

    .line 187
    :catchall_2b
    move-exception v2

    if-eqz p2, :cond_3a

    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 188
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 189
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3a
    throw v2

    .line 192
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    throw v2
.end method
