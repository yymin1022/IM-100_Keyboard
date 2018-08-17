.class public Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;
.super Ljava/lang/Object;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# static fields
.field private static final KEYWIDTH_FILL_BOTH:I = -0x2

.field private static final KEYWIDTH_FILL_RIGHT:I = -0x1

.field private static final KEYWIDTH_NOT_ENUM:I


# instance fields
.field private mCurrentX:F

.field private final mCurrentY:I

.field public final mDefaultKeyWidth:F

.field private final mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

.field public final mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/pantech/inputmethod/keyboard/Keyboard$Params;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/SharedPreferences;)V
    .registers 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "params"    # Lcom/pantech/inputmethod/keyboard/Keyboard$Params;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "y"    # I
    .param p5, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/16 v5, 0x8

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    .line 181
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 185
    .local v1, "keyboardAttr":Landroid/content/res/TypedArray;
    iget v3, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHeightIndex:I

    invoke-static {v1, v3, p1}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getRowHeight(Landroid/content/res/TypedArray;ILandroid/content/res/Resources;)I

    move-result v2

    .line 186
    .local v2, "rowHeight":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_64

    .line 191
    iget-object v3, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v3}, Lcom/pantech/inputmethod/keyboard/KeyboardId;->isNumberPhoneKeyboard()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 192
    iget v3, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseHeight:I

    iget v4, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultRowHeight:I

    int-to-float v4, v4

    invoke-static {v1, v5, v3, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    .line 203
    :goto_2e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/pantech/inputmethod/skyime/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "keyAttr":Landroid/content/res/TypedArray;
    const/16 v3, 0x15

    iget v4, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    iget v5, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultKeyWidth:I

    int-to-float v5, v5

    invoke-static {v0, v3, v4, v5}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mDefaultKeyWidth:F

    .line 208
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    iput p4, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentY:I

    .line 211
    const/4 v3, 0x0

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 212
    return-void

    .line 195
    .end local v0    # "keyAttr":Landroid/content/res/TypedArray;
    :cond_51
    iget v3, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseHeight:I

    iget v4, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mDefaultRowHeight:I

    int-to-float v4, v4

    invoke-static {v1, v5, v3, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-static {p1, v3, p5, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->access$000(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    goto :goto_2e

    .line 200
    :cond_64
    iget-object v3, p2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mId:Lcom/pantech/inputmethod/keyboard/KeyboardId;

    invoke-static {p1, v2, p5, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->access$000(Landroid/content/res/Resources;ILandroid/content/SharedPreferences;Lcom/pantech/inputmethod/keyboard/KeyboardId;)I

    move-result v3

    iput v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    goto :goto_2e
.end method


# virtual methods
.method public advanceXPos(F)V
    .registers 3
    .param p1, "width"    # F

    .prologue
    .line 219
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 220
    return-void
.end method

.method public getKeyWidth(Landroid/content/res/TypedArray;F)F
    .registers 8
    .param p1, "keyAttr"    # Landroid/content/res/TypedArray;
    .param p2, "keyXPos"    # F

    .prologue
    const/16 v4, 0x15

    .line 254
    const/4 v2, 0x0

    invoke-static {p1, v4, v2}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 256
    .local v1, "widthType":I
    packed-switch v1, :pswitch_data_22

    .line 268
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    iget v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mDefaultKeyWidth:F

    invoke-static {p1, v4, v2, v3}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v2

    :goto_14
    return v2

    .line 259
    :pswitch_15
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v2, v2, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v3, v3, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    sub-int v0, v2, v3

    .line 266
    .local v0, "keyboardRightEdge":I
    int-to-float v2, v0

    sub-float/2addr v2, p2

    goto :goto_14

    .line 256
    :pswitch_data_22
    .packed-switch -0x2
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public getKeyX(Landroid/content/res/TypedArray;)F
    .registers 9
    .param p1, "keyAttr"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x0

    .line 227
    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getEnumValue(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 229
    .local v2, "widthType":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_10

    .line 232
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 250
    :goto_f
    return v3

    .line 235
    :cond_10
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v3, v3, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mOccupiedWidth:I

    iget-object v4, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v4, v4, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    sub-int v1, v3, v4

    .line 236
    .local v1, "keyboardRightEdge":I
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 237
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v3, v3, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mBaseWidth:I

    invoke-static {p1, v6, v3, v5}, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    .line 239
    .local v0, "keyXPos":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_35

    .line 245
    int-to-float v3, v1

    add-float/2addr v3, v0

    iget v4, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_f

    .line 247
    :cond_35
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mParams:Lcom/pantech/inputmethod/keyboard/Keyboard$Params;

    iget v3, v3, Lcom/pantech/inputmethod/keyboard/Keyboard$Params;->mHorizontalEdgesPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    goto :goto_f

    .line 250
    .end local v0    # "keyXPos":F
    :cond_3c
    iget v3, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    goto :goto_f
.end method

.method public getKeyY()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentY:I

    return v0
.end method

.method public setXPos(F)V
    .registers 2
    .param p1, "keyXPos"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/pantech/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mCurrentX:F

    .line 216
    return-void
.end method
