.class public final Lcom/google/android/gms/internal/measurement/g2;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/g2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Landroid/os/Bundle;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/h2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/g2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/g2;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/g2;->b:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/g2;->c:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/g2;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/g2;->a:J

    .line 2
    .line 3
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v0, v1}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/g2;->b:J

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/g2;->c:Z

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 24
    .line 25
    const/4 v1, 0x7

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {p1, v1, v0, v2}, Lo5/c;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g2;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v0, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
