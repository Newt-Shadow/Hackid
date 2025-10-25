.class public final Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[I


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lj9/a;->c:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lj9/a;->b:I

    .line 3
    invoke-static {p1}, Lj9/a;->k(I)[I

    move-result-object p1

    iput-object p1, p0, Lj9/a;->a:[I

    return-void
.end method

.method constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lj9/a;->a:[I

    .line 6
    iput p2, p0, Lj9/a;->b:I

    return-void
.end method

.method private static k(I)[I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x1f

    .line 2
    .line 3
    div-int/lit8 p0, p0, 0x20

    .line 4
    .line 5
    new-array p0, p0, [I

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, Lj9/a;->a:[I

    .line 9
    .line 10
    aput v1, v3, v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public b()Lj9/a;
    .locals 3

    .line 1
    new-instance v0, Lj9/a;

    .line 2
    .line 3
    iget-object v1, p0, Lj9/a;->a:[I

    .line 4
    .line 5
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, [I

    .line 10
    .line 11
    iget v2, p0, Lj9/a;->b:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lj9/a;-><init>([II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    div-int/lit8 v1, p1, 0x20

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    and-int/lit8 p1, p1, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    shl-int p1, v1, p1

    .line 11
    .line 12
    and-int/2addr p1, v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj9/a;->b()Lj9/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public e(I)I
    .locals 3

    .line 1
    iget v0, p0, Lj9/a;->b:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 7
    .line 8
    iget-object v1, p0, Lj9/a;->a:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    shl-int p1, v2, p1

    .line 16
    .line 17
    neg-int p1, p1

    .line 18
    and-int/2addr p1, v1

    .line 19
    :goto_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iget-object p1, p0, Lj9/a;->a:[I

    .line 24
    .line 25
    array-length v1, p1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lj9/a;->b:I

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    aget p1, p1, v0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    mul-int/lit8 v0, v0, 0x20

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/2addr v0, p1

    .line 41
    iget p1, p0, Lj9/a;->b:I

    .line 42
    .line 43
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lj9/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lj9/a;

    .line 8
    .line 9
    iget v0, p0, Lj9/a;->b:I

    .line 10
    .line 11
    iget v2, p1, Lj9/a;->b:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lj9/a;->a:[I

    .line 16
    .line 17
    iget-object p1, p1, Lj9/a;->a:[I

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public f(I)I
    .locals 3

    .line 1
    iget v0, p0, Lj9/a;->b:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 7
    .line 8
    iget-object v1, p0, Lj9/a;->a:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    not-int v1, v1

    .line 13
    and-int/lit8 p1, p1, 0x1f

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    shl-int p1, v2, p1

    .line 17
    .line 18
    neg-int p1, p1

    .line 19
    and-int/2addr p1, v1

    .line 20
    :goto_0
    if-nez p1, :cond_2

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    iget-object p1, p0, Lj9/a;->a:[I

    .line 25
    .line 26
    array-length v1, p1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lj9/a;->b:I

    .line 30
    .line 31
    return p1

    .line 32
    :cond_1
    aget p1, p1, v0

    .line 33
    .line 34
    not-int p1, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    mul-int/lit8 v0, v0, 0x20

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr v0, p1

    .line 43
    iget p1, p0, Lj9/a;->b:I

    .line 44
    .line 45
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lj9/a;->b:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lj9/a;->a:[I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lj9/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public j(IIZ)Z
    .locals 8

    .line 1
    if-lt p2, p1, :cond_6

    .line 2
    .line 3
    if-ltz p1, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lj9/a;->b:I

    .line 6
    .line 7
    if-gt p2, v0, :cond_6

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 14
    .line 15
    div-int/lit8 v1, p1, 0x20

    .line 16
    .line 17
    div-int/lit8 v2, p2, 0x20

    .line 18
    .line 19
    move v3, v1

    .line 20
    :goto_0
    if-gt v3, v2, :cond_5

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v5, 0x1f

    .line 24
    .line 25
    if-le v3, v1, :cond_1

    .line 26
    .line 27
    move v6, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    and-int/lit8 v6, p1, 0x1f

    .line 30
    .line 31
    :goto_1
    if-ge v3, v2, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    and-int/2addr v5, p2

    .line 35
    :goto_2
    const/4 v7, 0x2

    .line 36
    shl-int v5, v7, v5

    .line 37
    .line 38
    shl-int v6, v0, v6

    .line 39
    .line 40
    sub-int/2addr v5, v6

    .line 41
    iget-object v6, p0, Lj9/a;->a:[I

    .line 42
    .line 43
    aget v6, v6, v3

    .line 44
    .line 45
    and-int/2addr v6, v5

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v5, v4

    .line 50
    :goto_3
    if-eq v6, v5, :cond_4

    .line 51
    .line 52
    return v4

    .line 53
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    return v0

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    iget v1, p0, Lj9/a;->b:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    sub-int/2addr v1, v2

    .line 10
    div-int/lit8 v1, v1, 0x20

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x1

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v5, v3, :cond_0

    .line 17
    .line 18
    sub-int v6, v1, v5

    .line 19
    .line 20
    iget-object v7, p0, Lj9/a;->a:[I

    .line 21
    .line 22
    aget v7, v7, v5

    .line 23
    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->reverse(I)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    aput v7, v0, v6

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v1, p0, Lj9/a;->b:I

    .line 34
    .line 35
    mul-int/lit8 v5, v3, 0x20

    .line 36
    .line 37
    if-eq v1, v5, :cond_2

    .line 38
    .line 39
    sub-int/2addr v5, v1

    .line 40
    aget v1, v0, v4

    .line 41
    .line 42
    ushr-int/2addr v1, v5

    .line 43
    move v4, v2

    .line 44
    :goto_1
    if-ge v4, v3, :cond_1

    .line 45
    .line 46
    aget v6, v0, v4

    .line 47
    .line 48
    rsub-int/lit8 v7, v5, 0x20

    .line 49
    .line 50
    shl-int v7, v6, v7

    .line 51
    .line 52
    or-int/2addr v1, v7

    .line 53
    add-int/lit8 v7, v4, -0x1

    .line 54
    .line 55
    aput v1, v0, v7

    .line 56
    .line 57
    ushr-int v1, v6, v5

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    sub-int/2addr v3, v2

    .line 63
    aput v1, v0, v3

    .line 64
    .line 65
    :cond_2
    iput-object v0, p0, Lj9/a;->a:[I

    .line 66
    .line 67
    return-void
.end method

.method public m(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    div-int/lit8 v1, p1, 0x20

    .line 4
    .line 5
    aget v2, v0, v1

    .line 6
    .line 7
    and-int/lit8 p1, p1, 0x1f

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    shl-int p1, v3, p1

    .line 11
    .line 12
    or-int/2addr p1, v2

    .line 13
    aput p1, v0, v1

    .line 14
    .line 15
    return-void
.end method

.method public n(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/a;->a:[I

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x20

    .line 4
    .line 5
    aput p2, v0, p1

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget v1, p0, Lj9/a;->b:I

    .line 4
    .line 5
    div-int/lit8 v2, v1, 0x8

    .line 6
    .line 7
    add-int/2addr v1, v2

    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lj9/a;->b:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    and-int/lit8 v2, v1, 0x7

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Lj9/a;->c(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/16 v2, 0x58

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v2, 0x2e

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
