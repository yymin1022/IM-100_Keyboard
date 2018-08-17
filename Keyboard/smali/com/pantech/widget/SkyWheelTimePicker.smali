.class public Lcom/pantech/widget/SkyWheelTimePicker;
.super Landroid/widget/FrameLayout;
.source "SkyWheelTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;,
        Lcom/pantech/widget/SkyWheelTimePicker$SavedState;,
        Lcom/pantech/widget/SkyWheelTimePicker$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final INPUT_LENGTH_TWO:I = 0x2

.field private static final NO_OP_CHANGE_LISTENER:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;


# instance fields
.field private mAmPmButton:Landroid/widget/Button;

.field private mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mAmPmSpinnerInput:Landroid/widget/EditText;

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

.field private mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

.field private mPicker:Landroid/widget/LinearLayout;

.field private mSelection:Landroid/view/View;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTimePicker:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/pantech/widget/SkyWheelTimePicker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic -get2(Lcom/pantech/widget/SkyWheelTimePicker;)Lcom/pantech/widget/SkyWheelNumberPicker;
    .registers 2

    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    return-object v0
.end method

.method static synthetic -set0(Lcom/pantech/widget/SkyWheelTimePicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/pantech/widget/SkyWheelTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/pantech/widget/SkyWheelTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/pantech/widget/SkyWheelTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateInputState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/pantech/widget/SkyWheelTimePicker$1;

    invoke-direct {v0}, Lcom/pantech/widget/SkyWheelTimePicker$1;-><init>()V

    sput-object v0, Lcom/pantech/widget/SkyWheelTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/widget/SkyWheelTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsEnabled:Z

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelTimePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsEnabled:Z

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/pantech/widget/SkyWheelTimePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 144
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v2

    .line 147
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 150
    sget-object v7, Lcom/pantech/res/R$styleable;->TimePicker:[I

    invoke-virtual {v2, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const v8, 0x7f070010

    .line 152
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 154
    .local v3, "layoutResourceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-static {v2}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 161
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x1

    invoke-static {v4, p0, v7}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 164
    const v7, 0x7f0a0041

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTimePicker:Landroid/widget/FrameLayout;

    .line 165
    const v7, 0x7f0a0042

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mSelection:Landroid/view/View;

    .line 166
    const v7, 0x7f0a0043

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    .line 168
    invoke-static {}, Lcom/pantech/widget/RR;->getTheme()I

    move-result v6

    .line 169
    .local v6, "type":I
    invoke-static {}, Lcom/pantech/widget/RR;->getTheme()I

    move-result v7

    packed-switch v7, :pswitch_data_204

    .line 188
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTimePicker:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mSelection:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_70
    const v7, 0x7f0a0044

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/widget/SkyWheelNumberPicker;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 198
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    new-instance v8, Lcom/pantech/widget/SkyWheelTimePicker$2;

    invoke-direct {v8, p0}, Lcom/pantech/widget/SkyWheelTimePicker$2;-><init>(Lcom/pantech/widget/SkyWheelTimePicker;)V

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 211
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v8, 0x7f0a003d

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 212
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 215
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFiltersWithLimitedLength(I)V

    .line 225
    const v7, 0x7f0a0045

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/widget/SkyWheelNumberPicker;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 226
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 227
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 228
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 229
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    sget-object v8, Lcom/pantech/widget/SkyWheelNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFormatter(Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;)V

    .line 230
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    new-instance v8, Lcom/pantech/widget/SkyWheelTimePicker$3;

    invoke-direct {v8, p0}, Lcom/pantech/widget/SkyWheelTimePicker$3;-><init>(Lcom/pantech/widget/SkyWheelTimePicker;)V

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 253
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v8, 0x7f0a003d

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 254
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 257
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFiltersWithLimitedLength(I)V

    .line 261
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 264
    const v7, 0x7f0a0046

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "amPmView":Landroid/view/View;
    instance-of v7, v0, Landroid/widget/Button;

    if-eqz v7, :cond_1c5

    .line 266
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 267
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 268
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 269
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v8, Lcom/pantech/widget/SkyWheelTimePicker$4;

    invoke-direct {v8, p0}, Lcom/pantech/widget/SkyWheelTimePicker$4;-><init>(Lcom/pantech/widget/SkyWheelTimePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :goto_111
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateHourControl()V

    .line 299
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateAmPmControl()V

    .line 301
    sget-object v7, Lcom/pantech/widget/SkyWheelTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setOnTimeChangedListener(Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;)V

    .line 304
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 305
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 307
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_144

    .line 308
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setEnabled(Z)V

    .line 312
    :cond_144
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->setContentDescriptions()V

    .line 315
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_151

    .line 316
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->setImportantForAccessibility(I)V

    .line 319
    :cond_151
    const v7, 0x7f0a0043

    invoke-virtual {p0, v7}, Lcom/pantech/widget/SkyWheelTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 320
    .local v5, "spinners":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 140
    return-void

    .line 171
    .end local v5    # "spinners":Landroid/widget/LinearLayout;
    :pswitch_15f
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTimePicker:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mSelection:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_70

    .line 178
    :pswitch_179
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTimePicker:Landroid/widget/FrameLayout;

    const v8, 0x7f06011c

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mSelection:Landroid/view/View;

    const v8, 0x7f06011f

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const v8, 0x7f06011a

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_70

    .line 183
    :pswitch_19f
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTimePicker:Landroid/widget/FrameLayout;

    const v8, 0x7f06011d

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mSelection:Landroid/view/View;

    const v8, 0x7f06011e

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mPicker:Landroid/widget/LinearLayout;

    const v8, 0x7f060119

    invoke-static {v8}, Lcom/pantech/widget/RR;->getDrawableImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_70

    .line 278
    .restart local v0    # "amPmView":Landroid/view/View;
    :cond_1c5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 279
    check-cast v0, Lcom/pantech/widget/SkyWheelNumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    .line 280
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 281
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 282
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    iget-object v8, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 283
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    new-instance v8, Lcom/pantech/widget/SkyWheelTimePicker$5;

    invoke-direct {v8, p0}, Lcom/pantech/widget/SkyWheelTimePicker$5;-><init>(Lcom/pantech/widget/SkyWheelTimePicker;)V

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->setOnValueChangedListener(Lcom/pantech/widget/SkyWheelNumberPicker$OnValueChangeListener;)V

    .line 292
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const v8, 0x7f0a003d

    invoke-virtual {v7, v8}, Lcom/pantech/widget/SkyWheelNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 293
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 294
    iget-object v7, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_111

    .line 169
    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_19f
        :pswitch_179
        :pswitch_179
        :pswitch_15f
    .end packed-switch
.end method

.method private onTimeChanged()V
    .registers 4

    .prologue
    .line 598
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelTimePicker;->sendAccessibilityEvent(I)V

    .line 599
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mOnTimeChangedListener:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1d

    .line 600
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mOnTimeChangedListener:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/pantech/widget/SkyWheelTimePicker;II)V

    .line 597
    :cond_1d
    return-void
.end method

.method private setContentDescriptions()V
    .registers 1

    .prologue
    .line 604
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 360
    return-void

    .line 362
    :cond_9
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 363
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    .line 358
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 624
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 575
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    if-eqz v1, :cond_17

    .line 576
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1, v2}, Lcom/pantech/widget/SkyWheelNumberPicker;->setVisibility(I)V

    .line 594
    :cond_12
    :goto_12
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->sendAccessibilityEvent(I)V

    .line 573
    return-void

    .line 578
    :cond_17
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    if-eqz v1, :cond_12

    .line 579
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12

    .line 583
    :cond_21
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    if-eqz v1, :cond_35

    const/4 v0, 0x0

    .line 584
    .local v0, "index":I
    :goto_26
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    if-eqz v1, :cond_37

    .line 585
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1, v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 586
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1, v3}, Lcom/pantech/widget/SkyWheelNumberPicker;->setVisibility(I)V

    goto :goto_12

    .line 583
    .end local v0    # "index":I
    :cond_35
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_26

    .line 588
    :cond_37
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    if-eqz v1, :cond_12

    .line 589
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12
.end method

.method private updateHourControl()V
    .registers 3

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 563
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 564
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 565
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    sget-object v1, Lcom/pantech/widget/SkyWheelNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFormatter(Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;)V

    .line 561
    :goto_1a
    return-void

    .line 567
    :cond_1b
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMinValue(I)V

    .line 568
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setMaxValue(I)V

    .line 569
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setFormatter(Lcom/pantech/widget/SkyWheelNumberPicker$Formatter;)V

    goto :goto_1a
.end method

.method private updateInputState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 638
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_24

    .line 639
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 640
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 641
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 631
    :cond_24
    :goto_24
    return-void

    .line 642
    :cond_25
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 643
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 644
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_24

    .line 645
    :cond_3a
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 646
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 647
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_24
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyWheelTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->getValue()I

    move-result v0

    .line 442
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 444
    :cond_11
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1c

    .line 445
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 447
    :cond_1c
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 350
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 348
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 552
    const-class v0, Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 550
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 558
    const-class v0, Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 556
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 537
    iget-boolean v2, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_3d

    .line 538
    const/16 v0, 0x81

    .line 542
    .local v0, "flags":I
    :goto_9
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 543
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 544
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 545
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 544
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    return-void

    .line 540
    .end local v0    # "flags":I
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_3d
    const/16 v0, 0x41

    .restart local v0    # "flags":I
    goto :goto_9
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 422
    check-cast v0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;

    .line 423
    .local v0, "ss":Lcom/pantech/widget/SkyWheelTimePicker$SavedState;
    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 424
    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 425
    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 421
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 416
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 417
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/pantech/widget/SkyWheelTimePicker$SavedState;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 456
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 457
    :cond_b
    return-void

    .line 459
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 461
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_3a

    .line 462
    iput-boolean v2, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2a

    .line 464
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 472
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateAmPmControl()V

    .line 474
    :cond_2d
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 475
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->onTimeChanged()V

    .line 454
    return-void

    .line 467
    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsAm:Z

    .line 468
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2a

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2a
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 515
    return-void

    .line 517
    :cond_7
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setValue(I)V

    .line 518
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->onTimeChanged()V

    .line 513
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 326
    return-void

    .line 328
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mMinuteSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mHourSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    if-eqz v0, :cond_1e

    .line 335
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmSpinner:Lcom/pantech/widget/SkyWheelNumberPicker;

    invoke-virtual {v0, p1}, Lcom/pantech/widget/SkyWheelNumberPicker;->setEnabled(Z)V

    .line 339
    :goto_1b
    iput-boolean p1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIsEnabled:Z

    .line 324
    return-void

    .line 337
    :cond_1e
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 484
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_9

    .line 485
    return-void

    .line 487
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mIs24HourView:Z

    .line 489
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    .local v0, "currentHour":I
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateHourControl()V

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 493
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePicker;->updateAmPmControl()V

    .line 483
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "onTimeChangedListener"    # Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/pantech/widget/SkyWheelTimePicker;->mOnTimeChangedListener:Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;

    .line 433
    return-void
.end method
