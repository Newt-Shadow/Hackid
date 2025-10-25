.class public Ln5/f;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ln5/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ln5/s;

.field private final b:Z

.field private final c:Z

.field private final d:[I

.field private final e:I

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln5/l1;

    invoke-direct {v0}, Ln5/l1;-><init>()V

    sput-object v0, Ln5/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ln5/s;ZZ[II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    iput-object p1, p0, Ln5/f;->a:Ln5/s;

    iput-boolean p2, p0, Ln5/f;->b:Z

    iput-boolean p3, p0, Ln5/f;->c:Z

    iput-object p4, p0, Ln5/f;->d:[I

    iput p5, p0, Ln5/f;->e:I

    iput-object p6, p0, Ln5/f;->f:[I

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ln5/f;->e:I

    return v0
.end method

.method public i()[I
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/f;->d:[I

    return-object v0
.end method

.method public l()[I
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/f;->f:[I

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln5/f;->b:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln5/f;->c:Z

    return v0
.end method

.method public final o()Ln5/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/f;->a:Ln5/s;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ln5/f;->a:Ln5/s;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, Lo5/c;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-virtual {p0}, Ln5/f;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x3

    .line 21
    invoke-virtual {p0}, Ln5/f;->n()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-virtual {p0}, Ln5/f;->i()[I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p1, p2, v1, v3}, Lo5/c;->l(Landroid/os/Parcel;I[IZ)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x5

    .line 37
    invoke-virtual {p0}, Ln5/f;->g()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x6

    .line 45
    invoke-virtual {p0}, Ln5/f;->l()[I

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1, p2, v1, v3}, Lo5/c;->l(Landroid/os/Parcel;I[IZ)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
