.class final Landroid/app/IActivityManager$WaitResult$1;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager$WaitResult;
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
        "Landroid/app/IActivityManager$WaitResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/IActivityManager$WaitResult;
    .locals 2
    .parameter "source"

    .prologue
    .line 438
    new-instance v0, Landroid/app/IActivityManager$WaitResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/IActivityManager$WaitResult;-><init>(Landroid/os/Parcel;Landroid/app/IActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Landroid/app/IActivityManager$WaitResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/IActivityManager$WaitResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 442
    new-array v0, p1, [Landroid/app/IActivityManager$WaitResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Landroid/app/IActivityManager$WaitResult$1;->newArray(I)[Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    return-object v0
.end method
