.class public final Lcom/google/android/gms/measurement/internal/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/measurement/internal/g0;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g0;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v0, v3}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g0;->b:Lcom/google/android/gms/measurement/internal/e0;

    .line 14
    .line 15
    invoke-static {p1, v0, v2, p2, v3}, Lo5/c;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g0;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v3}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/g0;->d:J

    .line 26
    .line 27
    invoke-static {p1, p2, v2, v3}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Lo5/b;->x(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-wide v8, v1

    .line 9
    move-object v5, v3

    .line 10
    move-object v6, v5

    .line 11
    move-object v7, v6

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v1, v0, :cond_4

    .line 17
    .line 18
    invoke-static {p1}, Lo5/b;->q(Landroid/os/Parcel;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Lo5/b;->k(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_3

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v2, v3, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x5

    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    invoke-static {p1, v1}, Lo5/b;->w(Landroid/os/Parcel;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, v1}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    move-wide v8, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p1, v1}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v7, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    .line 56
    invoke-static {p1, v1, v2}, Lo5/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/google/android/gms/measurement/internal/e0;

    .line 61
    .line 62
    move-object v6, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p1, v1}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v5, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-static {p1, v0}, Lo5/b;->j(Landroid/os/Parcel;I)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/google/android/gms/measurement/internal/g0;

    .line 74
    .line 75
    move-object v4, p1

    .line 76
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/g0;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/e0;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/g0;

    .line 2
    .line 3
    return-object p1
.end method
