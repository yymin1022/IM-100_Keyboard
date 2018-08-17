.class public Lcom/pantech/widget/SkyWheelDatePicker;
.super Landroid/widget/FrameLayout;
.source "SkyWheelDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;,
        Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final ENABLED_SHORTER_MONTH:Z = true

.field private static final INPUT_LENGTH_FOUR:I = 0x4

.field private static final INPUT_LENGTH_TWO:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDatePicker:Landroid/widget/FrameLayout;

.field private mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mIsShorterMonth:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMaxYear:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMinYear:I

.field private mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;

.field private mPicker:Landroid/widget/LinearLayout;

.field private mSelection:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private final mShorterMonth:[Ljava/lang/String;

.field private mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/pantech/widget/SkyWheelDatePicker;)Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/pantech/widget/SkyWheelDatePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/pantech/widget/SkyWheelDatePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/pantech/widget/SkyWheelDatePicker;)Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/pantech/widget/SkyWheelDatePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/pantech/widget/SkyWheelDatePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/pantech/widget/SkyWheelDatePicker;III)V
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/pantech/widget/SkyWheelDatePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/pantech/widget/SkyWheelDatePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/pantech/widget/SkyWheelDatePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/widget/SkyWheelDatePicker;->LOG_TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkyWheelDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 116
    iput-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsEnabled:Z

    .line 123
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "10"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "11"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "12"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 123
    iput-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShorterMonth:[Ljava/lang/String;

    .line 127
    iput-boolean v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    .line 130
    const/16 v0, 0x76c

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinYear:I

    .line 131
    const/16 v0, 0x834

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxYear:I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelDatePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 116
    iput-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsEnabled:Z

    .line 123
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "10"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "11"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "12"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 123
    iput-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShorterMonth:[Ljava/lang/String;

    .line 127
    iput-boolean v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    .line 130
    const/16 v0, 0x76c

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinYear:I

    .line 131
    const/16 v0, 0x834

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxYear:I

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelDatePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 7
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 608
    if-nez p1, :cond_7

    .line 609
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 611
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 612
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 613
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 614
    return-object v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 20
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 168
    invoke-static/range {p1 .. p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 169
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v4

    .line 172
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 174
    sget-object v13, Lcom/pantech/res/R$styleable;->DatePicker:[I

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 176
    .local v2, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x5

    .line 177
    const/4 v14, 0x1

    .line 176
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 179
    .local v11, "spinnersShown":Z
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 178
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 180
    .local v3, "calendarViewShown":Z
    const/4 v13, 0x6

    .line 181
    const/16 v14, 0x76c

    .line 180
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 182
    .local v12, "startYear":I
    const/4 v13, 0x1

    const/16 v14, 0x834

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 183
    .local v5, "endYear":I
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "minDate":Ljava/lang/String;
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "maxDate":Ljava/lang/String;
    const/4 v13, 0x2

    .line 186
    const v14, 0x7f07000c

    .line 185
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 187
    .local v6, "layoutResourceId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-static {v4}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 194
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v10, v0, v13}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 197
    const v13, 0x7f0a0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDatePicker:Landroid/widget/FrameLayout;

    .line 199
    const v13, 0x7f0a0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSelection:Landroid/view/View;

    .line 201
    const v13, 0x7f0a0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    .line 203
    invoke-static {}, Lcom/pantech/widget/RR;->getTheme()I

    move-result v13

    packed-switch v13, :pswitch_data_2cc

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDatePicker:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSelection:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_aa
    new-instance v9, Lcom/pantech/widget/SkyWheelDatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/pantech/widget/SkyWheelDatePicker$1;-><init>(Lcom/pantech/widget/SkyWheelDatePicker;)V

    .line 267
    .local v9, "onChangeListener":Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;
    const v13, 0x7f0a0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 281
    const v13, 0x7f0a003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pantech/widget/SkyWheelNumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    sget-object v14, Lcom/pantech/widget/SkyWheelNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFormatter(Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v13, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v14, 0x7f0a003d

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFiltersWithLimitedLength(I)V

    .line 292
    const v13, 0x7f0a003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pantech/widget/SkyWheelNumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mNumberOfMonths:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v13, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v14, 0x7f0a003d

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 301
    const v13, 0x7f0a003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pantech/widget/SkyWheelNumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v13, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v14, 0x7f0a003d

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFiltersWithLimitedLength(I)V

    .line 318
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->setSpinnersShown(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 322
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2b4

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1b9

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 329
    :cond_1b9
    :goto_1b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/pantech/widget/SkyWheelDatePicker;->setMinDate(J)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 333
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2bf

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1ea

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 340
    :cond_1ea
    :goto_1ea
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/pantech/widget/SkyWheelDatePicker;->setMaxDate(J)V

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 345
    const/16 v16, 0x5

    .line 344
    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 345
    const/16 v16, 0x0

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/pantech/widget/SkyWheelDatePicker;->init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelDatePicker;->reorderSpinners()V

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelDatePicker;->setContentDescriptions()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_239

    .line 355
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/widget/SkyWheelDatePicker;->setImportantForAccessibility(I)V

    .line 166
    :cond_239
    return-void

    .line 205
    .end local v9    # "onChangeListener":Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;
    :pswitch_23a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDatePicker:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSelection:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_aa

    .line 212
    :pswitch_25c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDatePicker:Landroid/widget/FrameLayout;

    const v14, 0x7f06011c

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSelection:Landroid/view/View;

    const v14, 0x7f06011f

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const v14, 0x7f06011a

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_aa

    .line 217
    :pswitch_288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mDatePicker:Landroid/widget/FrameLayout;

    const v14, 0x7f06011d

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mSelection:Landroid/view/View;

    const v14, 0x7f06011e

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mPicker:Landroid/widget/LinearLayout;

    const v14, 0x7f060119

    invoke-static {v14}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_aa

    .line 327
    .restart local v9    # "onChangeListener":Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;
    :cond_2b4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1b9

    .line 338
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1ea

    .line 203
    :pswitch_data_2cc
    .packed-switch 0x1
        :pswitch_288
        :pswitch_25c
        :pswitch_25c
        :pswitch_23a
    .end packed-switch
.end method

.method private isNewDate(III)Z
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 720
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_12

    .line 721
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p3, :cond_13

    .line 720
    :cond_12
    :goto_12
    return v0

    .line 722
    :cond_13
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_12

    const/4 v0, 0x0

    goto :goto_12
.end method

.method private notifyDateChanged()V
    .registers 5

    .prologue
    .line 823
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->sendAccessibilityEvent(I)V

    .line 824
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mOnDateChangedListener:Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_19

    .line 825
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mOnDateChangedListener:Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;->onDateChanged(Lcom/pantech/widget/SkyWheelDatePicker;III)V

    .line 822
    :cond_19
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 7
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 712
    const/4 v1, 0x1

    return v1

    .line 713
    :catch_b
    move-exception v0

    .line 714
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/pantech/widget/SkyWheelDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy/MM/dd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .registers 6

    .prologue
    .line 624
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 625
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 626
    .local v1, "order":[C
    array-length v2, v1

    .line 627
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v2, :cond_45

    .line 628
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_46

    .line 642
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 630
    :sswitch_1c
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->setImeOptions(Lcom/pantech/widget/SkyWheelNumberPicker;II)V

    .line 627
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 634
    :sswitch_2b
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->setImeOptions(Lcom/pantech/widget/SkyWheelNumberPicker;II)V

    goto :goto_28

    .line 638
    :sswitch_38
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 639
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->setImeOptions(Lcom/pantech/widget/SkyWheelNumberPicker;II)V

    goto :goto_28

    .line 623
    :cond_45
    return-void

    .line 628
    :sswitch_data_46
    .sparse-switch
        0x4d -> :sswitch_2b
        0x64 -> :sswitch_1c
        0x79 -> :sswitch_38
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .registers 1

    .prologue
    .line 847
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x2

    .line 540
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 541
    return-void

    .line 544
    :cond_a
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 546
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 547
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 548
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 549
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 551
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mNumberOfMonths:I

    .line 552
    iget v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mNumberOfMonths:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 561
    if-eqz p1, :cond_41

    .line 572
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    .line 575
    :cond_41
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    if-eqz v2, :cond_61

    .line 576
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShorterMonth:[Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 577
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    if-eqz v2, :cond_60

    .line 578
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    .line 579
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_60

    .line 580
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    if-eqz v2, :cond_60

    .line 581
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 539
    .end local v1    # "inputType":I
    :cond_60
    return-void

    .line 586
    :cond_61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    iget v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mNumberOfMonths:I

    if-ge v0, v2, :cond_60

    .line 587
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x0

    .line 588
    const/16 v4, 0x14

    .line 587
    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_62
.end method

.method private setDate(III)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 727
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 728
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 725
    :cond_1a
    :goto_1a
    return-void

    .line 729
    :cond_1b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 730
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1a
.end method

.method private setImeOptions(Lcom/pantech/widget/SkyWheelNumberPicker;II)V
    .registers 7
    .param p1, "spinner"    # Lcom/pantech/widget/SkyWheelNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 838
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_12

    .line 839
    const/4 v0, 0x5

    .line 843
    .local v0, "imeOptions":I
    :goto_5
    const v2, 0x7f0a003d

    invoke-virtual {p1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 844
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 836
    return-void

    .line 841
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_12
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_5
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 866
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 868
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 865
    :cond_11
    return-void
.end method

.method private updateCalendarView()V
    .registers 1

    .prologue
    .line 794
    return-void
.end method

.method private updateInputState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 878
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 879
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_24

    .line 880
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 881
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 882
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 872
    :cond_24
    :goto_24
    return-void

    .line 883
    :cond_25
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 884
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 885
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_24

    .line 886
    :cond_3a
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 887
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 888
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_24
.end method

.method private updateSpinners()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 736
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 737
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 738
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 739
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 740
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 742
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 743
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 764
    :goto_4a
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 765
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMinValue()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 764
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 766
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 770
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    if-eqz v2, :cond_7c

    .line 771
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    .line 772
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_7c

    .line 773
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsShorterMonth:Z

    if-eqz v2, :cond_7c

    .line 774
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 781
    .end local v1    # "inputType":I
    :cond_7c
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 782
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 783
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 786
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 787
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 788
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 734
    return-void

    .line 744
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_b9
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 745
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 746
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 747
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 748
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 750
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 751
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4a

    .line 753
    :cond_100
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v6}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 754
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 755
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v6}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    .line 756
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v4}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v5}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 758
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 759
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v2, v6}, Lcom/pantech/widget/SkyWheelNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4a
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyWheelDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 666
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .prologue
    .line 408
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;

    .prologue
    .line 697
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelDatePicker;->setDate(III)V

    .line 698
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 699
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    .line 700
    iput-object p4, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mOnDateChangedListener:Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;

    .line 696
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 482
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 480
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 470
    const-class v0, Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 468
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 476
    const-class v0, Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 474
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 461
    const/16 v0, 0x14

    .line 462
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 463
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    .line 462
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 678
    check-cast v0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    .line 679
    .local v0, "ss":Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 680
    invoke-static {v0}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->-get2(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I

    move-result v1

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->-get1(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I

    move-result v2

    invoke-static {v0}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->-get0(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/widget/SkyWheelDatePicker;->setDate(III)V

    .line 681
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 682
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    .line 677
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 672
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 673
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/pantech/widget/SkyWheelDatePicker$SavedState;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .prologue
    .line 512
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 436
    return-void

    .line 438
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mDaySpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMonthSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mYearSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 443
    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mIsEnabled:Z

    .line 434
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 419
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 421
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 422
    return-void

    .line 424
    :cond_24
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 426
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 427
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 428
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    .line 430
    :cond_41
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 418
    return-void
.end method

.method public setMaxYear(I)V
    .registers 2
    .param p1, "year"    # I

    .prologue
    .line 953
    iput p1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMaxYear:I

    .line 951
    return-void
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 382
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 384
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 385
    return-void

    .line 387
    :cond_24
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 390
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 391
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    .line 393
    :cond_41
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 381
    return-void
.end method

.method public setMinYear(I)V
    .registers 2
    .param p1, "year"    # I

    .prologue
    .line 948
    iput p1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mMinYear:I

    .line 946
    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 531
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    return-void

    .line 531
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 655
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 656
    return-void

    .line 658
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelDatePicker;->setDate(III)V

    .line 659
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 660
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateCalendarView()V

    .line 661
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->notifyDateChanged()V

    .line 654
    return-void
.end method

.method public updateRangeOfYear(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I
    .param p3, "minDate"    # Ljava/lang/String;
    .param p4, "maxDate"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x1f

    const/16 v2, 0xb

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 959
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 960
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 961
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, p3, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 962
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, v1, v4}, Ljava/util/Calendar;->set(III)V

    .line 967
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkyWheelDatePicker;->setMinDate(J)V

    .line 970
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 971
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 972
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, p4, v0}, Lcom/pantech/widget/SkyWheelDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 973
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 978
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/widget/SkyWheelDatePicker;->setMaxDate(J)V

    .line 981
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 982
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/widget/SkyWheelDatePicker;->setDate(III)V

    .line 983
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePicker;->updateSpinners()V

    .line 956
    return-void

    .line 965
    :cond_6c
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, v1, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_1e

    .line 976
    :cond_72
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_3f
.end method
