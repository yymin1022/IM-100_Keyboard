.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextHtmlStandard"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method private constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .registers 2

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/ex/editstyledtext/EditStyledText;
    .param p2, "x1"    # Lcom/android/ex/editstyledtext/EditStyledText$1;

    .prologue
    .line 1844
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 1858
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 1862
    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 1846
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;Z)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "escapeNonAsciiChar"    # Z

    .prologue
    .line 1850
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;ZIF)Ljava/lang/String;
    .registers 6
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "escapeNonAsciiChar"    # Z
    .param p3, "width"    # I
    .param p4, "scale"    # F

    .prologue
    .line 1854
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
