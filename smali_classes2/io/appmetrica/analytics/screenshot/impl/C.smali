.class public final Lio/appmetrica/analytics/screenshot/impl/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/D;

    .line 2
    .line 3
    const-class v1, Lio/appmetrica/analytics/screenshot/impl/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lio/appmetrica/analytics/screenshot/impl/x;

    .line 14
    .line 15
    const-class v2, Lio/appmetrica/analytics/screenshot/impl/F;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lio/appmetrica/analytics/screenshot/impl/F;

    .line 26
    .line 27
    const-class v3, Lio/appmetrica/analytics/screenshot/impl/z;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/z;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/screenshot/impl/D;-><init>(Lio/appmetrica/analytics/screenshot/impl/x;Lio/appmetrica/analytics/screenshot/impl/F;Lio/appmetrica/analytics/screenshot/impl/z;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lio/appmetrica/analytics/screenshot/impl/D;

    .line 2
    .line 3
    return-object p1
.end method
