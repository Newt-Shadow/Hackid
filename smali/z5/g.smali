.class public final Lz5/g;
.super Lz5/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lz5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f1(Lz5/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz5/a;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lz5/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lz5/a;->e1(ILandroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g1(Ljava/lang/String;Lz5/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz5/a;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lz5/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lz5/a;->e1(ILandroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
