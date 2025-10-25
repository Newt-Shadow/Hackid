.class public final Lcom/google/android/gms/measurement/internal/wc;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/wc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public b:[B

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Bundle;

.field public final e:I

.field public final f:J

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/xc;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/xc;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/wc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/wc;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/wc;->b:[B

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/wc;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/wc;->d:Landroid/os/Bundle;

    .line 11
    .line 12
    iput p6, p0, Lcom/google/android/gms/measurement/internal/wc;->e:I

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/wc;->f:J

    .line 15
    .line 16
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/wc;->g:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/wc;->a:J

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/wc;->b:[B

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p1, v1, v0, v2}, Lo5/c;->f(Landroid/os/Parcel;I[BZ)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/wc;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/wc;->d:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-static {p1, v0, v1, v2}, Lo5/c;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    iget v1, p0, Lcom/google/android/gms/measurement/internal/wc;->e:I

    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/wc;->f:J

    .line 38
    .line 39
    invoke-static {p1, v0, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x7

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/wc;->g:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1, v0, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
