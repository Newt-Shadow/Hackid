.class public final Ld6/r;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld6/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Ld6/p;

.field final c:Lg6/r;

.field final d:Landroid/app/PendingIntent;

.field final e:Lg6/o;

.field final f:Ld6/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld6/s;

    invoke-direct {v0}, Ld6/s;-><init>()V

    sput-object v0, Ld6/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILd6/p;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ld6/r;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Ld6/r;->b:Ld6/p;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    move-object p2, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p3}, Lg6/q;->d(Landroid/os/IBinder;)Lg6/r;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    iput-object p2, p0, Ld6/r;->c:Lg6/r;

    .line 18
    .line 19
    iput-object p4, p0, Ld6/r;->d:Landroid/app/PendingIntent;

    .line 20
    .line 21
    if-nez p5, :cond_1

    .line 22
    .line 23
    move-object p2, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p5}, Lg6/n;->d(Landroid/os/IBinder;)Lg6/o;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_1
    iput-object p2, p0, Ld6/r;->e:Lg6/o;

    .line 30
    .line 31
    if-nez p6, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 35
    .line 36
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p2, p1, Ld6/g;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    check-cast p1, Ld6/g;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    new-instance p1, Ld6/e;

    .line 48
    .line 49
    invoke-direct {p1, p6}, Ld6/e;-><init>(Landroid/os/IBinder;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    iput-object p1, p0, Ld6/r;->f:Ld6/g;

    .line 53
    .line 54
    return-void
.end method

.method public static g(Lg6/o;Ld6/g;)Ld6/r;
    .locals 8

    .line 1
    new-instance v7, Ld6/r;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move-object v6, p1

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v5, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Ld6/r;-><init>(ILd6/p;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, p0, Ld6/r;->a:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ld6/r;->b:Ld6/p;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v2, v1, p2, v3}, Lo5/c;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ld6/r;->c:Lg6/r;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    const/4 v4, 0x3

    .line 30
    invoke-static {p1, v4, v1, v3}, Lo5/c;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    iget-object v4, p0, Ld6/r;->d:Landroid/app/PendingIntent;

    .line 35
    .line 36
    invoke-static {p1, v1, v4, p2, v3}, Lo5/c;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Ld6/r;->e:Lg6/o;

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    move-object p2, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_1
    const/4 v1, 0x5

    .line 50
    invoke-static {p1, v1, p2, v3}, Lo5/c;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Ld6/r;->f:Ld6/g;

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_2
    const/4 p2, 0x6

    .line 63
    invoke-static {p1, p2, v2, v3}, Lo5/c;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
