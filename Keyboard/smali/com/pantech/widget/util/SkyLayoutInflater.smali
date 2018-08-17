.class public final Lcom/pantech/widget/util/SkyLayoutInflater;
.super Ljava/lang/Object;
.source "SkyLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/util/SkyLayoutInflater$SkyLayoutInflaterFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_GROUP:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SkyLayoutInflater"

.field private static smContext:Landroid/content/Context;

.field private static smLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    .line 37
    sput-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t create instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearAll()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    .line 139
    sput-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method public static inflate(Landroid/content/res/XmlResourceParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    sget-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/content/res/XmlResourceParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 123
    sget-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 128
    sget-object v0, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 6
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v2, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 108
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sput-object p0, Lcom/pantech/widget/util/SkyLayoutInflater;->smContext:Landroid/content/Context;

    .line 110
    :try_start_b
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sput-object v2, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    sget-object v2, Lcom/pantech/widget/util/SkyLayoutInflater;->smLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v3, Lcom/pantech/widget/util/SkyLayoutInflater$SkyLayoutInflaterFactory;

    invoke-direct {v3}, Lcom/pantech/widget/util/SkyLayoutInflater$SkyLayoutInflaterFactory;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1d

    .line 115
    :goto_1b
    const/4 v1, 0x0

    .line 102
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    return-void

    .line 112
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    :catch_1d
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SkyLayoutInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SkyLayoutInflaterFactory.init() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 134
    const-string/jumbo v0, "SkyLayoutInflater"

    const-string/jumbo v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
