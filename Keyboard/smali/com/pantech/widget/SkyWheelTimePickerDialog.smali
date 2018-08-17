.class public Lcom/pantech/widget/SkyWheelTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SkyWheelTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 99
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, "themeContext":Landroid/content/Context;
    iput-object p3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mCallback:Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;

    .line 102
    iput p4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialHourOfDay:I

    .line 103
    iput p5, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialMinute:I

    .line 104
    iput-boolean p6, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mIs24HourView:Z

    .line 106
    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setIcon(I)V

    .line 107
    const v3, 0x7f030010

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    const v3, 0x7f03000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    invoke-static {v1}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 114
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setView(Landroid/view/View;)V

    .line 116
    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/widget/SkyWheelTimePicker;

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    .line 119
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-boolean v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 120
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 121
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 122
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v3, p0}, Lcom/pantech/widget/SkyWheelTimePicker;->setOnTimeChangedListener(Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;IIZI)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z
    .param p7, "themetype"    # I

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 139
    invoke-static {p1}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 141
    invoke-static {p7}, Lcom/pantech/widget/RR;->setTheme(I)V

    .line 143
    invoke-static {}, Lcom/pantech/widget/RR;->GetResContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    .local v1, "themeContext":Landroid/content/Context;
    iput-object p3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mCallback:Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;

    .line 146
    iput p4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialHourOfDay:I

    .line 147
    iput p5, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialMinute:I

    .line 148
    iput-boolean p6, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mIs24HourView:Z

    .line 150
    invoke-virtual {p0, v5}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setIcon(I)V

    .line 151
    const v3, 0x7f030010

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    const v3, 0x7f03000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    invoke-static {v1}, Lcom/pantech/widget/util/SkyLayoutInflater;->init(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 158
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Lcom/pantech/widget/util/SkyLayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->setView(Landroid/view/View;)V

    .line 160
    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/widget/SkyWheelTimePicker;

    iput-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    .line 163
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-boolean v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 164
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 165
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget v4, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 166
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v3, p0}, Lcom/pantech/widget/SkyWheelTimePicker;->setOnTimeChangedListener(Lcom/pantech/widget/SkyWheelTimePicker$OnTimeChangedListener;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 80
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pantech/widget/SkyWheelTimePickerDialog;-><init>(Landroid/content/Context;ILcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 79
    return-void
.end method

.method private tryNotifyTimeSet()V
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mCallback:Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_24

    .line 187
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->clearFocus()V

    .line 188
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mCallback:Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v3}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 188
    invoke-interface {v0, v1, v2, v3}, Lcom/pantech/widget/SkyWheelTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/pantech/widget/SkyWheelTimePicker;II)V

    .line 185
    :cond_24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 172
    invoke-direct {p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->tryNotifyTimeSet()V

    .line 169
    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v3

    .line 229
    .local v0, "density":I
    mul-int/lit16 v2, v0, 0x156

    .line 230
    .local v2, "w":I
    mul-int/lit16 v1, v0, 0x133

    .line 231
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/pantech/widget/SkyWheelTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 224
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string/jumbo v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "minute":I
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 219
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 220
    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 214
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "hour"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string/jumbo v1, "is24hour"

    iget-object v2, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v2}, Lcom/pantech/widget/SkyWheelTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    return-object v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 201
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-virtual {v0}, Lcom/pantech/widget/SkyWheelTimePicker;->clearFocus()V

    .line 194
    return-void
.end method

.method public onTimeChanged(Lcom/pantech/widget/SkyWheelTimePicker;II)V
    .registers 4
    .param p1, "view"    # Lcom/pantech/widget/SkyWheelTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 181
    return-void
.end method

.method public updateTime(II)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 178
    iget-object v0, p0, Lcom/pantech/widget/SkyWheelTimePickerDialog;->mTimePicker:Lcom/pantech/widget/SkyWheelTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkyWheelTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 176
    return-void
.end method
