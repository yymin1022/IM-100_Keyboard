.class public Lcom/pantech/widget/SkyWheelDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SkyWheelDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 104
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 106
    iput-object p3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCallBack:Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 110
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, "themeContext":Landroid/content/Context;
    const v3, 0x7f03000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    const v3, 0x7f030002

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setIcon(I)V

    .line 120
    invoke-static {v1}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 122
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setView(Landroid/view/View;)V

    .line 124
    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/widget/SkyWheelDatePicker;

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    .line 125
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/pantech/widget/SkyWheelDatePicker;->init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;IIII)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "themeType"    # I

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 150
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 152
    invoke-static {p7}, Lcom/pantech/widget/RR;->setTheme(I)V

    .line 154
    iput-object p3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCallBack:Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 158
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "themeContext":Landroid/content/Context;
    const v3, 0x7f03000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    const v3, 0x7f030002

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setIcon(I)V

    .line 168
    invoke-static {v1}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 170
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 171
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setView(Landroid/view/View;)V

    .line 172
    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/widget/SkyWheelDatePicker;

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    .line 173
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/pantech/widget/SkyWheelDatePicker;->init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 85
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pantech/widget/SkyWheelDatePickerDialog;-><init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;III)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;IIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "startYear"    # I
    .param p7, "endYear"    # I
    .param p8, "minDate"    # Ljava/lang/String;
    .param p9, "maxDate"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/pantech/widget/SkyWheelDatePickerDialog;-><init>(Landroid/content/Context;Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;III)V

    .line 191
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0, p6, p7, p8, p9}, Lcom/pantech/widget/SkyWheelDatePicker;->updateRangeOfYear(IILjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_c
    return-void
.end method

.method private tryNotifyDateSet()V
    .registers 6

    .prologue
    .line 234
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCallBack:Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_22

    .line 235
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelDatePicker;->clearFocus()V

    .line 236
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCallBack:Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelDatePicker;->getYear()I

    move-result v2

    .line 237
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v4}, Lcom/pantech/widget/SkyWheelDatePicker;->getDayOfMonth()I

    move-result v4

    .line 236
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/pantech/widget/SkyWheelDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/pantech/widget/SkyWheelDatePicker;III)V

    .line 233
    :cond_22
    return-void
.end method

.method private updateTitle(III)V
    .registers 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x1

    .line 253
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v1}, Lcom/pantech/widget/SkyWheelDatePicker;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_31

    .line 254
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 256
    iget-object v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 259
    const v4, 0x18016

    .line 257
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    iput-boolean v5, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 252
    .end local v0    # "title":Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 267
    :cond_31
    iget-boolean v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_30

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 269
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->setTitle(I)V

    goto :goto_30
.end method


# virtual methods
.method public getDatePicker()Lcom/pantech/widget/SkyWheelDatePicker;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 199
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->tryNotifyDateSet()V

    .line 196
    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 298
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v3

    .line 299
    .local v0, "density":I
    mul-int/lit16 v2, v0, 0x156

    .line 300
    .local v2, "w":I
    mul-int/lit16 v1, v0, 0x133

    .line 301
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 293
    return-void
.end method

.method public onDateChanged(Lcom/pantech/widget/SkyWheelDatePicker;III)V
    .registers 6
    .param p1, "view"    # Lcom/pantech/widget/SkyWheelDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/pantech/widget/SkyWheelDatePicker;->init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V

    .line 204
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 286
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, "year":I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "month":I
    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "day":I
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/pantech/widget/SkyWheelDatePicker;->init(IIILcom/pantech/widget/SkyWheelDatePicker$OnDateChangedListener;)V

    .line 284
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    return-object v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 249
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelDatePicker;->clearFocus()V

    .line 242
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelDatePickerDialog;->mDatePicker:Lcom/pantech/widget/SkyWheelDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelDatePicker;->updateDate(III)V

    .line 229
    return-void
.end method
