.class public final Ln5/j1;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ln5/j1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Ll5/d;

.field c:I

.field d:Ln5/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln5/k1;

    invoke-direct {v0}, Ln5/k1;-><init>()V

    sput-object v0, Ln5/j1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;[Ll5/d;ILn5/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    iput-object p1, p0, Ln5/j1;->a:Landroid/os/Bundle;

    iput-object p2, p0, Ln5/j1;->b:[Ll5/d;

    iput p3, p0, Ln5/j1;->c:I

    iput-object p4, p0, Ln5/j1;->d:Ln5/f;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ln5/j1;->a:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, v3}, Lo5/c;->e(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget-object v2, p0, Ln5/j1;->b:[Ll5/d;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2, v3}, Lo5/c;->s(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget v2, p0, Ln5/j1;->c:I

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Ln5/j1;->d:Ln5/f;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Lo5/c;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
