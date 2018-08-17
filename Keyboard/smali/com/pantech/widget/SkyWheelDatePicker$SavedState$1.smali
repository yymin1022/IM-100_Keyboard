.class final Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SkyWheelDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pantech/widget/SkyWheelDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 937
    new-instance v0, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/pantech/widget/SkyWheelDatePicker$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pantech/widget/SkyWheelDatePicker$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 941
    new-array v0, p1, [Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lcom/pantech/widget/SkyWheelDatePicker$SavedState$1;->newArray(I)[Lcom/pantech/widget/SkyWheelDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
