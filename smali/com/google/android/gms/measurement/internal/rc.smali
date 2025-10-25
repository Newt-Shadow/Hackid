.class public final Lcom/google/android/gms/measurement/internal/rc;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/rc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/sc;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/sc;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/rc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rc;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/rc;->b:J

    .line 7
    .line 8
    iput p4, p0, Lcom/google/android/gms/measurement/internal/rc;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/rc;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, p2, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/rc;->b:J

    .line 14
    .line 15
    invoke-static {p1, p2, v1, v2}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x3

    .line 19
    iget v1, p0, Lcom/google/android/gms/measurement/internal/rc;->c:I

    .line 20
    .line 21
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
