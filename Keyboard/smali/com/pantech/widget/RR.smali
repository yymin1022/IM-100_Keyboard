.class public final Lcom/pantech/widget/RR;
.super Ljava/lang/Object;
.source "RR.java"


# static fields
.field private static final DEBUG_GROUP:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "RR"

.field private static final PACKAGENAME:Ljava/lang/String; = "com.pantech.res"

.field public static final TYPE_BLACK:I = 0x2

.field public static final TYPE_BLACK_DIALOG:I = 0x3

.field public static final TYPE_MATERIAL_WHITE:I = 0x4

.field public static final TYPE_WHITE:I = 0x1

.field static bmp:Landroid/graphics/Bitmap;

.field static m:Landroid/graphics/Matrix;

.field public static mIsItDevice:Ljava/lang/Boolean;

.field private static mThemeType:I

.field static opt:Landroid/graphics/BitmapFactory$Options;

.field private static smActivity:Landroid/content/Context;

.field private static smMetrics:Landroid/util/DisplayMetrics;

.field private static smResContext:Landroid/content/Context;

.field private static smResources:Landroid/content/res/Resources;

.field static uContext:Landroid/content/ContextWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sput-object v1, Lcom/pantech/widget/RR;->smActivity:Landroid/content/Context;

    .line 45
    sput-object v1, Lcom/pantech/widget/RR;->smResContext:Landroid/content/Context;

    .line 49
    sput-object v1, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    .line 53
    sput-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/pantech/widget/RR;->mIsItDevice:Ljava/lang/Boolean;

    .line 66
    const/4 v0, 0x4

    sput v0, Lcom/pantech/widget/RR;->mThemeType:I

    .line 72
    sput-object v1, Lcom/pantech/widget/RR;->bmp:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t create instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Dp2Px(F)I
    .registers 4
    .param p0, "value"    # F

    .prologue
    .line 308
    move v0, p0

    .line 310
    .local v0, "fRet":F
    sget-object v1, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v1, :cond_e

    .line 311
    const-string/jumbo v1, "RR"

    const-string/jumbo v2, "Must call RR.Init() first !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_e
    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_27

    .line 315
    :cond_25
    float-to-int v1, v0

    return v1

    .line 317
    :cond_27
    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 318
    float-to-int v1, v0

    return v1
.end method

.method public static GetResContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Lcom/pantech/widget/RR;->smResContext:Landroid/content/Context;

    return-object v0
.end method

.method public static Init(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 87
    sget-object v5, Lcom/pantech/widget/RR;->smResContext:Landroid/content/Context;

    if-nez v5, :cond_6a

    .line 88
    sput-object v6, Lcom/pantech/widget/RR;->uContext:Landroid/content/ContextWrapper;

    .line 89
    new-instance v5, Landroid/content/ContextWrapper;

    invoke-direct {v5, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/pantech/widget/RR;->uContext:Landroid/content/ContextWrapper;

    .line 90
    sput-object p0, Lcom/pantech/widget/RR;->smActivity:Landroid/content/Context;

    .line 92
    sput-object v6, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    .line 93
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v5, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    .line 94
    sget-object v5, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 100
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 102
    .local v0, "dpi":I
    if-ge v2, v4, :cond_44

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "temp":I
    move v3, v2

    .line 105
    move v2, v4

    .line 106
    move v4, v3

    .line 109
    .end local v3    # "temp":I
    :cond_44
    const/16 v5, 0x320

    if-ne v2, v5, :cond_6f

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_6f

    const/16 v5, 0xa0

    if-ne v0, v5, :cond_6f

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/pantech/widget/RR;->mIsItDevice:Ljava/lang/Boolean;

    .line 113
    :goto_56
    :try_start_56
    sget-object v5, Lcom/pantech/widget/RR;->uContext:Landroid/content/ContextWrapper;

    const-string/jumbo v6, "com.pantech.res"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/pantech/widget/RR;->smResContext:Landroid/content/Context;

    .line 114
    sget-object v5, Lcom/pantech/widget/RR;->smResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sput-object v5, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_6a} :catch_76

    .line 121
    .end local v0    # "dpi":I
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_6a
    :goto_6a
    sget-object v5, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v5, :cond_99

    .line 122
    return v8

    .line 110
    .restart local v0    # "dpi":I
    .restart local v2    # "height":I
    .restart local v4    # "width":I
    :cond_6f
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/pantech/widget/RR;->mIsItDevice:Ljava/lang/Boolean;

    goto :goto_56

    .line 115
    :catch_76
    move-exception v1

    .line 116
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "RR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can\'t find com.pantech.res : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6a

    .line 123
    .end local v0    # "dpi":I
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_99
    return v9
.end method

.method public static Sp2Px(F)I
    .registers 4
    .param p0, "value"    # F

    .prologue
    .line 325
    move v0, p0

    .line 327
    .local v0, "fRet":F
    sget-object v1, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v1, :cond_e

    .line 328
    const-string/jumbo v1, "RR"

    const-string/jumbo v2, "Must call RR.Init() first !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_e
    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_27

    .line 332
    :cond_25
    float-to-int v1, v0

    return v1

    .line 334
    :cond_27
    sget-object v1, Lcom/pantech/widget/RR;->smMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    .line 335
    float-to-int v1, v0

    return v1
.end method

.method public static getBitmapImage(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 173
    sget-object v1, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v1, :cond_e

    .line 174
    const-string/jumbo v1, "RR"

    const-string/jumbo v2, "Must call RR.Init() first !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_e
    sput-object v3, Lcom/pantech/widget/RR;->bmp:Landroid/graphics/Bitmap;

    .line 185
    :try_start_10
    sget-object v1, Lcom/pantech/widget/RR;->opt:Landroid/graphics/BitmapFactory$Options;

    if-nez v1, :cond_1b

    .line 186
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v1, Lcom/pantech/widget/RR;->opt:Landroid/graphics/BitmapFactory$Options;

    .line 187
    :cond_1b
    sget-object v1, Lcom/pantech/widget/RR;->opt:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 188
    sget-object v1, Lcom/pantech/widget/RR;->opt:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 191
    sget-object v1, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/pantech/widget/RR;->opt:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/pantech/widget/RR;->bmp:Landroid/graphics/Bitmap;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_32

    .line 195
    :goto_2f
    sget-object v1, Lcom/pantech/widget/RR;->bmp:Landroid/graphics/Bitmap;

    return-object v1

    .line 192
    :catch_32
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RR getBitmapImage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static getColor(I)I
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 228
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_b

    .line 230
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 233
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getColorList(I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "resid"    # I

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 243
    .local v2, "ret":Landroid/content/res/ColorStateList;
    sget-object v3, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v3, :cond_f

    .line 244
    const-string/jumbo v3, "RR"

    const-string/jumbo v4, "Must call RR.Init() first !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_f
    :try_start_f
    sget-object v3, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_1f

    .line 249
    sget-object v3, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 250
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-static {v3, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_20

    move-result-object v2

    .line 257
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ret":Landroid/content/res/ColorStateList;
    :cond_1f
    :goto_1f
    return-object v2

    .line 252
    .restart local v2    # "ret":Landroid/content/res/ColorStateList;
    :catch_20
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t load color list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public static getDimension(I)I
    .registers 3
    .param p0, "resid"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v0, :cond_f

    .line 139
    const-string/jumbo v0, "RR"

    const-string/jumbo v1, "Must call RR.Init() first !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, -0x1

    return v0

    .line 142
    :cond_f
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "resid"    # I

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v0, :cond_f

    .line 153
    const-string/jumbo v0, "RR"

    const-string/jumbo v1, "Must call RR.Init() first !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v2

    .line 156
    :cond_f
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableImage(I)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "resid"    # I

    .prologue
    .line 165
    invoke-static {p0}, Lcom/pantech/widget/RR;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFont()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 215
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v0, :cond_d

    .line 216
    const-string/jumbo v0, "RR"

    const-string/jumbo v1, "Must call RR.Init() first !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_d
    sget-object v0, Lcom/pantech/widget/RR;->smActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "kwangsu.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getMMVersion()Z
    .registers 2

    .prologue
    .line 355
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "sdkVersion":I
    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static getText(I)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "resid"    # I

    .prologue
    const/4 v2, 0x0

    .line 203
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    if-nez v0, :cond_f

    .line 204
    const-string/jumbo v0, "RR"

    const-string/jumbo v1, "Must call RR.Init() first !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-object v2

    .line 207
    :cond_f
    sget-object v0, Lcom/pantech/widget/RR;->smResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTheme()I
    .registers 1

    .prologue
    .line 291
    sget v0, Lcom/pantech/widget/RR;->mThemeType:I

    return v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v7, p1, v0

    .line 345
    .local v7, "sx":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, p2, v0

    .line 346
    .local v8, "sy":F
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/widget/RR;->m:Landroid/graphics/Matrix;

    .line 347
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/pantech/widget/RR;->m:Landroid/graphics/Matrix;

    .line 348
    sget-object v0, Lcom/pantech/widget/RR;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lcom/pantech/widget/RR;->m:Landroid/graphics/Matrix;

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setTheme(I)V
    .registers 1
    .param p0, "theme"    # I

    .prologue
    .line 287
    sput p0, Lcom/pantech/widget/RR;->mThemeType:I

    .line 286
    return-void
.end method
