.class Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SkyWheelDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/widget/SkyWheelDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static synthetic -get0(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mDay:I

    return v0
.end method

.method static synthetic -get1(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic -get2(Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)I
    .registers 2

    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 934
    new-instance v0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 896
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 918
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mYear:I

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mMonth:I

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mDay:I

    .line 917
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 909
    iput p2, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mYear:I

    .line 910
    iput p3, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mMonth:I

    .line 911
    iput p4, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mDay:I

    .line 907
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/pantech/widget/SkyWheelDatePicker$SavedState;)V
    .registers 6
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 926
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 927
    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget v0, p0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    return-void
.end method
