.class final Lcom/google/android/gms/internal/measurement/na;
.super Lcom/google/android/gms/internal/measurement/pa;
.source "SourceFile"


# instance fields
.field private final e:[B

.field private final f:I

.field private g:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/pa;-><init>([B)V

    .line 3
    .line 4
    .line 5
    array-length p2, p1

    .line 6
    sub-int v0, p2, p3

    .line 7
    .line 8
    or-int/2addr v0, p3

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 13
    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 15
    .line 16
    iput p3, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    filled-new-array {p2, v1, p3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 40
    .line 41
    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method


# virtual methods
.method public final A(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 4
    .line 5
    long-to-int v2, p1

    .line 6
    int-to-byte v2, v2

    .line 7
    aput-byte v2, v1, v0

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    shr-long v4, p1, v3

    .line 14
    .line 15
    long-to-int v4, v4

    .line 16
    int-to-byte v4, v4

    .line 17
    aput-byte v4, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x2

    .line 20
    .line 21
    const/16 v4, 0x10

    .line 22
    .line 23
    shr-long v4, p1, v4

    .line 24
    .line 25
    long-to-int v4, v4

    .line 26
    int-to-byte v4, v4

    .line 27
    aput-byte v4, v1, v2

    .line 28
    .line 29
    add-int/lit8 v2, v0, 0x3

    .line 30
    .line 31
    const/16 v4, 0x18

    .line 32
    .line 33
    shr-long v4, p1, v4

    .line 34
    .line 35
    long-to-int v4, v4

    .line 36
    int-to-byte v4, v4

    .line 37
    aput-byte v4, v1, v2

    .line 38
    .line 39
    add-int/lit8 v2, v0, 0x4

    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    shr-long v4, p1, v4

    .line 44
    .line 45
    long-to-int v4, v4

    .line 46
    int-to-byte v4, v4

    .line 47
    aput-byte v4, v1, v2

    .line 48
    .line 49
    add-int/lit8 v2, v0, 0x5

    .line 50
    .line 51
    const/16 v4, 0x28

    .line 52
    .line 53
    shr-long v4, p1, v4

    .line 54
    .line 55
    long-to-int v4, v4

    .line 56
    int-to-byte v4, v4

    .line 57
    aput-byte v4, v1, v2

    .line 58
    .line 59
    add-int/lit8 v2, v0, 0x6

    .line 60
    .line 61
    const/16 v4, 0x30

    .line 62
    .line 63
    shr-long v4, p1, v4

    .line 64
    .line 65
    long-to-int v4, v4

    .line 66
    int-to-byte v4, v4

    .line 67
    aput-byte v4, v1, v2

    .line 68
    .line 69
    add-int/lit8 v2, v0, 0x7

    .line 70
    .line 71
    const/16 v4, 0x38

    .line 72
    .line 73
    shr-long/2addr p1, v4

    .line 74
    long-to-int p1, p1

    .line 75
    int-to-byte p1, p1

    .line 76
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    add-int/2addr v0, v3

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    move-exception p1

    .line 83
    move-object v7, p1

    .line 84
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 85
    .line 86
    int-to-long v2, v0

    .line 87
    new-instance p2, Lcom/google/android/gms/internal/measurement/oa;

    .line 88
    .line 89
    int-to-long v4, p1

    .line 90
    const/16 v6, 0x8

    .line 91
    .line 92
    move-object v1, p2

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2
.end method

.method public final B([BII)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/na;->F([BII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/pa;->E(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    add-int v1, v0, v2

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 28
    .line 29
    iget v4, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 30
    .line 31
    sub-int/2addr v4, v1

    .line 32
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/od;->c(Ljava/lang/String;[BII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 37
    .line 38
    sub-int v3, v1, v0

    .line 39
    .line 40
    sub-int/2addr v3, v2

    .line 41
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/od;->b(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 55
    .line 56
    iget v2, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 57
    .line 58
    iget v3, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 59
    .line 60
    sub-int/2addr v3, v2

    .line 61
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/od;->c(Ljava/lang/String;[BII)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/nd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/measurement/oa;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/oa;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :catch_1
    move-exception v1

    .line 76
    iput v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 77
    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/pa;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/nd;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final D()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final F([BII)V
    .locals 7

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 10
    .line 11
    add-int/2addr p1, p3

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    move-object v6, p1

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/measurement/oa;

    .line 18
    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 20
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 22
    .line 23
    int-to-long v1, p2

    .line 24
    int-to-long v3, v0

    .line 25
    move-object v0, p1

    .line 26
    move v5, p3

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final i(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->w(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->y(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/na;->z(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final n(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/na;->A(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o(IZ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->v(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p(ILjava/lang/String;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->C(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(ILcom/google/android/gms/internal/measurement/ka;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/na;->r(Lcom/google/android/gms/internal/measurement/ka;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/measurement/ka;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ka;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ka;->m(Lcom/google/android/gms/internal/measurement/ba;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/na;->F([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method final t(ILcom/google/android/gms/internal/measurement/ic;Lcom/google/android/gms/internal/measurement/tc;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    move-object p1, p2

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/measurement/v9;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/v9;->f(Lcom/google/android/gms/internal/measurement/tc;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/pa;->a:Lcom/google/android/gms/internal/measurement/qa;

    .line 19
    .line 20
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/tc;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/measurement/ic;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ic;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/ic;->c(Lcom/google/android/gms/internal/measurement/pa;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final v(B)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    add-int/lit8 v2, v0, 0x1

    .line 6
    .line 7
    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    move-object v7, p1

    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    move-object v7, p1

    .line 18
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 19
    .line 20
    new-instance v8, Lcom/google/android/gms/internal/measurement/oa;

    .line 21
    .line 22
    int-to-long v2, v0

    .line 23
    int-to-long v4, p1

    .line 24
    const/4 v6, 0x1

    .line 25
    move-object v1, v8

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v8
.end method

.method public final w(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/na;->x(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/na;->z(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 2
    .line 3
    :goto_0
    and-int/lit8 v1, p1, -0x80

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    .line 14
    iput v2, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    or-int/lit16 v3, p1, 0x80

    .line 22
    .line 23
    int-to-byte v3, v3

    .line 24
    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    .line 26
    ushr-int/lit8 p1, p1, 0x7

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    move-object v7, p1

    .line 32
    move v0, v2

    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception p1

    .line 35
    move-object v7, p1

    .line 36
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 37
    .line 38
    new-instance v8, Lcom/google/android/gms/internal/measurement/oa;

    .line 39
    .line 40
    int-to-long v2, v0

    .line 41
    int-to-long v4, p1

    .line 42
    const/4 v6, 0x1

    .line 43
    move-object v1, v8

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v8
.end method

.method public final y(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 4
    .line 5
    int-to-byte v2, p1

    .line 6
    aput-byte v2, v1, v0

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    shr-int/lit8 v3, p1, 0x8

    .line 11
    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x2

    .line 16
    .line 17
    shr-int/lit8 v3, p1, 0x10

    .line 18
    .line 19
    int-to-byte v3, v3

    .line 20
    aput-byte v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v0, 0x3

    .line 23
    .line 24
    shr-int/lit8 p1, p1, 0x18

    .line 25
    .line 26
    int-to-byte p1, p1

    .line 27
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x4

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    move-object v7, p1

    .line 36
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 37
    .line 38
    int-to-long v2, v0

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/measurement/oa;

    .line 40
    .line 41
    int-to-long v4, p1

    .line 42
    const/4 v6, 0x4

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final z(J)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/pa;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const-wide/16 v5, -0x80

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    const/16 v7, 0xa

    .line 18
    .line 19
    if-lt v0, v7, :cond_1

    .line 20
    .line 21
    :goto_0
    and-long v7, p1, v5

    .line 22
    .line 23
    cmp-long v0, v7, v3

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    int-to-long v3, v1

    .line 32
    long-to-int p1, p1

    .line 33
    int-to-byte p1, p1

    .line 34
    invoke-static {v0, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/ld;->u([BJB)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B

    .line 39
    .line 40
    add-int/lit8 v7, v1, 0x1

    .line 41
    .line 42
    int-to-long v8, v1

    .line 43
    long-to-int v1, p1

    .line 44
    or-int/lit16 v1, v1, 0x80

    .line 45
    .line 46
    int-to-byte v1, v1

    .line 47
    invoke-static {v0, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ld;->u([BJB)V

    .line 48
    .line 49
    .line 50
    ushr-long/2addr p1, v2

    .line 51
    move v1, v7

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    and-long v7, p1, v5

    .line 54
    .line 55
    cmp-long v0, v7, v3

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .line 61
    add-int/lit8 v2, v1, 0x1

    .line 62
    .line 63
    long-to-int p1, p1

    .line 64
    int-to-byte p1, p1

    .line 65
    :try_start_1
    aput-byte p1, v0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/measurement/na;->g:I

    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    move-object v8, p1

    .line 72
    move v1, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/na;->e:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    add-int/lit8 v7, v1, 0x1

    .line 77
    .line 78
    long-to-int v8, p1

    .line 79
    or-int/lit16 v8, v8, 0x80

    .line 80
    .line 81
    int-to-byte v8, v8

    .line 82
    :try_start_3
    aput-byte v8, v0, v1
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    .line 84
    ushr-long/2addr p1, v2

    .line 85
    move v1, v7

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception p1

    .line 88
    move-object v8, p1

    .line 89
    move v1, v7

    .line 90
    goto :goto_3

    .line 91
    :catch_2
    move-exception p1

    .line 92
    move-object v8, p1

    .line 93
    :goto_3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/na;->f:I

    .line 94
    .line 95
    new-instance p2, Lcom/google/android/gms/internal/measurement/oa;

    .line 96
    .line 97
    int-to-long v3, v1

    .line 98
    int-to-long v5, p1

    .line 99
    const/4 v7, 0x1

    .line 100
    move-object v2, p2

    .line 101
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/oa;-><init>(JJILjava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p2
.end method
