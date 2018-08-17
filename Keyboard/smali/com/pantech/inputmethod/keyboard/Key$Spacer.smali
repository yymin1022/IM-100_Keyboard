.class public Lcom/pantech/inputmethod/keyboard/Key$Spacer;
.super Lcom/pantech/inputmethod/keyboard/Key;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spacer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p3, "row"    # Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "keyStyles"    # Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;

    .prologue
    .line 774
    invoke-direct/range {p0 .. p5}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/pantech/inputmethod/keyboard/internal/KeyStyles;)V

    .line 775
    return-void
.end method

.method public constructor <init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 19
    .param p1, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 781
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/pantech/inputmethod/keyboard/Key;-><init>(Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIIILjava/lang/String;)V

    .line 782
    return-void
.end method


# virtual methods
.method public isSpacer()Z
    .registers 2

    .prologue
    .line 786
    const/4 v0, 0x1

    return v0
.end method
