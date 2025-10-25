.class final Landroidx/datastore/preferences/protobuf/j$d;
.super Landroidx/datastore/preferences/protobuf/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final i:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/j$b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j$d;->i:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "out"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method private Y0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j$d;->i:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 4
    .line 5
    iget v2, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v3, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 12
    .line 13
    return-void
.end method

.method private Z0(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j$d;->Y0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public A0(ILandroidx/datastore/preferences/protobuf/p0;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/j$d;->N0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/j$d;->b1(ILandroidx/datastore/preferences/protobuf/p0;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public B0(ILandroidx/datastore/preferences/protobuf/g;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/j$d;->N0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/j$d;->e0(ILandroidx/datastore/preferences/protobuf/g;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public K0(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$d;->L0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int v2, v1, v0

    .line 12
    .line 13
    iget v3, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/p1;->b(Ljava/lang/String;[BII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/j$d;->a([BII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 32
    .line 33
    sub-int/2addr v3, v0

    .line 34
    if-le v2, v3, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j$d;->Y0()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v2, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/p1$d; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    add-int v1, v2, v0

    .line 52
    .line 53
    :try_start_1
    iput v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 56
    .line 57
    iget v4, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 58
    .line 59
    sub-int/2addr v4, v1

    .line 60
    invoke-static {p1, v3, v1, v4}, Landroidx/datastore/preferences/protobuf/p1;->b(Ljava/lang/String;[BII)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v2, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 65
    .line 66
    sub-int v3, v1, v2

    .line 67
    .line 68
    sub-int/2addr v3, v0

    .line 69
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/j$b;->W0(I)V

    .line 70
    .line 71
    .line 72
    iput v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/p1;->c(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/j$b;->W0(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 83
    .line 84
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 85
    .line 86
    invoke-static {p1, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/p1;->b(Ljava/lang/String;[BII)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 91
    .line 92
    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 93
    .line 94
    add-int/2addr v0, v3

    .line 95
    iput v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/p1$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    new-instance v1, Landroidx/datastore/preferences/protobuf/j$c;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/j$c;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 107
    .line 108
    iget v3, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 109
    .line 110
    sub-int/2addr v3, v2

    .line 111
    sub-int/2addr v1, v3

    .line 112
    iput v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 113
    .line 114
    iput v2, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 115
    .line 116
    throw v0
    :try_end_2
    .catch Landroidx/datastore/preferences/protobuf/p1$d; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :catch_2
    move-exception v0

    .line 118
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j;->W(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/p1$d;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method

.method public M0(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/q1;->c(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public N0(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$b;->W0(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public O0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$b;->W0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public P0(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j$b;->X0(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public Q0(J)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j$b;->X0(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j$d;->Y0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Z(B)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j$d;->Y0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$b;->R0(B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j$d;->a1([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public a0(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    int-to-byte p1, p2

    .line 11
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$b;->R0(B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public a1([BII)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    if-lt v2, p3, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 10
    .line 11
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 15
    .line 16
    add-int/2addr p1, p3

    .line 17
    iput p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 18
    .line 19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 20
    .line 21
    add-int/2addr p1, p3

    .line 22
    iput p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sub-int/2addr v0, v1

    .line 26
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 27
    .line 28
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    add-int/2addr p2, v0

    .line 32
    sub-int/2addr p3, v0

    .line 33
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 36
    .line 37
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 38
    .line 39
    add-int/2addr v1, v0

    .line 40
    iput v1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j$d;->Y0()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->f:I

    .line 46
    .line 47
    if-gt p3, v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j$b;->e:[B

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iput p3, p0, Landroidx/datastore/preferences/protobuf/j$b;->g:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j$d;->i:Ljava/io/OutputStream;

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 64
    .line 65
    add-int/2addr p1, p3

    .line 66
    iput p1, p0, Landroidx/datastore/preferences/protobuf/j$b;->h:I

    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method public b1(ILandroidx/datastore/preferences/protobuf/p0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$d;->z0(Landroidx/datastore/preferences/protobuf/p0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method c1(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/datastore/preferences/protobuf/a;

    .line 3
    .line 4
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/a;->f(Landroidx/datastore/preferences/protobuf/e1;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/k;

    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Landroidx/datastore/preferences/protobuf/e1;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d0([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j$d;->a1([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public e0(ILandroidx/datastore/preferences/protobuf/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$d;->f0(Landroidx/datastore/preferences/protobuf/g;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f0(Landroidx/datastore/preferences/protobuf/g;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/g;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/g;->I(Landroidx/datastore/preferences/protobuf/f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k0(II)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$b;->S0(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public l0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$b;->S0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m0(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j$b;->T0(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public n0(J)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j$b;->T0(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u0(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->Z0(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$b;->V0(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j$b;->U0(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public v0(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/j$d;->Q0(J)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method y0(ILandroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j$d;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j$d;->c1(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public z0(Landroidx/datastore/preferences/protobuf/p0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/p0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j$d;->O0(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/p0;->d(Landroidx/datastore/preferences/protobuf/j;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
