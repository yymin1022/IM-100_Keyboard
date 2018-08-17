.class Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;
.super Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;
.source "WhitelistDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/inputmethod/skyime/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/WhitelistDictionary;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;->this$0:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/utils/LocaleUtils$RunInLocale;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;->job(Landroid/content/res/Resources;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected job(Landroid/content/res/Resources;)Ljava/lang/Void;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/WhitelistDictionary$1;->this$0:Lcom/pantech/inputmethod/skyime/WhitelistDictionary;

    const v1, 0x7f0b0028

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/skyime/WhitelistDictionary;->access$000(Lcom/pantech/inputmethod/skyime/WhitelistDictionary;[Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
