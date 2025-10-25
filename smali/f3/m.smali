.class public final Lf3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/m$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf3/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Lf3/m$b;

.field private b:I

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf3/m$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/m$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf3/m;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf3/m;->c:Ljava/lang/String;

    .line 13
    sget-object v0, Lf3/m$b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf3/m$b;

    invoke-static {p1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf3/m$b;

    iput-object p1, p0, Lf3/m;->a:[Lf3/m$b;

    .line 14
    array-length p1, p1

    iput p1, p0, Lf3/m;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lf3/m$b;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lf3/m$b;

    invoke-direct {p0, p1, v0, p2}, Lf3/m;-><init>(Ljava/lang/String;Z[Lf3/m$b;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lf3/m$b;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lf3/m;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p3}, [Lf3/m$b;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lf3/m$b;

    .line 8
    :cond_0
    iput-object p3, p0, Lf3/m;->a:[Lf3/m$b;

    .line 9
    array-length p1, p3

    iput p1, p0, Lf3/m;->d:I

    .line 10
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lf3/m$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lf3/m;-><init>(Ljava/lang/String;Z[Lf3/m$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lf3/m$b;

    .line 1
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lf3/m$b;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lf3/m;-><init>(Ljava/lang/String;Z[Lf3/m$b;)V

    return-void
.end method

.method public varargs constructor <init>([Lf3/m$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lf3/m;-><init>(Ljava/lang/String;[Lf3/m$b;)V

    return-void
.end method

.method private static b(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lf3/m$b;

    .line 10
    .line 11
    iget-object v2, v2, Lf3/m$b;->b:Ljava/util/UUID;

    .line 12
    .line 13
    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v0
.end method

.method public static d(Lf3/m;Lf3/m;)Lf3/m;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Lf3/m;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lf3/m;->a:[Lf3/m$b;

    .line 13
    .line 14
    array-length v4, p0

    .line 15
    move v5, v1

    .line 16
    :goto_0
    if-ge v5, v4, :cond_2

    .line 17
    .line 18
    aget-object v6, p0, v5

    .line 19
    .line 20
    invoke-virtual {v6}, Lf3/m$b;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v3, v2

    .line 33
    :cond_2
    if-eqz p1, :cond_5

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    iget-object p0, p1, Lf3/m;->c:Ljava/lang/String;

    .line 38
    .line 39
    move-object v3, p0

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    iget-object p1, p1, Lf3/m;->a:[Lf3/m$b;

    .line 45
    .line 46
    array-length v4, p1

    .line 47
    :goto_1
    if-ge v1, v4, :cond_5

    .line 48
    .line 49
    aget-object v5, p1, v1

    .line 50
    .line 51
    invoke-virtual {v5}, Lf3/m$b;->c()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    iget-object v6, v5, Lf3/m$b;->b:Ljava/util/UUID;

    .line 58
    .line 59
    invoke-static {v0, p0, v6}, Lf3/m;->b(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    new-instance v2, Lf3/m;

    .line 79
    .line 80
    invoke-direct {v2, v3, v0}, Lf3/m;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-object v2
.end method


# virtual methods
.method public a(Lf3/m$b;Lf3/m$b;)I
    .locals 2

    .line 1
    sget-object v0, Lb3/s;->a:Ljava/util/UUID;

    .line 2
    .line 3
    iget-object v1, p1, Lf3/m$b;->b:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p2, Lf3/m$b;->b:Ljava/util/UUID;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p1, Lf3/m$b;->b:Ljava/util/UUID;

    .line 24
    .line 25
    iget-object p2, p2, Lf3/m$b;->b:Ljava/util/UUID;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)Lf3/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lf3/m;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Lf3/m;->a:[Lf3/m$b;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1, v2}, Lf3/m;-><init>(Ljava/lang/String;Z[Lf3/m$b;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf3/m$b;

    .line 2
    .line 3
    check-cast p2, Lf3/m$b;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lf3/m;->a(Lf3/m$b;Lf3/m$b;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Lf3/m$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/m;->a:[Lf3/m$b;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lf3/m;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lf3/m;

    .line 18
    .line 19
    iget-object v2, p0, Lf3/m;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lf3/m;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lf3/m;->a:[Lf3/m$b;

    .line 30
    .line 31
    iget-object p1, p1, Lf3/m;->a:[Lf3/m$b;

    .line 32
    .line 33
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method

.method public f(Lf3/m;)Lf3/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lf3/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lf3/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lf3/m;->c:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget-object v0, p1, Lf3/m;->c:Ljava/lang/String;

    .line 28
    .line 29
    :goto_2
    iget-object v1, p0, Lf3/m;->a:[Lf3/m$b;

    .line 30
    .line 31
    iget-object p1, p1, Lf3/m;->a:[Lf3/m$b;

    .line 32
    .line 33
    invoke-static {v1, p1}, Ly4/q0;->E0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Lf3/m$b;

    .line 38
    .line 39
    new-instance v1, Lf3/m;

    .line 40
    .line 41
    invoke-direct {v1, v0, p1}, Lf3/m;-><init>(Ljava/lang/String;[Lf3/m$b;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lf3/m;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lf3/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-object v1, p0, Lf3/m;->a:[Lf3/m$b;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lf3/m;->b:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lf3/m;->b:I

    .line 27
    .line 28
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf3/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lf3/m;->a:[Lf3/m$b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
