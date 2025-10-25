.class public final Lcom/google/android/gms/internal/play_billing/g6;
.super Lcom/google/android/gms/internal/play_billing/j6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/i6;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/j6;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 24
    .line 25
    .line 26
    return p2
.end method

.method public final C(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/i5;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x641

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->g1(ILandroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final C0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public final E(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x9

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    return-object p2
.end method

.method public final O0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0xa

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 28
    .line 29
    .line 30
    return p2
.end method

.method public final R0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/f6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x579

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->g1(ILandroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final S(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public final T0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    const/16 p1, 0xb

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final U(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p5, 0x3

    .line 6
    invoke-virtual {p1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p5, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final Z0(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x386

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public final p(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x385

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final p0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/d6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x12

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x515

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->f1(ILandroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final s(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 25
    .line 26
    .line 27
    return p2
.end method

.method public final u(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0xc

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public final x0(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/z1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x5dd

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/j6;->g1(ILandroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final y0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/j6;->k()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p5, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p5, p6}, Lcom/google/android/gms/internal/play_billing/l6;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/j6;->e1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object p2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/l6;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method
