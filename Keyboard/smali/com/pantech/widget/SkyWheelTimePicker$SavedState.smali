.class Lcom/pantech/widget/SkyWheelTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SkyWheelTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelTimePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/widget/SkyWheelTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 403
    new-instance v0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 369
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 382
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mHour:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mMinute:I

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/widget/SkyWheelTimePicker$SavedState;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .registers 4
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 377
    iput p2, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mHour:I

    .line 378
    iput p3, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mMinute:I

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/pantech/widget/SkyWheelTimePicker$SavedState;)V
    .registers 5
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 392
    iget v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    iget v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Lcom/pantech/widget/SkyWheelTimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    return-void
.end method
