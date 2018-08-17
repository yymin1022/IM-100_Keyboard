.class public final Lcom/pantech/res/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlwaysOnTop:[I

.field public static final AlwaysOnTop_isDisableList:I = 0x0

.field public static final CoverflowAttribute:[I

.field public static final CoverflowAttribute_alphacolor:I = 0x0

.field public static final CoverflowAttribute_bluecolor:I = 0x1

.field public static final CoverflowAttribute_greencolor:I = 0x2

.field public static final CoverflowAttribute_pixelformat:I = 0x3

.field public static final CoverflowAttribute_redcolor:I = 0x4

.field public static final DatePicker:[I

.field public static final DatePicker_calendarViewShown:I = 0x0

.field public static final DatePicker_endYear:I = 0x1

.field public static final DatePicker_internalLayout:I = 0x2

.field public static final DatePicker_maxDate:I = 0x3

.field public static final DatePicker_minDate:I = 0x4

.field public static final DatePicker_spinnersShown:I = 0x5

.field public static final DatePicker_startYear:I = 0x6

.field public static final NumberPicker:[I

.field public static final NumberPicker_arrowMarginTopBottom:I = 0x0

.field public static final NumberPicker_arrowVisible:I = 0x1

.field public static final NumberPicker_inputTextSize:I = 0x2

.field public static final NumberPicker_internalLayout:I = 0x3

.field public static final NumberPicker_internalMaxHeight:I = 0x4

.field public static final NumberPicker_internalMaxWidth:I = 0x5

.field public static final NumberPicker_internalMinHeight:I = 0x6

.field public static final NumberPicker_internalMinWidth:I = 0x7

.field public static final NumberPicker_isNumber:I = 0x8

.field public static final NumberPicker_selectionDivider:I = 0x9

.field public static final NumberPicker_selectionDividerHeight:I = 0xa

.field public static final NumberPicker_selectionDividersDistance:I = 0xb

.field public static final NumberPicker_solidColor:I = 0xc

.field public static final NumberPicker_topDownTextSize:I = 0xd

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0xe

.field public static final SkyDialogStyle:[I

.field public static final SkyDialogStyle_showDivider:I = 0x0

.field public static final SkyDialogStyle_showLevel:I = 0x1

.field public static final SkyDialogStyle_showPopupBox:I = 0x2

.field public static final SkyDialogStyle_title:I = 0x3

.field public static final SkyListView:[I

.field public static final SkyListViewBaseChild:[I

.field public static final SkyListViewBaseChild_backgroundNormal:I = 0x0

.field public static final SkyListViewBaseGroup:[I

.field public static final SkyListViewBaseGroup_colorCheckedBg:I = 0x0

.field public static final SkyListViewBaseGroup_colorDisableBg:I = 0x1

.field public static final SkyListViewBaseGroup_colorNormalBg:I = 0x2

.field public static final SkyListViewBaseGroup_colorSepLine:I = 0x3

.field public static final SkyListViewBaseGroup_colorTouchBg:I = 0x4

.field public static final SkyListViewRearrangeGroup:[I

.field public static final SkyListViewRearrangeGroup_imageDim:I = 0x0

.field public static final SkyListViewRearrangeGroup_imageNormal:I = 0x1

.field public static final SkyListViewRearrangeGroup_imageSelectedMoveBg:I = 0x2

.field public static final SkyListViewRearrangeGroup_imageTouch:I = 0x3

.field public static final SkyListView_backgroundNormalChild:I = 0x0

.field public static final SkyListView_colorGroupSepLine:I = 0x1

.field public static final SkyListView_colorIndexedListSeparatorText:I = 0x2

.field public static final SkyListView_colorNormalGroupBg:I = 0x3

.field public static final SkyListView_colorTouchGroupBg:I = 0x4

.field public static final SkyStaticText:[I

.field public static final SkyStaticText_text:I = 0x0

.field public static final SkyStaticText_textAlignH:I = 0x1

.field public static final SkyStaticText_textAlignV:I = 0x2

.field public static final SkyStaticText_textColorDisable:I = 0x3

.field public static final SkyStaticText_textColorEnable:I = 0x4

.field public static final SkyStaticText_textColorFocus:I = 0x5

.field public static final SkyStaticText_textColorPress:I = 0x6

.field public static final SkyStaticText_textColorSelect:I = 0x7

.field public static final SkyStaticText_textSize:I = 0x8

.field public static final TimePicker:[I

.field public static final TimePicker_internalLayout:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1499
    new-array v0, v6, [I

    .line 1500
    const v1, 0x7f01001c

    aput v1, v0, v5

    .line 1499
    sput-object v0, Lcom/pantech/res/R$styleable;->AlwaysOnTop:[I

    .line 1535
    const/high16 v0, 0x7f010000

    const v1, 0x7f010005

    const v2, 0x7f010011

    const v3, 0x7f010021

    .line 1536
    const v4, 0x7f010022

    .line 1534
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/pantech/res/R$styleable;->CoverflowAttribute:[I

    .line 1633
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/pantech/res/R$styleable;->DatePicker:[I

    .line 1769
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/pantech/res/R$styleable;->NumberPicker:[I

    .line 2006
    const v0, 0x7f010026

    const v1, 0x7f010027

    const v2, 0x7f010028

    const v3, 0x7f010035

    .line 2005
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/pantech/res/R$styleable;->SkyDialogStyle:[I

    .line 2083
    const v0, 0x7f010004

    const v1, 0x7f010009

    const v2, 0x7f01000a

    const v3, 0x7f01000c

    .line 2084
    const v4, 0x7f01000f

    .line 2082
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/pantech/res/R$styleable;->SkyListView:[I

    .line 2168
    new-array v0, v6, [I

    .line 2169
    const v1, 0x7f010003

    aput v1, v0, v5

    .line 2168
    sput-object v0, Lcom/pantech/res/R$styleable;->SkyListViewBaseChild:[I

    .line 2202
    const v0, 0x7f010007

    const v1, 0x7f010008

    const v2, 0x7f01000b

    const v3, 0x7f01000d

    .line 2203
    const v4, 0x7f01000e

    .line 2201
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/pantech/res/R$styleable;->SkyListViewBaseGroup:[I

    .line 2297
    const v0, 0x7f010012

    const v1, 0x7f010013

    const v2, 0x7f010014

    const v3, 0x7f010015

    .line 2296
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/pantech/res/R$styleable;->SkyListViewRearrangeGroup:[I

    .line 2373
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_ce

    sput-object v0, Lcom/pantech/res/R$styleable;->SkyStaticText:[I

    .line 2529
    new-array v0, v6, [I

    .line 2530
    const v1, 0x7f010017

    aput v1, v0, v5

    .line 2529
    sput-object v0, Lcom/pantech/res/R$styleable;->TimePicker:[I

    .line 1482
    return-void

    .line 1633
    :array_9a
    .array-data 4
        0x7f010006
        0x7f010010
        0x7f010017
        0x7f01001e
        0x7f01001f
        0x7f01002a
        0x7f01002b
    .end array-data

    .line 1769
    :array_ac
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001d
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010029
        0x7f010036
        0x7f010037
    .end array-data

    .line 2373
    :array_ce
    .array-data 4
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
        0x7f010034
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
