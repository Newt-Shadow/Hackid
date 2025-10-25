.class public final Lcom/google/android/gms/internal/auth/g;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/auth/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/auth/g;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo5/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/auth/g;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/auth/g;->a:I

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-static {p1, v2, v0, v1}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
