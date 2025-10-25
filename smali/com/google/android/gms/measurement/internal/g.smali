.class public final Lcom/google/android/gms/measurement/internal/g;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 5
    .line 6
    iput p3, p0, Lcom/google/android/gms/measurement/internal/g;->b:I

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/g;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/g;->a:J

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
    iget v1, p0, Lcom/google/android/gms/measurement/internal/g;->b:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/g;->c:J

    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
